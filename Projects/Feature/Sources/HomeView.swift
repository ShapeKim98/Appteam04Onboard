//
//  HomeView.swift
//  Feature
//
//  Created by 김민호 on 6/9/24.
//

import SwiftUI
import ComposableArchitecture

public struct HomeView: View {
    @Perception.Bindable var store: StoreOf<HomeFeature>
    
    public init(store: StoreOf<HomeFeature>) {
        self.store = store
    }
    
    public var body: some View {
        VStack {
            HStack {
                Button("-") { store.send(.minusButtonTapped, animation: .snappy) }
                Text("\(store.state.num)")
                    .contentTransition(.numericText())
                Button("+") { store.send(.plusButtonTapped, animation: .snappy) }
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
