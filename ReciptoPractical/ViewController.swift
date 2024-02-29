//
//  ViewController.swift
//  ReciptoPractical
//
//  Created by Dhanashree🫰🏻 on 29/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImg: UIImageView!
    @IBOutlet weak var itemCollectionView: UICollectionView!
    
    private let itemCollectionViewCellIdentifier : String = "ItemCollectionViewCell"
    
    var arr : [String] = ["bonus","coin","bread","biscuit","shrikhand","ice cream"]
    var arr1 : [String] = ["Welcome Bonus", "Upload Receipt","Britaniya Bread","Hide&seek","Amul Shrikhand","Ice-Cream"]
    var arr3 : [String] = ["RS.250 Welcome Bonus! Get yours now","Share your Receipt and earn cashback","500g","Delicious Bisuit","500g","200"]
    var arr4 : [String] = ["250","2%","10","45","30","5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeCell()
        registerCell()
    }
    func initializeCell(){
        itemCollectionView.dataSource = self
        itemCollectionView.delegate = self
    }
    func registerCell(){
        let uinib = UINib(nibName: itemCollectionViewCellIdentifier, bundle: nil)
        self.itemCollectionView.register(uinib, forCellWithReuseIdentifier: itemCollectionViewCellIdentifier)
    }

    @IBAction func BtnOne(_ sender: Any) {
    }
    
    @IBAction func BtnTwo(_ sender: Any) {
    }
}
extension ViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let itemCollectionViewCell = self.itemCollectionView.dequeueReusableCell(withReuseIdentifier: itemCollectionViewCellIdentifier, for: indexPath) as! ItemCollectionViewCell
        itemCollectionViewCell.itemImage.image = UIImage(named: arr[indexPath.row])
        itemCollectionViewCell.itemName.text = arr1[indexPath.row]
        itemCollectionViewCell.itemDesc.text = arr3[indexPath.row]
        itemCollectionViewCell.itemPrice.text = arr4[indexPath.row]
        itemCollectionViewCell.layer.borderWidth = 1.0
        itemCollectionViewCell.layer.cornerRadius = 3.0
        return itemCollectionViewCell
    }
}
extension ViewController : UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 185.0, height: 159.0)
    }
    
}

