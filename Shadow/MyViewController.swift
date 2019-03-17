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
  
  let dataArr:[String] = ["B C Home","HoUYm grC","HUIO FrtBC","me HYTABC","F HomOIeBC","JHY HoIukaaBC","Home BPLC","Home ABLOIC","Homokije ABC","HJHUikume ABcP"]
  let ImageArr = [ UIImage(named: "download.jpeg"),UIImage(named: "download1.jpeg"),UIImage(named: "download2.jpeg"),UIImage(named: "download.jpeg"),UIImage(named: "download1.jpeg"),UIImage(named: "download2.jpeg"),UIImage(named: "download1.jpeg"),UIImage(named: "download.jpeg"),UIImage(named: "download2.jpeg"),UIImage(named: "download1.jpeg")]
    override func viewDidLoad() {
        super.viewDidLoad()
      myCV.delegate = self
      myCV.dataSource = self
      print("ok ......pppsdcksdc sdlklsdk sdlklksdf wekoiwri roitoritioritoirotipp")
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
    return dataArr.count
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
    cell?.layer.shadowColor = UIColor.darkText.cgColor
    cell?.layer.shadowPath = UIBezierPath(roundedRect: (cell?.bounds)!, cornerRadius: (cell?.contentView.layer.cornerRadius)!).cgPath
    cell?.layer.masksToBounds = true
    cell?.imageLbl.image = ImageArr[indexPath.row]
    cell?.titleLbl.text = dataArr[indexPath.row]
    cell?.descriptionLbl.text = "I was just wondering when you programmatically  set up you view are the constraints automatically asskfkgjgj erkjjtkjkrt lektkektktigned for that device and others that it would run on? or just for that device. Since there is no storyboard what would be the default device"
    return cell!
  }
  
}
