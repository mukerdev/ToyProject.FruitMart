//
//  Home.swift
//  FruitMart
//
//  Created by Giftbot on 2020/03/02.
//  Copyright © 2020 Giftbot. All rights reserved.
//

import SwiftUI

struct Home: View {
  var body: some View {
      HStack{
          // 상품이미지
          Image("apple")
                .resizable()
                .scaledToFill()
                .frame(width: 140)
                .clipped()
          
          VStack(alignment: .leading) {
              // 상품명
              Text("백설공주 사과")
                  .font(.headline)
                  .fontWeight(.medium)
                  .padding(.bottom, 6)
              // 상품 설명
              Text("달콤한 맛이 좋은 과일의 여왕 사과. 독은 없고 꿀만 가득해요!")
                  .font(.footnote)
                  .foregroundColor(.secondary)
              Spacer()
              
              HStack{
                  // 가격
                  Text("2100").font(.headline) + Text(" 원").font(.footnote)
                  Spacer()
                  // 버튼1
                  Image(systemName: "heart")
                      .imageScale(.large)
                      .foregroundColor(Color("peach"))
                      .frame(width: 32, height: 32)
                  // 버튼2
                  Image(systemName: "cart")
                      .foregroundColor(Color("peach"))
                      .frame(width: 32, height: 32)
                  EmptyView()
              }
          }
          .padding([.leading, .bottom], 12) // == .padding(.vertical)
          .padding([.top, .trailing]) // == .padding(.horizontal)
      }
      .frame(height: 150)
      .background(Color.primary.colorInvert())
      // primary는 iOS13에서 추가된 다크 모드를 위해 나온 시맨틱 컬러 중 하나임.
      // 라이트 모드에서는 검은색, 다크 모드에서는 흰색으로 변하기 때문에 색을 반대로 반전 시켜 라이트 모드에서는 흰색, 다크모드에서는 검은색이 사용됨.
      // 색 반전을 위해 primary.colorInvert()를 사용.
      // colorInvert 수식어는 반환 타입이 Color가 아닌 some View타입 이라 background 수식어처럼 View를 인수로 전달하는 경우는 사용 가능하지만, foregrounddColor 수식어처럼 Color 타입이 필요한 경우는 다른 방법을 활용해야 함.
      .cornerRadius(6)// View의 모서리를 둥글게 하는 기능
      .shadow(color: Color.primary.opacity(0.33), radius: 2, x: 0, y: 0)
      // shadow는 뷰에 그림자 효과를 주기 위한 수식어.
      // 뷰의 가장자리에만 그림자 효과를 넣으려면
      // 1. 뷰의 배경색을 불투명한 색으로 지정해야함. 위 background 수식어를 이용해 해결했음
      // 2. 이미 작성한 수식어들의 효과를 먼저 방영시켜야 함. 위 clipped 수식어 역할음 포함하는 cornerRadius 수식어를 사용하여 적용해 주었음.
      // 여기에는 없지만 이전까지의 효과를 합성하여 변환해 주는 compositingGroup 수식어를 활용하는 것도 가능.
      .padding(.vertical, 8)
  }
}

struct Home_Previews: PreviewProvider {
  static var previews: some View {
    Home()
  }
}
