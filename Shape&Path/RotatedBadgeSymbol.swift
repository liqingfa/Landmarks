//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by 李清发 on 2019/11/26.
//  Copyright © 2019 iTaojin. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    var body: some View {
        BadgeSymbol().rotationEffect(angle)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
