class TreeNode:
    def __init__(self, data) -> None:
        self.data = data
        self.left = None
        self.right = None

    def insert(self, data):
        if self.data < data:
            if self.right:
                return self.right.insert(data)
            self.right = TreeNode(data)
            return
        if self.left:
            return self.left.insert(data)
        self.left = TreeNode(data)
    
    def print(self):
        print(self.data)
        if self.left:
            self.left.print()
        if self.right:
            self.right.print()

    

root = TreeNode(7)
root.insert(5)
root.insert(9)
root.print()
