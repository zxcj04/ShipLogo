//
//  Ship.swift
//  ShipLogo
//
//  Created by FanRende on 2021/10/19.
//

import SwiftUI

struct Ship: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 17, y: 136))
            path.addQuadCurve(to: CGPoint(x: 342, y: 135), control: CGPoint(x: 200, y: 160))
            path.addLines([
                CGPoint(x: 17, y: 135),
                CGPoint(x: 16, y: 125),
                CGPoint(x: 350, y: 125),
                CGPoint(x: 342, y: 135),
            ])
            
            let cannonTower1 = CannonTower()
                .offset(x: 25, y: 45)
                .path(in: CGRect())
            
            path.addPath(cannonTower1)
            
            let cannonTower2 = CannonTower()
                .offset(x: 150, y: 45)
                .path(in: CGRect())
            
            path.addPath(cannonTower2)
            
            let chimney = Chimney()
                .offset(x: 85, y: 75)
                .path(in: CGRect())
            
            path.addPath(chimney)
            
            let mast = Mast()
                .offset(x: 120, y: 65)
                .path(in: CGRect())
            
            path.addPath(mast)
            
            path.move(to: CGPoint(x: 169, y: 34))
            path.addQuadCurve(to: CGPoint(x: 156, y: 51), control: CGPoint(x: 159, y: 50))
            
            path.move(to: CGPoint(x: 153, y: 58))
            path.addQuadCurve(to: CGPoint(x: 130, y: 125), control: CGPoint(x: 145, y: 100))
            
            path.move(to: CGPoint(x: 171, y: 34))
            path.addQuadCurve(to: CGPoint(x: 347, y: 125), control: CGPoint(x: 220,y: 85))
        }
    }
}

struct Ship_Previews: PreviewProvider {
    static var previews: some View {
        Ship().stroke(.red)
    }
}
