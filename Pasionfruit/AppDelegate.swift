//
//  AppDelegate.swift
//  Pasionfruit
//
//  Created by Omar  on 2020-05-27.
//  Copyright © 2020 Omar . All rights reserved.
//

import Cocoa
import SwiftUI
@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Create the window and set the content view. 
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
        self.window.titleVisibility = NSWindow.TitleVisibility.hidden;
        self.window.titlebarAppearsTransparent = true;
        window.styleMask.remove(.resizable)
            }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func ShowScript(_ sender: Any) {
    }
}
