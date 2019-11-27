//
//  Badge.swift
//  Landmarks
//
//  Created by 李清发 on 2019/11/26.
//  Copyright © 2019 iTaojin. All rights reserved.
//

import SwiftUI

struct Badge: View {
    
    static let rotationCount = 8
    
    var badgeSymbols: some View {
        ForEach(0..<Badge.rotationCount) { i in
            RotatedBadgeSymbol(angle:
                .init(degrees: Double(i) / Double(Badge.rotationCount)) * 360.0
            ).opacity(0.5)
        }
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                self.badgeSymbols
                    .scaleEffect(0.5, anchor: .top)
                .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }.navigationBarTitle(Text("Badge"), displayMode: .inline)
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
