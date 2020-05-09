//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Zeck on 09/05/20.
//  Copyright © 2020 Zeck. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Rectangle()
                    Text("Match this color")
                }

                VStack {
                    Rectangle()
                    HStack {
                      Text("R: xxx")
                      Text("G: xxx")
                      Text("B: xxx")
                    }
                }
            }
            
            Text("Hit me button")
            
            VStack {
                Text("Red slider")
                Text("Green slider")
                Text("Blue slider")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
