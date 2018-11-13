//
//  ViewController.swift
//  UIViewAnimation
//
//  Created by ven.wu
//  Copyright © 2018年 ven1984. All rights reserved.
//

import UIKit
import UIViewAnimation

class ViewController: UIViewController {

    @IBOutlet weak var cubeView: UIView!
    @IBOutlet weak var flipView: UIView!
    @IBOutlet weak var rotateView: UIView!
    @IBOutlet weak var pageCurlView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func cubeButtonClickedHandler(_ sender: Any) {
        cubeView.animationCubeFromTop()
    }
    
    @IBAction func flipButtonClickedHandler(_ sender: Any) {
        flipView.animationFlipFromRight()
    }
    
    @IBAction func rotateButtonClickedHandler(_ sender: Any) {
        rotateView.animationRotateFromBottom()
    }
    
    @IBAction func pageCurlButtonClickedHandler(_ sender: Any) {
        pageCurlView.animationPageCurlFromLeft()
    }
}

