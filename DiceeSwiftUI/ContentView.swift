//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by  Mr.Ki on 28.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
   @State var rightDiceeNumber = 1
    
    
    
    var body: some View {
        
        ZStack {
          
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                
                
            VStack {
                Image("diceeLogo")
                    .shadow(color: .green, radius: 15, x: 3, y: 3)
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                        .padding()
                    DiceView(n: rightDiceeNumber)
                        .padding()
                }
                .padding()
                Spacer()
                Button(action: {
                    
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceeNumber = Int.random(in: 1...6)
                }) {
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
            .shadow(color: .green, radius: 15, x: 3, y: 3)
            
    }
}
