//
//  ViewController.swift
//  YangBlurView
//
//  Created by xilankong on 08/25/2018.
//  Copyright (c) 2018 xilankong. All rights reserved.
//

import UIKit
import YangBlurView

class ViewController: UIViewController {

    let blurView = DynamicBlurView()
    let progressBar = UISlider(frame: CGRect(x: 0, y: 0, width: 320, height: 100))
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(progressBar)
        progressBar.addTarget(self, action: #selector(progressValueChange), for: .valueChanged)
        let imageView = UIImageView(frame: CGRect(x: 0, y: 200, width: 320, height: 150))
        imageView.image = #imageLiteral(resourceName: "bg_1")
        self.view.addSubview(imageView)
        self.view.backgroundColor = UIColor.black
        blurView.frame = CGRect(x: 0, y: 200, width: 320, height: 150)

        view.addSubview(blurView)
//        blurView.blurRadius = 20
//        blurView.blurRatio = 0.5
    }
    
    @objc func progressValueChange() {
        blurView.blurRadius = CGFloat(progressBar.value)
    }


}

