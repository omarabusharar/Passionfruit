//
//  RiddleView.swift
//  Passionfruit
//
//  Created by Omar  on 2020-06-12.
//  Copyright © 2020 Omar . All rights reserved.
//

import SwiftUI




struct RiddleView: View {
let riddles = ["What question can you never answer yes to?","What has to be broken before you can use it?","What goes up but never comes down?","A man who was outside in the rain without an umbrella or hat didn’t get a single hair on his head wet. Why?","Mark’s parents have three sons: Snap, Crackle, and what’s the name of the third son?","What has a head and a tail but no body?"]
    let answers = ["Are you asleep yet?","An egg","Your age","He was bald","Mark","A coin"]
@State var needAnswer = false
@State var needRiddle = false
@State var selected = 0
    var body: some View {
        
        VStack {
        Text("Random Riddles")
            .font(.system(size: 80))
            .bold()
            .frame(alignment: .top)
    Spacer()
        .frame(height: 100)
    if needRiddle == true {
        Text("\(riddles[selected])")
            .font(.system(size: 31))
            }
    Spacer()
        .frame(height: 100)
    if needAnswer == true {
        Text("Answer: \(answers[selected])")
            }
        Spacer()
            .frame(height:40)
            HStack {
                Button(needRiddle ? "Another One!" : "Give me a Riddle!",action: {
                needRiddle = true
                    selected = Int.random(in: 0...5)
            })
                if needRiddle == true {
            Button(action: {
                if self.needAnswer == false {
                self.needAnswer = true
                }
                else if self.needAnswer == true {
                    self.needAnswer = false
                }
            }) {
                if self.needAnswer == false {
                Text("Show Answer")
                } else if self.needAnswer == true {
                    Text("Hide Answer")
                }
                    
            }
                }
        }
    }
    .frame(minWidth: 700, maxWidth: .infinity, minHeight: 600, maxHeight: .infinity)
    }
    }

struct RiddleView_Previews: PreviewProvider {
    static var previews: some View {
        RiddleView()
    }
}
