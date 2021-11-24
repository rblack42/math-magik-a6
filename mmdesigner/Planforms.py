class Planform(object):

	def __init__(self):
        self.assemblies = {
            "wing",
            "stab",
            "fuselage",
            "prop"
        ]

		self.dihedral_types = [
			"flat",
			"simple-dihedral",
			"flat_polyhedral",
			"general_polyhedral",
		]
		self.planforms = [
			"rectangular",
			"straight_taper_le",
			"straight_taper_te",
			"double_straight_taper",
			"rectangular_taper_le"
			"rectangular_taper_te",
			"rectangular_double_taper",
			"rectangular_round_le",
			"rectangular_round_te",
			"rectangular_round_tip",
		]

	def leading_edge(self, y):
		"""return x coordinate got given y"""

	def trailing_edge(self, y):
		"""return x coordinate for given y"""

