//
//  Product.swift
//  coder-swag
//
//  Created by Hein Htet on 8/4/17.
//  Copyright © 2017 Hein Htet. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title:String!
    private(set) public var price:String!
    private(set) public var imageName: String!
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
