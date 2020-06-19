//
//  RiddleView.swift
//  Passionfruit
//
//  Created by Omar  on 2020-06-12.
//  Copyright © 2020 Omar . All rights reserved.
//

import SwiftUI




struct RiddleView: View {

var riddles = [1,2,3,4,5,6]

 @State var answer = ""
 @State var riddler = ""

@State var shownriddle = 0
@State var needAnswer: Bool = false
@State var needRiddle: Bool = false
    func riddlemaker() {
        let riddle = riddles.randomElement()
        if riddle == 1 {
            needAnswer = false
            riddler = "What question can you never answer yes to?"
            answer = "Are you asleep yet?"
shownriddle = 1
        } else if riddle == 2 {
            needAnswer = false
            riddler = "What has to be broken before you can use it?"
            answer = "An egg"
   shownriddle = 1
        } else if riddle == 3 {
            needAnswer = false
            riddler = "What goes up but never comes down?"
            answer = "Your age"
 shownriddle = 1
        } else if riddle == 4 {
            needAnswer = false
            riddler = "A man who was outside in the rain without an umbrella or hat didn’t get a single hair on his head wet. Why?"
            answer = "He was bald"
       shownriddle = 1
        } else if riddle == 4 {
            needAnswer = false
        riddler = "A man who was outside in the rain without an umbrella or hat didn’t get a single hair on his head wet. Why?"
        answer = "He was bald"
    shownriddle = 1
        } else if riddle == 5 {
            needAnswer = false
            riddler = "Mark’s parents have three sons: Snap, Crackle, and what’s the name of the third son?"
            answer = "Mark"
        shownriddle = 1
        } else if riddle == 6 {
            needAnswer = false
            riddler = "What has a head and a tail but no body?"
            answer = "A coin"
   shownriddle = 1
            
        }
    }
    var body: some View {
        
        VStack {
        Text("Random Riddles")
            .font(.system(size: 80))
            .bold()
            .frame(alignment: .top)
    Spacer()
        .frame(height: 100)
    if needRiddle == true {
        Text("\(riddler)")
            .font(.system(size: 31))
            }
    Spacer()
        .frame(height: 100)
    if needAnswer == true {
        Text("Answer: \(answer)")
            }
        Spacer()
            .frame(height:40)
            HStack {
            Button(action: {
                self.riddlemaker()
                self.needRiddle = true
            }) {
                if shownriddle == 0 {
              Text("Give me a Riddle!")
                    .bold()
                } else if shownriddle != 0 {
                    Text("Give me another one!")
                }
                
                }
                if shownriddle == 1 {
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
