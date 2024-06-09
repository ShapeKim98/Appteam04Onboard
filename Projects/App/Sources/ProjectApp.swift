//
//  ProjectApp.swift
//  App
//
//  Created by 김민호 on 6/9/24.
//

import SwiftUI
import Feature
import ComposableArchitecture

@main
struct ProjectApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(
                store: Store(
                    initialState: .init(),
                    reducer: { HomeFeature() }
                )
            )
        }
    }
}
