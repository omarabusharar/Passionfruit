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
    @State var SecondNumber: Float = 0
    @State var FirstNumber: Float = 0
    @State private var EqualSign: Bool = false
    @State var operators = ""
    @State var isCalculated:Bool = false
    @State var Total: Float = 0.0
    @State var TotalS: String = ""
    @State var currentoperator = ""

     func Calculate() {
        FirstNumber = Float(FirstString)!
        SecondNumber = Float(SecondString)!
        if operators == "plus" {
     Total = FirstNumber + SecondNumber
        } else if operators == "minus" {
      Total = FirstNumber - SecondNumber

        } else if operators == "times" {
      Total = FirstNumber * SecondNumber

   
        } else if operators == "divide" {
       Total = FirstNumber / SecondNumber

        }
    }
    
    
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
            HStack {
                Text("Current Operator: \(currentoperator)")
            }
            HStack {
               Button(action: {
                    // What to perform
                self.operators = "plus"
                self.currentoperator = "+"
                }) {
                 Text("+")   // How the button looks like
                }
            Button(action: {
                    // What to perform
                self.operators = "minus"
            self.currentoperator = "-"
                    }) {
                    Text("-")   // How the button looks like
                           }
            Button(action: {
                // What to perform
            self.operators = "times"
            self.currentoperator = "x"
                }) {
                Text("x")   // How the button looks like
                       }
            Button(action: {
                // What to perform
            self.operators = "divide"
                self.currentoperator = "/"
                }) {
                Text("/")
                    // How the button looks like
                       }
            }
            
            Button(action: {
                // What to perform
                self.Calculate()
                self.TotalS = String(self.Total)
                self.isCalculated = true
                
            }) {
                Text("Calculate")
            }
            if isCalculated {
        Text("Result = \(TotalS)")
            }
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
