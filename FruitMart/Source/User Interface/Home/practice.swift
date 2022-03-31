//
//  practice.swift
//  FruitMart
//
//  Created by Muker on 2022/03/31.
//  Copyright © 2022 Giftbot. All rights reserved.
//

import SwiftUI

struct practice: View {
    var body: some View {
        GeometryReader { _ in
            Circle().fill(Color.purple)
            frame(width: 200, height: 200)
                .overlay(Text("Center").font(.title))
        }.background(Color.gray)
    }
}

struct practice_Previews: PreviewProvider {
    static var previews: some View {
        practice()
    }
}
