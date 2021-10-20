//
//  Mast.swift
//  ShipLogo
//
//  Created by FanRende on 2021/10/19.
//

import SwiftUI

struct Mast: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.addLines([
                CGPoint(x: 41, y: 55),
                CGPoint(x: 40, y: 60),
                CGPoint(x: 60, y: 60),
                CGPoint(x: 59, y: 55),
            ])
            path.closeSubpath()
            
            path.move(to: CGPoint(x: 55, y: 55))
            path.addQuadCurve(to: CGPoint(x: 53, y: 0), control: CGPoint(x: 54, y: 50))
            path.move(to: CGPoint(x: 45, y: 55))
            path.addQuadCurve(to: CGPoint(x: 47, y: 0), control: CGPoint(x: 46, y: 50))
            
            path.addLines([
                CGPoint(x: 65, y: 0),
                CGPoint(x: 35, y: 0),
                CGPoint(x: 33, y: -7),
                CGPoint(x: 35, y: -14),
                CGPoint(x: 65, y: -14),
                CGPoint(x: 67, y: -7),
            ])
            path.closeSubpath()
            
            for x in 0...2 {
                path.addRect(CGRect(x: 37 + x * 11, y: -9, width: 4, height: 4))
            }
            
            path.move(to: CGPoint(x: 50, y: -14))
            path.addLine(to: CGPoint(x: 50, y: -30))
            
            path.addEllipse(in: CGRect(x: 50 - 1, y: -30 - 2, width: 2, height: 2))
        }
    }
}

struct Mast_Previews: PreviewProvider {
    static var previews: some View {
        Mast().stroke(.red)
    }
}
