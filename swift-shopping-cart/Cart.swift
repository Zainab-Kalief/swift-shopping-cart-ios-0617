//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items: [Item] = []
    
    func totalPriceInCents() -> Int {
        var total = 0
        
        for item in items {
            total += item.priceInCents
        }
        return total
    }
    
    func remove(item: Item) {
        for (index, value) in items.enumerated() {
            if value == item {
                items.remove(at: index)
            }
        }
    }
    
    func add(item: Item) {
        self.items.append(item)
    }
    
    func items(withName name: String) -> [Item] {
        var newList: [Item] = []
        
        for item in self.items {
            if item.name == name {
                newList.append(item)
            }
        }
        return newList
    }
    
    func items(withMinPrice price: Int) -> [Item] {
        var newList: [Item] = []
        
        for item in items {
            if item.priceInCents >= price {
                newList.append(item)
            }
        }
        return newList
    }
    
    func items(withMaxPrice price: Int) -> [Item] {
        var newList: [Item] = []
        
        for item in items {
            if item.priceInCents <= price {
                newList.append(item)
            }
        }
        return newList
    }
    
}
