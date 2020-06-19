//
//  PresentView.swift
//  Passionfruit
//
//  Created by Omar  on 2020-06-09.
//  Copyright © 2020 Omar . All rights reserved.
//

import SwiftUI

struct PresentView: View {
    var body: some View {
        ScrollView {
    HStack {
        ZStack {
        Image("coding")
            .blur(radius: 10)
            .aspectRatio(contentMode: .fill)
            .frame(width: 1440, height: 900)
        Text("Programming and App Development")
            .font(.system(size: 60))
            .bold()
            .shadow(radius: 100)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            .frame(width: 500, height: 200, alignment: .top)
        }
      
        ZStack {
        Image("Programming")
            .blur(radius: 10)
            .aspectRatio(contentMode: .fill)
            .frame(width: 1440, height: 900)
            VStack {
        Text("What is Programming")
            .font(.system(size: 60))
            .bold()
            .shadow(radius: 100)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            .frame(width: 500, height: 200, alignment: .top)
            }
        }
        .frame(height: 200)
        ZStack {
               Image("appmania")
                   .blur(radius: 10)
                   .aspectRatio(contentMode: .fill)
                   .frame(width: 1440, height: 900)
                   VStack {
               Text("What is App Development")
                   .font(.system(size: 60))
                   .bold()
                   .shadow(radius: 100)
                   .foregroundColor(Color.white)
                   .multilineTextAlignment(.center)
                   .frame(width: 500, height: 200, alignment: .top)
                   }
               }
        Spacer()
            .frame(height: 200)
        ZStack {
               Image("ProgramScreen")
                   .blur(radius: 10)
                   .aspectRatio(contentMode: .fill)
                   .frame(width: 1440, height: 900)
                   VStack {
               Text("Programming Languages. Which one is the easiest. which one is the hardest")
                   .font(.system(size: 60))
                   .bold()
                   .shadow(radius: 100)
                   .foregroundColor(Color.white)
                   .multilineTextAlignment(.center)
                   .frame(width: 500, height: 200, alignment: .top)
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
                   }
               }
        }
        
    }
   .frame(width:1280, height: 700)
}
    
    }


struct PresentView_Previews: PreviewProvider {
    static var previews: some View {
        PresentView()
    }
}
