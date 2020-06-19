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
    
    var calc:SidebarItem = SidebarItem(name: "Calculator", sidepic: "calc", destination: "CalcView")
    var fact:SidebarItem = SidebarItem(name: "Fun Facts", sidepic: "facts", destination: "FactView")
     var ToDoList:SidebarItem = SidebarItem(name: "To-Do List", sidepic: "checkmark", destination: "ToDo")
    var Article = SidebarItem(name: "Article", sidepic: "Article", destination: "PresentationView")
    var Home = SidebarItem(name: "Home", sidepic: "house", destination: "DainView")
    var Riddle2 = SidebarItem(name: "Riddles", sidepic: "sources", destination: "RiddleView")
   
    var body: some View {

        NavigationView() {
        
            List() {
        VStack {
            Spacer()
                .frame(height: 10)

             Text("Applications")
                .foregroundColor(Color.gray)
            Spacer()
                .frame(height: 4)
            }
            
       NavigationLink(destination: CalcView()) {
            SideBarView(SidebarItem: calc)
            }
        NavigationLink(destination: FactView()) {
                   SideBarView(SidebarItem: fact)
                   }
        NavigationLink(destination: RiddleView()) {
            SideBarView(SidebarItem: Riddle2)
        }
        NavigationLink(destination: ToDo()) {
                   SideBarView(SidebarItem: ToDoList)
                   }
            
        Divider()
            
    VStack {
        Text("Main")
            .foregroundColor(Color.gray)
            }
 
        
                
        NavigationLink(destination: PresentationView()) {
            SideBarView(SidebarItem: Article)
            }
            Group {
             
        NavigationLink(destination: DainView()) {
        SideBarView(SidebarItem: Home)
            }
            }
        } .listStyle(SidebarListStyle())
            
            .frame(minWidth: 200, maxWidth: 200, minHeight: 600, maxHeight: .infinity)
            DainView()
                .frame(minWidth: 700, maxWidth: .infinity, minHeight: 600, maxHeight: .infinity)
   .navigationViewStyle(DoubleColumnNavigationViewStyle()) }
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
                Text("The apps I  created only show snipets of what is possible with the skill of progamming.")
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
