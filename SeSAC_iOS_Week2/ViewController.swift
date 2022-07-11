//
//  ViewController.swift
//  SeSAC_iOS_Week2
//
//  Created by 한상민 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orangeView.layer.cornerRadius = orangeView.frame.width/2
        greenView.layer.cornerRadius = 10
        greenView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
//        orangeView.clipsToBounds = false // shadow
        // Do any additional setup after loading the view.
    }


}

