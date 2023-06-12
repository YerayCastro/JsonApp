//
//  JSONApp.swift
//  JSON
//
//  Created by Yery Castro on 19/2/23.
//

import SwiftUI

@main
struct JSONApp: App {
    var body: some Scene {
        let login = PostViewModel()
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
