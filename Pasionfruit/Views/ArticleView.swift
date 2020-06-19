//
//  PresentationView.swift
//  Passionfruit
//
//  Created by Omar  on 2020-05-28.
//  Copyright © 2020 Omar . All rights reserved.
//

import SwiftUI

struct PresentationView: View {
    var body: some View {
        ScrollView {
            Group {
        Spacer()
        .frame(height: 23)
        Text("Programming / App Development")
        .bold()
            .font(.headline)
        Spacer()
            .frame(height: 10)
            HStack {
        Spacer()
                   .frame(width: 30)
        Image("ProgramScreen")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, alignment: .center)
        Spacer()
            .frame(width: 30)
            }
            
        Text("What Is Programming?")
            .font(.subheadline)
            .bold()
            
        Spacer()
            .frame(height: 10)
        
                HStack {
                    
                    Spacer()
                    .frame(width: 40)
        Text("              Programming is how we communicate with computers and tell them what to do. there are mutiple layers of programming that helps us throughout our lives which mainly includes OS-level and Application-level. In this presentation I will be focusing on Application Development. However, some things I mention during this article could also apply to Operating Systems. Apps are becoming more important especially in this time where devices and their apps are used in our lives more than ever.")
            .font(.footnote)
            .frame(width:500, alignment: .center)
            Spacer()
                .frame(width: 40)
                }
            }
            Group {
        Spacer()
        .frame(height: 30)
        Image("programmer")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 400, alignment: .center)
        Spacer()
        .frame(height: 30)
        Text("What is App Development?")
            .font(.subheadline)
            .bold()
            Spacer()
            .frame(height: 10)
            HStack {
          Spacer()
            .frame(width:30)
        Text("              App Development is the process of how lots of apps we now take for granted are made. There are lots of Programming Languages used to make apps. You may ask, what are Programming Languages? Programming Languages is how we translate what we want the device to do into something it can understand. Popular Languages for development include C, Python, Java, and the one I am using is, Swift.  Which one you use largely depends on the platforms you would like to support.")
                 .font(.footnote)
                .frame(width:500, alignment: .center)
    Spacer()
    .frame(width:30)
            }
            }
    Spacer()
        .frame(height: 20)
            Group {
        HStack {
    Image("swift")
        .resizable()
         .aspectRatio(contentMode: .fit)
             .frame(width: 100, height: 100)
    Image("java")
            .resizable()
             .aspectRatio(contentMode: .fit)
                 .frame(width: 100, height: 100)
    Image("c")
    .resizable()
    .aspectRatio(contentMode: .fit)
        .frame(width: 100, height: 100)
            }
    Spacer()
        .frame(height: 30)
    Image("learning")
        .resizable()
        .aspectRatio(contentMode: .fit)
            .frame(width: 400, height: 300)
                
        Spacer()
        .frame(height: 30)
                
    Text("How can I learn App Development & Programming?")
                .font(.subheadline)
                           .bold()
                
            Spacer()
            .frame(height: 10)
    Text("                 In this day and age, you can learn lots of skills just by going on the internet and finding activites and instructions. I learned programming and app development primarily by a challenge called the 100 Days of SwiftUI. The easiest of the four programing languages I listed above are Swift and Python. The middle of the bunch is C and its derivites. But the hardest of the bunch I would consider to be Java.")
            .font(.footnote)
        .frame(width:500,  alignment: .center)
            }
        
    Spacer()
    .frame(height: 10)
            
            Group {
    Image("appmania")
            .resizable()
            .aspectRatio(contentMode: .fit)
                .frame(width: 550, height: 300)

   Text("Why did I choose to bulid my App, Passionfruit?")
    .bold()
    .font(.subheadline)
                
    Spacer()
        .frame(height: 10)
                
    Text("                Ever since I could remember, I was always fascinated with technology even if its old or new, large or small, I always wanted to know how they work. Anyways, every year since I was ten years old, I wanted to learn how to program. But after 4 weeks, I would usually give up. I am thankful for the passion project assignment. It helped me be determined and focused on learning app development and as a result programming. In the small time we were given I had learned 14 days worth of lessons in 7 days and then spent the remainder of the time developing this app.")
        .font(.footnote)
        .frame(width: 500)
    Image("conclusion")
     Spacer()
        .frame(height: 30)
    Text("My Conclusion")
        .bold()
        .font(.subheadline)
    Spacer()
        .frame(height:20)
            }
            Group {
    Text("              In Conclusion, I find that programming just like any other skill, is easy to master as long as you put in the time in effort. Programming powers our everyday lifes and devices will slowly overtake old manual methods like how cars will become self driving. I would like to thank you for taking a moment out of your day to read this article.")
            .font(.footnote)
            .frame(width: 500)
        Spacer()
            .frame(height:20)
            }
        }
    }
}
struct PresentationView_Previews: PreviewProvider {
    static var previews: some View {
        PresentationView()
    }
}
