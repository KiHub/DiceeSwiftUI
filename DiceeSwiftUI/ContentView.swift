//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by  Mr.Ki on 28.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
          
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: 4)
                        .padding()
                    DiceView(n: 4)
                        .padding()
                }
                .padding()
                Spacer()
                Button(action: {}) {
                    Text("Roll")
                        .font(.system(size: 44))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                .cornerRadius(20)
               // .shadow(radius: 7)
                .shadow(color: .green, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 3, y: 3)
                
            }
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    
    let n: Int
    
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}
