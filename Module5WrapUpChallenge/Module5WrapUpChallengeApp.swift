//
//  Module5WrapUpChallengeApp.swift
//  Module5WrapUpChallenge
//
//  Created by Anand Narayan on 2022-06-08.
//

import SwiftUI

@main
struct Module5WrapUpChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(WrapUpViewModel())
        }
    }
}
