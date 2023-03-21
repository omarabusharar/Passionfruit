//
//  CalcView.swift
//  Pasionfruit
//
//  Created by Omar  on 2020-05-28.
//  Copyright © 2020 Omar . All rights reserved.
//

import SwiftUI

struct CalcView: View {
    @State var FirstString: String = ""
    @State var SecondString: String = ""
    @State var Total:Float? = nil
    @State var currentoperator = "+"
    let operators = ["+","-","*","/"]
    var body: some View {
        HStack {
            Spacer()
            .frame(width: 30)
        VStack {
            Text("Calculator")
                .font(.title)
                .bold()
            Spacer()
                .frame(width: 200 , height: 100)
            TextField("First Number", text: self.$FirstString)
            Spacer()
            .frame(height: 20)
    TextField("Second Number", text: self.$SecondString)
            Spacer()
                           .frame(height: 100)
            Picker(selection: $currentoperator, label: Text("Operator"), content: {
                ForEach(operators, id: \.self) { o in
                    Text(o)
                }
            })
            .pickerStyle(.segmented)
            Button("Calculate", action: {
                Total = ((NSExpression(format: "\(FirstString)\(currentoperator)\(SecondString)").expressionValue(with: nil, context: nil)) as! Float)
            })
            Text("Result: \(String(Total ?? 0))")
    }
     Spacer()
     .frame(width: 30)
            
        }
    }
}
struct CalcView_Previews: PreviewProvider {
    static var previews: some View {
        CalcView()
    }
}
