# BinaryTreeNode
# 二叉树：中序遍历、前序遍历、后序遍历

## 中序遍历
遍历顺序：对当前节点的左子节点进行中序遍历 --> 当前节点 --> 对当前节点的右子节点进行中序遍历，简称左根右。

## 前序遍历
遍历顺序：当前节点 --> 对当前节点的左子节点进行前序遍历 --> 对当前节点的右子节点进行前序遍历，简称根左右。

## 后序遍历
遍历顺序：对当前节点的左子节点进行后序遍历 --> 对当前节点的右子节点进行后序遍历 --> 当前节点，简称左右根。

### 实例
let zero = BinaryTreeNode(0)  
let one = BinaryTreeNode(1)  
let two = BinaryTreeNode(2)  
let three = BinaryTreeNode(3)  
let four = BinaryTreeNode(4)  
let five = BinaryTreeNode(5)  
let six = BinaryTreeNode(6)  

//根节点  
three.leftChild = one  
three.rightChild = five  

one.leftChild = zero  
one.rightChild = two  

five.leftChild = four  
five.rightChild = six  

print("中序遍历")  
three.traverseInOrder { (num) in  
        print("\(num)")  
}  
print("前序遍历")  
three.traversePreOrder { (num) in  
    print("\(num)")  
}  
print("后序遍历")  
three.traversePostOrder { (num) in  
    print("\(num)")  
}  

### 打印
中序遍历  
0  
1  
2  
3  
4  
5  
6  
前序遍历  
3  
1  
0  
2  
5  
4  
6  
后序遍历  
0  
2  
1  
4  
6  
5  
3  

