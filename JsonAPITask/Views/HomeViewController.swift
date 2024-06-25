//
//  ViewController.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/18/24.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBg()
        
        func setUpBg(){
            let backgroundImageView = UIImageView(frame: self.view.bounds)
            backgroundImageView.image = UIImage(named: "Image.png")
            backgroundImageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

            self.view.addSubview(backgroundImageView)
            self.view.sendSubviewToBack(backgroundImageView)
        }
    }
}



