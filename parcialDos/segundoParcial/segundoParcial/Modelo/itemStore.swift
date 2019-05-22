//
//  Pregunta.swift
//  segundoParcial
//
//  Created by Armando Isais Olguin Cabrera on 4/29/19.
//  Copyright © 2019 Armando Isais Olguin Cabrera. All rights reserved.
//

import UIKit

struct Item{
    
    var uid:String
    var title:String
    var price:Double
    var image:UIImage
}

class ItemStore{
    
    var items:[Item]=[
        Item(uid: "Ipad pro", title: "ipad Pro", price: 599, image:UIImage(named: "img_ipad")!),
        Item(uid: "Apple Watch", title:"Apple Watch", price:299, image: UIImage(named: "img_watch")!),
        Item(uid: "Apple Tv", title: "Apple TV", price: 199, image: UIImage(named: "img_tv")!)
    ]




func getPriceFor(itemWith uid:String)->Double?{
    for item in self.items {
        if item.uid == uid{
            
            return item.price
            
        }
    }
    
    return nil
    
}
}
