//
//  CircleImage.swift
//  Landmarks
//
//  Created by 李清发 on 2019/11/15.
//  Copyright © 2019 iTaojin. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image:Image
    var body: some View {
        image.clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: landmarkData[0].image)
    }
}
