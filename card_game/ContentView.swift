//
//  ContentView.swift
//  card_game
//
//  Created by Jerred Caldwell on 8/22/22.
//

import SwiftUI

struct ContentView: View {
    @State private var randNum1 = 2
    @State private var randNum2 = 2
    
    @State private var score1 = 0
    @State private var score2 = 0
    var body: some View {
        
        
        
        ZStack{
            Image("Background")
        
            VStack {
                
                Image("logo").padding(.top, 130)
                Spacer()
                HStack {
                    Image("card" + String(randNum1))
                    Image("card" + String(randNum2))
                }
                Spacer()
                Button(action: {
                    
                    self.randNum1 = Int.random(in: 2...14)
                    self.randNum2 = Int.random(in: 2...14)
                    
                    // Update scores
                    if self.randNum1 > self.randNum2 {
                        self.score1 += 1
                    }
                    else if self.randNum2 > self.randNum1 {
                        self.score2 += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                        .renderingMode(.original)
                })
                    .padding(.bottom, 40)
                
                
                
                HStack{
                    VStack{
                        Text("Player")
                            .bold()
                        Text(String(score1))
                    }
                    .padding(.leading, 40)
                    .foregroundColor(.white)
                    
                    Spacer()
                    VStack{
                        Text("CPU")
                            .bold()
                        Text(String(score2))
                    }
                    .padding(.trailing, 40)
                    .foregroundColor(.white)
                    
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
