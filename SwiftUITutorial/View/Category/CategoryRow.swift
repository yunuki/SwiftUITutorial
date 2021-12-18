//
//  CategoryRow.swift
//  SwiftUITutorial
//
//  Created by 윤재욱 on 2021/12/18.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) {landmark in
                        NavigationLink(
                            destination: LandmarkDetail(landmark: landmark),
                            label: {
                                CategoryItem(landmark: landmark)
                            })
                    }
                }
                .padding(.bottom, 5)
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static let landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group {
            CategoryRow(categoryName: landmarks[0].category.rawValue, items: Array(landmarks))
        }
    }
}
