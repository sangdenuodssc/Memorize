//
//  ContentView.swift
//  Memorize
//
//  Created by Qiang Fu on 9/25/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .imageScale(.large)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    //.strokeBorder(style: StrokeStyle(lineWidth: 10, dash: [10,2]))
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
            
        })
    }
}

#Preview {
    ContentView()
}
