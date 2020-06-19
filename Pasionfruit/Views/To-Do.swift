//
//  To-Do.swift
//  Passionfruit
//
//  Created by Omar  on 2020-05-28.
//  Copyright © 2020 Omar . All rights reserved.
//

import SwiftUI
import CoreData
struct ToDo: View {

    @State var Item1:String = ""
    @State var Item2:String = ""
    @State var Item3:String = ""
    @State var Item4:String = ""
    @State var Item5:String = ""
    @State var Item6:String = ""
    @State var Item7:String = ""
    @State var Item8:String = ""
    @State var Item9:String = ""
    @State var Item10:String = ""
    @State var Storage:String = ""
    func ClearAllItems() {
               Item1 = ""
               Item2 = ""
               Item3 = ""
               Item4 = ""
               Item5 = ""
               Item6 = ""
               Item7 = ""
               Item8 = ""
               Item9 = ""
               Item10 = ""
               Storage = ""
           }
    var body: some View {
        VStack {
            Group {
        Text("To-Do List")
            .font(.largeTitle)
            .bold()
        Spacer()
            .frame(height: 10)
        Text("Please Note: To-Do does not save reminders and resets when you switch tabs. Additionally, To-Do can  store up to ten items.")
            .font(.callout)
            .multilineTextAlignment(.center)
        }
            Spacer()
                .frame(height: 20)
            Group {
                
                HStack {
            TextField("Enter Reminder Here", text: $Storage)
            Button(action: {
                if self.Item1 == "" {
                    self.Item1 = self.Storage
                } else if self.Item2 == "" {
                    self.Item2 = self.Storage
                } else if self.Item3 == "" {
                    self.Item3 = self.Storage
                } else if self.Item4 == "" {
                    self.Item4 = self.Storage
                } else if self.Item5 == "" {
                    self.Item5 = self.Storage
                } else if self.Item6 == "" {
                    self.Item6 = self.Storage
                } else if self.Item7 == "" {
                    self.Item7 = self.Storage
                } else if self.Item8 == "" {
                    self.Item8 = self.Storage
                } else if self.Item9 == "" {
                    self.Item9 = self.Storage
                } else if self.Item10 == "" {
                    self.Item10 = self.Storage
                }
            }) {
                Text("Add Reminder")
            }
                }
     if Item1 != "" {
                List {
            Text("Reminders")
            .foregroundColor(Color.gray)
                    VStack {
        Group {
    
            Text("1. \(Item1)")
            Spacer()
                .frame(height: 15)
                        }
            if Item2 != "" {
            Text("2. \(Item2)")
            }
            Spacer()
            .frame(height: 15)
            if Item3 != "" {
            Text("3. \(Item3)")
            }
            Spacer()
                .frame(height: 15)
            if Item4 != "" {
            Text("4. \(Item4)")
                        }
            Spacer()
                       .frame(height: 15)
            if Item5 != "" {
            Text("5. \(Item5)")
            
            }
            
                    }
                VStack {
            if Item6 != "" {
            Text("6. \(Item6)")
            Spacer()
              .frame(height: 15)
                        }
        if Item7 != "" {
            Text("7. \(Item7)")
            Spacer()
            .frame(height: 15)
                        }
        if Item8 != "" {
            Text("8. \(Item8)")
            Spacer()
            .frame(height: 15)
                        }
        if Item9 != "" {
            Text("9. \(Item9)")
            Spacer()
            .frame(height: 15)
                        }
        if Item10 != "" {
            Text("10. \(Item10)")
                        }
                    }
                }
        
        }
                }
                Button(action: {
                    self.ClearAllItems()
                    
                }) {
                    Text("Clear All Reminders")
                } .frame(alignment: .bottom)
                Spacer()
                    .frame(height: 10)
                        }
    }
}

struct ToDo_Previews: PreviewProvider {
    static var previews: some View {
        ToDo()
    }
}
