//
//  ScriptView.swift
//  Passionfruit
//
//  Created by Omar  on 2020-06-12.
//  Copyright © 2020 Omar . All rights reserved.
//

import SwiftUI

struct ScriptView: View {
    var body: some View {
        ScrollView {
        Text("""
    Programming is how we communicate with computers and tell them what to do. there are mutiple layers of programming that helps us throughout our lives which mainly includes OS-level and Application-level. In this presentation I will be focusing on Application Development. However, some things I mention during this article could also apply to Operating Systems. Apps are becoming more important especially in this time where devices and their apps are used in our lives more than ever.

        App Development is the process of how lots of apps we now take for granted are made. There are lots of Programming Languages used to make apps. You may ask, what are Programming Languages? Programming Languages is how we translate what we want the device to do into something it can understand. Popular Languages for development include C, Python, Java, and the one I am using is, Swift.  Which one you use largely depends on the platforms you would like to support.

        In this day and age, you can learn lots of skills just by going on the internet and finding activities and instructions. I learned programming and app development primarily by a challenge called the 100 Days of SwiftUI. The easiest of the four programming languages I listed above are Swift and Python. The middle of the bunch is C and its derivatives. But the most difficult of them I would consider to be Java.

        Ever since I could remember, I was always fascinated with technology it didn’t matter  if it was old or new, large or small, I always wanted to know how they work. Anyways, every year since I was around ten years old, I wanted to learn how to program. But after 3 weeks, I would usually give up and move on. I am thankful for the passion project assignment. It helped me be determined and focused on learning app development and as a result programming. In the small time we were given I had learned 14 days worth of lessons in 7 days and then spent the remainder of it  developing this app.

        In Conclusion, I find that programming just like any other skill, is easy to master as long as you put in the time in effort. Programming powers our everyday lifes and devices will slowly overtake old manual methods like how cars will become self driving. I would like to thank you for taking a moment out of your day to listen to this presentation.
""")
        }
    }
    
}

struct ScriptView_Previews: PreviewProvider {
    static var previews: some View {
        ScriptView()
    }
}
