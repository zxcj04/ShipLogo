//
//  ContentView.swift
//  ShipLogo
//
//  Created by FanRende on 2021/10/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            let ship = Ship()
                .scale(0.75)
            
            ship.stroke(.red)
            
            Path(ellipseIn: CGRect(x: 45, y: 30, width: 270, height: 270))
                .stroke(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
