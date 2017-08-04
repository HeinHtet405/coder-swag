//
//  ProductVC.swift
//  coder-swag
//
//  Created by Hein Htet on 8/4/17.
//  Copyright © 2017 Hein Htet. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var colllectionView: UICollectionView!
    
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

        colllectionView.delegate = self
        colllectionView.dataSource = self
    }

    func initProducts(category: Category) {
        products = DataService.instance.getProduct(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = colllectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }else {
            return ProductCell()
        }
    }
    
    
    
    
    
    
}
