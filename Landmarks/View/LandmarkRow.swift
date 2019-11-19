//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 李清发 on 2019/11/15.
//  Copyright © 2019 iTaojin. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landMark: Landmark
    
    var body: some View {
        HStack {
            Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landMark: landmarkData[0])
    }
}
