//
//  ContentView.swift
//  CounterApp
//
//  Created by Mateus Castro on 21/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    
    var body: some View {
        VStack {
            Text("Contador:\(count)").font(.largeTitle).padding()
            Button(action: {
                count += 1
            }) {
                Text("Incrementar").font(.title).padding().background(Color.blue).foregroundColor(.white).cornerRadius(10)
            }
            Button(action:{
                count -= 1
            }){
                Text("Decrementar")
                    .font(.title)
                    .padding()
                    .background(count == 0 ? Color.gray : Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }.disabled(count == 0)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
