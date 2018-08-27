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

        let label = UILabel(frame: CGRect(x: 0, y: 200, width: 320, height: 150))
        label.text = "测试文字"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 35)
        self.view.addSubview(label)
        self.view.backgroundColor = UIColor.black
        blurView.frame = CGRect(x: 0, y: 200, width: 320, height: 150)
        blurView.trackingMode = .common
        view.addSubview(blurView)
//        blurView.blurRadius = 20
//        blurView.blurRatio = 0.5
    }
    
    @objc func progressValueChange() {
        blurView.blurRadius = CGFloat(progressBar.value) * 10.0
    }


}

