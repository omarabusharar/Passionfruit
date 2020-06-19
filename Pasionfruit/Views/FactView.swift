//
//  FactView.swift
//  Passionfruit
//
//  Created by Omar  on 2020-05-28.
//  Copyright © 2020 Omar . All rights reserved.
//

import SwiftUI
     var facts = ["Banging your head against a wall for one hour burns 150 calories.","In Switzerland it is illegal to own just one guinea pig.", "Pteronophobia is the fear of being tickled by feathers.", "Snakes can help predict earthquakes.", "Bananas are curved because they grow towards the sun."]
var factoid = facts.randomElement()
struct FactView: View {

    var body: some View {
        VStack {
        Text("Fun Fact of the Day")
            .font(.largeTitle)
            .bold()
        Spacer()
            .frame(height: 100)
            HStack {
        Spacer()
            .frame(width: 20)
        Text(factoid!)
            .font(.headline)
            .frame(alignment: .center)
        Spacer()
            .frame(width: 20)
            }
        }
    }
}

struct FactView_Previews: PreviewProvider {
    static var previews: some View {
        FactView()
    }
}
