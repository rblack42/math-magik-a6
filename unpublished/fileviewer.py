from PySide6.QtWidgets import QApplication, QTreeView, QListView, QTextEdit
from PySide6.QtWidgets import QFileSystemModel, QSplitter
from PySide6.QtCore import QDir

if __name__ == "__main__":
    app = QApplication([])
    splitter = QSplitter()
    listview = QListView()
    textview = QTextEdit()

    model = QFileSystemModel()
    model.setRootPath(QDir.currentPath())

    tree = QTreeView()
    tree.setModel(model)
    tree.setRootIndex(model.index(QDir.currentPath()))

    splitter.addWidget(listview)
    splitter.addWidget(tree)
    splitter.addWidget(textview)
    splitter.setWindowTitle("Two views onto same directory")
    splitter.show()

    app.exec()



