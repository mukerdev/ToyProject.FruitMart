//
//  Store.swift
//  FruitMart
//
//  Created by Muker on 2022/04/01.
//  Copyright © 2022 Giftbot. All rights reserved.
//

import Foundation

final class Store {
    var products: [Product]
    
    init(filename: String = "ProductData.json") {
        self.products = Bundle.main.decode(filename: filename, as: [Product].self)
    }
}
//Store 인스턴스가 생성될 때 파일 이름을 다른 것으로 지정하지 않는다면, BundleExtension 파일에서 작성한 기능을 이용해서 ProductData.json 파일에 있는 데이터를 복호화하여 products 프로퍼티에 저장할 것입니다.
