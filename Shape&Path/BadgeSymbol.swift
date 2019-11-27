//
//  BadgeSymbol.swift
//  Landmarks
//
//  Created by 李清发 on 2019/11/26.
//  Copyright © 2019 iTaojin. All rights reserved.
//

import SwiftUI

struct BadgeSymbol: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = min(geometry.size.width, geometry.size.height)
                let spacing = width * 0.3
                let height = width * 0.6
                let middle = width / 2.00
                let topWidth = 0.233 * width
                let topHeight = 0.488 * height
                path.addLines([
                    CGPoint(x: middle, y: spacing),
                    CGPoint(x: middle - topWidth, y: topHeight + spacing),
                    CGPoint(x: middle, y: topHeight / 2 + spacing),
                    CGPoint(x: middle + topWidth, y: topHeight + spacing),
                    CGPoint(x: middle, y: spacing)
                ])
                
                path.move(to: CGPoint(x: middle, y: topHeight / 2 + spacing * 1.2))
                path.addLines([
                    CGPoint(x: middle - topWidth, y: topHeight + spacing * 1.2),
                    CGPoint(x: spacing * 0.2, y: height + spacing),
                    CGPoint(x: width - spacing * 0.2, y: height + spacing),
                    CGPoint(x: middle + topWidth, y: topHeight + spacing * 1.2),
                    CGPoint(x: middle, y: topHeight / 2 + spacing * 1.2)
                ])
            }
            .fill(Self.symbolColor)
        }
    }
    static let symbolColor = Color(red: 79.0 / 255,
                                   green: 79.0 / 255,
                                   blue: 191.0 / 255)
}

struct BadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        BadgeSymbol()
    }
}
