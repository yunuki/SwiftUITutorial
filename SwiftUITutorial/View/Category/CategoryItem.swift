//
//  CategoryItem.swift
//  SwiftUITutorial
//
//  Created by 윤재욱 on 2021/12/18.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static let landmark = ModelData().landmarks[0]
    static var previews: some View {
        CategoryItem(landmark: landmark)
    }
}
