//
//  ViewController.swift
//  Shadow
//
//  Created by PASHA on 07/02/19.
//  Copyright © 2019 Reatchall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var shadowV: UIView!
  override func viewDidLoad() {
    super.viewDidLoad()
    shadowV.layer.cornerRadius = 10.0
    shadowV.layer.shadowColor = UIColor.darkGray.cgColor
    shadowV.layer.shadowOffset = CGSize(width: 0, height: 2)
    shadowV.layer.shadowRadius = 10.78
    shadowV.layer.shadowOpacity = 0.60
    shadowV.layer.shadowPath = UIBezierPath(rect: shadowV.bounds).cgPath
    shadowV.layer.shouldRasterize = true
    
    // Do any additional setup after loading the view, typically from a nib.
  }


}

