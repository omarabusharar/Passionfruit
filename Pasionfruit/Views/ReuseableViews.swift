//
//  FiveRowFile.swift
//  Passionfruit
//
//  Created by Omar  on 2020-06-12.
//  Copyright © 2020 Omar . All rights reserved.
//

import Foundation
import SwiftUI

struct FiveRow {
    var imagee:String = ""
    var imagee2:String = ""
    var imagee3:String = ""
    var imagee4:String = ""
}
struct FiveRowStack:View {
    var FiveRow: FiveRow
    var body: some View {
    HStack {
    Image(FiveRow.imagee)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 100,height: 50, alignment:  .center)
      Image(FiveRow.imagee2)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 100,height: 50)
    Image(FiveRow.imagee3)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 100,height: 50)
    Image(FiveRow.imagee4)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 100,height: 50)

    }
    }
    
}
struct FiveRowStack2:View {

    var body: some View {
    HStack {
    Text("Apple")
        .bold()
    .frame(width: 100,height: 50)
    Text("AppCoda")
        .bold()
        .frame(width: 100,height: 50)
        
    Text("FactSite")
        .bold()
        .frame(width: 100,height: 50)
    Text("Hacking with Swift")
        .bold()
        .frame(width: 100,height: 50)
        
    }
    }
    
}
struct SidebarItem {
    var name: String = ""
    var sidepic:String = ""
    var destination:String = ""
}

struct SideBarView: View {
var SidebarItem: SidebarItem
var body: some View {
HStack {
    Image(SidebarItem.sidepic)
    .resizable()
    .aspectRatio(contentMode: .fit)
    .frame(width: 20, height: 20, alignment: .topLeading)
    Text(SidebarItem.name)
    .foregroundColor(Color.TextColor)
                }
            }
        }
