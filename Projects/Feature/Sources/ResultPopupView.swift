//
//  ResultPopupView.swift
//  Feature
//
//  Created by 김민호 on 6/9/24.
//

import SwiftUI
import ComposableArchitecture

struct ResultPopupView: View {
    private let store: StoreOf<ResultPopupFeature>
    public init(store: StoreOf<ResultPopupFeature>) {
        self.store = store
    }
    
    var body: some View {
        Text("\(store.state.num)")
            .onAppear { store.send(.onAppear) }
    }
}
//MARK: - Preview
#Preview {
    ResultPopupView(
        store: Store(
            initialState: .init(num: 2),
            reducer: { ResultPopupFeature() }
        )
    )
}
