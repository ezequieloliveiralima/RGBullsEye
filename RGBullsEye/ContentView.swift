//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Zeck on 09/05/20.
//  Copyright © 2020 Zeck. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double

    var body: some View {
        VStack {
            HStack {
                VStack {
                    Rectangle().foregroundColor(Color(red: rTarget, green: gTarget, blue: bTarget, opacity: 1.0))
                    Text("Match this color")
                }

                VStack {
                    Rectangle().foregroundColor(Color(red: rGuess, green: gGuess, blue: bGuess, opacity: 1.0))
                    HStack {
                        Text([ "R:", Int(rGuess * 255.0).description ].joined(separator: " "))
                        Text([ "G:", Int(gGuess * 255.0).description ].joined(separator: " "))
                        Text([ "B:", Int(bGuess * 255.0).description ].joined(separator: " "))
                    }
                }
            }
            
            Text("Hit me button")
            
            VStack {
                HStack {
                    Text("0").foregroundColor(Color.red)
                    Slider(value: $rGuess)
                    Text("255").foregroundColor(Color.red)
                }
                Text("Green slider")
                Text("Blue slider")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5)
    }
}
