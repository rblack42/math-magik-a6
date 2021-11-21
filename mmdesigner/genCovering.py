# -*- coding: utf8 -*-
"""
    genCovering
    ~~~~~~~~~~~

    Generate covering surface for models
"""
# system library imports
from math import sqrt, sin, cos, asin, atan2
import sys
from ArcAirfoil import ArcAirfoil

class Covering(object):

    def __init__(self, span, chord, radius, nx, ny, height_function):
        self.span = span
        self.chord = chord
        self.radius = radius
        self.nx = nx
        self.ny = ny
        self.callback = height_function


    def grid_builder(self):
        dx = 1.0 / self.nx
        dy = 1.0 / self.ny
        points = []
        # loop over cord-wise points (x)
        for i in range(self.nx + 1):
            x = i * dx
            xpoints = []
            # loop over span-wise points (y)
            for j in  range(self.ny + 1):
                y = j * dy
                px, py, ph = self.callback(self.span, self.chord, self.radius, x, y)
                xpoints.append([px,py,ph])
            points.append(xpoints)
        self.points = points

    def grid_writer(self):
        with open(self.fname,"w") as fout:
            fout.write("g_pts = [\n")
            p = self.points
            ny = len(p)

            # loop over grid rows
            for i in range(ny):
                fout.write("    [\n")
                xp = p[i]
                nx = len(xp)

                # loop over grid columns
                fout.write("        ")
                for j in range(nx):
                    pt = xp[j]
                    g_pt = "[{0:.2f}, {1:.2f}, {2:.2f}]".format(pt[0], pt[1], pt[2])
                    fout.write(g_pt)
                    if j < nx-1: fout.write(",")
                fout.write("\n    ]")
                if i<ny-1: fout.write(",")
                fout.write("\n")
            fout.write("];\n")


    def run(self, fname):
        self.fname = fname
        self.grid_builder()
        self.grid_writer()



def flat(span, chord, radius, x, y):
    """
        return x,y,height for tip outline
        x and y are percentages
    """
    py = y * span
    y_tip = span - radius
    c_tip = chord - radius
    if py <= y_tip:
        x0 = 0
        ych = chord
    else:
        sf = (py-y_tip)/radius
        alpha = asin(sf)
        x0 =  radius*(1 - cos(alpha))
        ych = chord - x0
    px = x0 + x * ych
    height = 0
    return px, py, height;


def circular_arc_airfoil(span, chord, radius, x, y):
    """
        return x,y,height for tip outline
        x and y are percentages
        Airfoils is circular arc
    """
    py = y * span
    y_tip = span - radius
    c_tip = chord - radius
    if py <= y_tip:
        x0 = 0
        ych = chord
    else:
        sf = (py-y_tip)/radius
        alpha = asin(sf)
        x0 =  radius*(1 - cos(alpha))
        ych = chord - x0
    px = x0 + x * ych
    height = 0
    return px, py, height;

def osc_parse(exp):
    nexp = ""
    for c in exp:
        if c in "+-/*":
            nexp += " %s " % c
        else:
            nexp += c
    # convert ints to floats
    parts = nexp.split()
    pexp = ""
    for p in parts:
        if p[0].isdigit() and not "." in p:
            p+= ".0"
        pexp += p
    print(pexp)
    return pexp

def load_data():

    with open("../scad/a6-design-constraints.scad") as fin:
        lines = fin.readlines()
        d = {}
        for l in lines:
            l = l.strip()
            if l == "": continue
            if l.startswith("//"): continue
            if "=" in l:
                n,v = l.split("=")
                rhs = v.strip()
            else:
                rhs += l
            exp = "%s = %s" % (n,rhs)
            if exp.endswith(";"):
                exp = exp[:-1]
            exp = osc_parse(exp)
            print(exp)
            exec(exp)
            print(eval(n))
            d[n.strip()] = eval(n)
        #sys.exit()
        return d


if __name__ == "__main__":
    d = load_data()
    print(d)

    wing_airfoil = ArcAirfoil(d["wing_chord"], d["wing_rib_camber"], d["spar_size"])
    stab_airfoil = ArcAirfoil(d["stab_chord"], d["stab_rib_camber"], d["spar_size"])

    # generate fin covering
    c = Covering(
        d["fin_span"],
        d["fin_chord"],
        d["fin_tip_radius"],
        10,10, flat)
    c.run("../scad/fuselage/fin/covering/cover_points.scad")

    # wing center section covering
    c = Covering(
        d["wing_center_span"],
        d["wing_chord"],
        0,
        10,10, circular_arc_airfoil)
    c.run("../scad/wing/center/covering/cover_points.scad")

    # stab center section covering
    print("span", d["stab_chord"])
    c = Covering(
        d["stab_center_span"],
        d["stab_chord"],
        0,
        10,10, circular_arc_airfoil)
    c.run("../scad/stab/center/covering/cover_points.scad")

    # stab - left tip covering
    c = Covering(
        d["stab_tip_span"],
        d["stab_chord"],
        d["stab_tip_radius"],10,10, flat)
    c.run("../scad/stab/left_tip/covering/cover_points.scad")

    ts = (d["wing_span"] - d["wing_center_span"])/2
    tip_angle = atan2(d["wing_tip_dihedral"],ts)
    tip_span = 3/cos(tip_angle)

    # wing left tip covering
    c = Covering(
        d["wing_tip_span"],
        d["wing_chord"],
        d["wing_tip_radius"],
        10,10, circular_arc_airfoil)
    c.run("../scad/wing/left_tip/covering/cover_points.scad")

