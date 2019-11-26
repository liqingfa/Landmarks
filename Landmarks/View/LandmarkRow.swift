//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 李清发 on 2019/11/21.
//  Copyright © 2019 iTaojin. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landamrk: Landmark
    var body: some View {
        HStack {
            landamrk.image.resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(2)
            Text(landamrk.name)
            Spacer()
            if landamrk.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
          LandmarkRow(landamrk: landmarkData[0])
          LandmarkRow(landamrk: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
