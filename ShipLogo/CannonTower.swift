//
//  CannonTower.swift
//  ShipLogo
//
//  Created by FanRende on 2021/10/19.
//

import SwiftUI

struct CannonTower: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let cannon1 = Cannon()
                .offset(x: 0, y: 0)
                .path(in: CGRect())
            
            path.addPath(cannon1)
            
            let cannon2 = Cannon()
                .offset(x: 0, y: 10)
                .path(in: CGRect())
            
            path.addPath(cannon2)
            
            let cannon3 = Cannon()
                .offset(x: 0, y: 20)
                .path(in: CGRect())
            
            path.addPath(cannon3)
        }
    }
}

struct CannonTower_Previews: PreviewProvider {
    static var previews: some View {
        CannonTower().stroke(.red)
    }
}
