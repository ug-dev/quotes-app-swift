//
//  QuotesApp.swift
//  Quotes
//
//  Created by Umang Gadhavana on 17/01/22.
//

import SwiftUI

@main
struct QuotesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(quotes: quoteData)
        }
    }
}
