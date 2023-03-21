//
//  ContentView.swift
//  Pasionfruit
//
//  Created by Omar  on 2020-05-27.
//  Copyright © 2020 Omar . All rights reserved.
//

import SwiftUI
import AppKit
struct ContentView: View {
    let sidebarViews = [
        SidebarItem(name: "Home", sidepic: "house"),
        SidebarItem(name: "Article", sidepic: "Article"),
        SidebarItem(name: "Sources", sidepic: "slides"),
        SidebarItem(name: "Calculator", sidepic: "calc"),
        SidebarItem(name: "To-Do List", sidepic: "checkmark"),
        SidebarItem(name: "Fun Facts", sidepic: "facts"),
        SidebarItem(name: "Riddles", sidepic: "sources")
    ]
    @State var selection:String? = "Home"
    var body: some View {

        NavigationView() {
            List(sidebarViews, id: \.name, selection: $selection, rowContent:{ element in
                SideBarView(SidebarItem: element)
                    }) .listStyle(SidebarListStyle())
            
            .frame(minWidth: 200, maxWidth: .infinity, minHeight: 600, maxHeight: .infinity)
            .navigationViewStyle(DoubleColumnNavigationViewStyle())
        if selection == "Home" {
            DainView()
                .frame(minWidth: 700, maxWidth: .infinity, minHeight: 600, maxHeight: .infinity)
        } else if selection == "Article" {
           PresentationView()
        } else if selection == "Sources" {
            SourceView()
        } else if selection == "Calculator" {
            CalcView()
        } else if selection == "To-Do List" {
            ToDo()
        } else if selection == "Fun Facts" {
            FactView()
        } else if selection == "Riddles" {
            RiddleView()
        }
        }
    }
}


struct DainView: View {
var body: some View {
    VStack {
    VStack(alignment: .center) {
    Text("Welcome to Passionfruit")
        .font(.largeTitle)
        .bold()
        .multilineTextAlignment(.center)
    Text("Omar's Passion Project")
        .font(.headline)
        .fontWeight(.thin)
        .foregroundColor(Color.gray)
    }
        Spacer()
            .frame(height: 90)
        HStack{
            Spacer()
            .frame(width: 30)
            VStack{
        Image("command")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 90, height: 90, alignment: .leading)
                Text("This Passion Project is all about Programming made by myself with guides by the talented people in the sources tab.")
                    .frame(width: 200)
                    }
            Spacer()
                .frame(width: 30)
            VStack {
                Image("appsquares")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90, height: 90, alignment: .leading)
                Text("The apps I created only show snipets of what is possible with the skill of progamming.")
                    .frame(width: 150)
                               }
            Spacer()
                .frame(width: 30)
            HStack {
            VStack{
                   Image("checkmark")
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(width: 90, height: 90, alignment: .leading)
                           Text("To get started, select an item from the apps or from the presentation section on the sidebar.")
                               .frame(width: 150)
                               }
                Spacer()
                .frame(width: 30)
                    }
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
