//
//  Cannon.swift
//  ShipLogo
//
//  Created by FanRende on 2021/10/19.
//

import SwiftUI

struct Cannon: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.addLines([
                CGPoint(x: 49, y: 60),
                CGPoint(x: 50, y: 50),
                CGPoint(x: 75, y: 50),
                CGPoint(x: 82, y: 60),
            ])
            path.closeSubpath()
            
            path.addLines([
                CGPoint(x: 75, y: 54),
                CGPoint(x: 105, y: 52),
                CGPoint(x: 105, y: 54),
                CGPoint(x: 75, y: 56),
            ])
            path.closeSubpath()
        }
    }
}

struct Cannon_Previews: PreviewProvider {
    static var previews: some View {
        Cannon().stroke(.red)
    }
}
