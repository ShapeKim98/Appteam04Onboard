//
//  HomeView.swift
//  Feature
//
//  Created by 김민호 on 6/9/24.
//

import SwiftUI
import ThirdPartyLib
import ComposableArchitecture

public struct HomeView: View {
    @Bindable var store: StoreOf<HomeFeature>
    
    public init(store: StoreOf<HomeFeature>) {
        self.store = store
    }
    
    public var body: some View {
        VStack {
            HStack {
                Button("-") { store.send(.minusButtonTapped) }
                Text("\(store.state.num)")
                Button("+") { store.send(.plusButtonTapped) }
            }
            Button("Select") {
                store.send(.selectButtonTapped)
            }
        }
        .sheet(
            item: $store.scope(
                state: \.resultSheet,
                action: \.resultSheet
            )
        ) { store in
            ResultPopupView(store: store)
        }
    }
}
//MARK: - Preview
#Preview {
    HomeView(
        store: Store(
            initialState: .init(),
            reducer: { HomeFeature() }
        )
    )
}
