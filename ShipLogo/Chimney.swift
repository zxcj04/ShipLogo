//
//  Chimney.swift
//  ShipLogo
//
//  Created by FanRende on 2021/10/19.
//

import SwiftUI

struct Chimney: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.addLines([
                CGPoint(x: 50, y: 50),
                CGPoint(x: 50, y: 10),
                CGPoint(x: 60, y: 10),
                CGPoint(x: 60, y: 50),
            ])
            path.closeSubpath()
            
            path.addPath(Path { path in
                path.addArc(center: CGPoint(x: 51, y: 5), radius: 5, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 230), clockwise: true)
            })
            
            path.addPath(Path { path in
                path.addArc(center: CGPoint(x: 46, y: 5), radius: 5, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 200), clockwise: false)
            })
            
            path.addPath(Path { path in
                path.addArc(center: CGPoint(x: 43, y: -2), radius: 8, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 200), clockwise: true)
            })
            
            path.addPath(Path { path in
                path.addArc(center: CGPoint(x: 33, y: -5), radius: 10, startAngle: Angle(degrees: 75), endAngle: Angle(degrees: 200), clockwise: false)
            })
            
            path.addPath(Path { path in
                path.addArc(center: CGPoint(x: 29, y: -17), radius: 13, startAngle: Angle(degrees: 15), endAngle: Angle(degrees: 200), clockwise: true)
            })
            
            path.addPath(Path { path in
                path.addArc(center: CGPoint(x: 16, y: -17), radius: 8, startAngle: Angle(degrees:30), endAngle: Angle(degrees: 230), clockwise: false)
            })
        }
    }
}

struct Chimney_Previews: PreviewProvider {
    static var previews: some View {
        Chimney().stroke(.red)
    }
}
