//
//  ViewController.swift
//  BinaryTreeNode
//
//  Created by Myron on 2019/8/4.
//  Copyright © 2019 Myron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
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

    }


}

