//
//  SourceView.swift
//  Passionfruit
//
//  Created by Omar  on 2020-05-29.
//  Copyright © 2020 Omar . All rights reserved.
//

import SwiftUI
var Imagees:FiveRow = FiveRow(imagee: "apple", imagee2: "appcoda", imagee3: "factsite", imagee4: "hackingwithswift")

struct SourceView: View {
    var body: some View {
        VStack{
         Text("Sources")
            .bold()
            .font(.largeTitle)
            .underline()

        Spacer()
            .frame(height: 40)
        FiveRowStack(FiveRow: Imagees)
        FiveRowStack2()
            
        }
    }

}
struct SourceView_Previews: PreviewProvider {
    static var previews: some View {
        SourceView()
    }
}
