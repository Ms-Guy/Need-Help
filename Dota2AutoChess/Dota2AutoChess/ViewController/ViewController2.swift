//
//  ViewController2.swift
//  Dota2AutoChess
//
//  Created by Kien Master on 1/6/20.
//  Copyright © 2020 Trung Kien. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
           backgroundImage.image = UIImage(named: "wallpaper4.jpg")
            backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
           self.view.insertSubview(backgroundImage, at: 0)
    }
 

}
