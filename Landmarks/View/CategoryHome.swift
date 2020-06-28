//
//  CategoryHome.swift
//  Landmarks
//
//  Created by 李清发 on 2020/6/28.
//  Copyright © 2020 iTaojin. All rights reserved.
//

import SwiftUI
struct FeaturedLandmarks:View {
    var items:[Landmark]
    var body: some View {
        items.first!.image.resizable()
    }
}
struct CategoryItem: View {
    var item:Landmark
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            item.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
                
            Text(item.name).font(.caption).baselineOffset(-5).foregroundColor(.primary)
        }.padding(.leading, 15)
    }
}

struct CategoryRow: View {
    var categoryName: String
    var items:[Landmark]
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName).font(.headline).padding(.top,15).padding(.leading, 15)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { (landmark) in
                        NavigationLink(destination: LandmarkDetail(landMark: landmark)) {
                            CategoryItem(item: landmark)
                        }
                    }
                }
            }.frame(height: 185)
        }
    }
}
struct CategoryHome: View {
    @EnvironmentObject var userData: UserData
    
    var categories:[String:[Landmark]] {
        Dictionary(grouping: landmarkData) {
            $0.category.rawValue
        }
    }
    var featured: [Landmark] {
        landmarkData.filter { $0.isFeatured }
    }
    
    var body: some View {
        NavigationView {
            List{
                FeaturedLandmarks(items: featured)
                    .cornerRadius(10)
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                
                ForEach(categories.keys.sorted(), id: \.self) { (key) in
                    CategoryRow(categoryName: key,
                                items: self.categories[key]!)
                }.listRowInsets(EdgeInsets())
            }.navigationBarTitle(Text("Featured"))
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
