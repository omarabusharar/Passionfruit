//
//  To-Do.swift
//  Passionfruit
//
//  Created by Omar  on 2020-05-28.
//  Copyright © 2020 Omar . All rights reserved.
//

import SwiftUI
struct ToDo: View {

    @State var Items:Array<String> = []
    @State var storage:String = ""
    var body: some View {
        VStack {
            Group {
                Text("To-Do List")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                    .frame(height: 10)
                Text("Please Note: To-Do does not save reminders and resets when you switch tabs.")
                    .font(.callout)
                    .multilineTextAlignment(.center)
            }
            Spacer()
                .frame(height: 20)
            Group {
                
                HStack {
                    TextField("Enter Reminder Here", text: $storage)
                    Button(action: {
                        Items.append(storage)
                    }) {
                        Text("Add Reminder")
                    }
                }
                List {
                    Text("Reminders")
                        .foregroundColor(Color.gray)
                    VStack {
                        ForEach(Array(Items.enumerated()), id: \.offset) { index, element in
                            Text("\((index + 1)): \(element)")
                            Spacer()
                                .frame(height: 15)
                        }
                    }
                }
                Button(action: {
                    Items = []
                }) {
                    Text("Clear All Reminders")
                } .frame(alignment: .bottom)
                Spacer()
                    .frame(height: 10)
            }
        }
    }
}

struct ToDo_Previews: PreviewProvider {
    static var previews: some View {
        ToDo()
    }
}
