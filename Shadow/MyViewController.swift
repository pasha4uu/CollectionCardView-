//
//  MyViewController.swift
//  Shadow
//
//  Created by PASHA on 07/02/19.
//  Copyright © 2019 Reatchall. All rights reserved.
//

import UIKit

class MyViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
  @IBOutlet weak var myCV: UICollectionView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      myCV.delegate = self
      myCV.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? MYCollectionViewCell
    cell?.contentView.layer.cornerRadius = 4.0
    cell?.contentView.layer.borderWidth = 1.0
    cell?.contentView.layer.backgroundColor = UIColor.clear.cgColor
    cell?.contentView.layer.masksToBounds = false
    cell?.layer.shadowOffset = CGSize(width: 0, height: 1.0)
    cell?.layer.shadowRadius = 4.0
    cell?.layer.shadowOpacity = 1.0
    cell?.layer.shadowColor = UIColor.darkGray.cgColor
    cell?.layer.shadowPath = UIBezierPath(roundedRect: (cell?.bounds)!, cornerRadius: (cell?.contentView.layer.cornerRadius)!).cgPath
    cell?.layer.masksToBounds = false
    cell?.imageLbl.image = UIImage(named: "download.jpeg")
    cell?.titleLbl.text = " my details \(indexPath.row)"
    cell?.descriptionLbl.text = "my details my details my details my details"
    return cell!
  }
  
}
