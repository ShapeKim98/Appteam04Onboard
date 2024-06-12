//
//  Feature.swift
//  Feature
//
//  Created by 김민호 on 6/3/24.
//

import Domain
import CoreKit
import ThirdPartyLib
import ComposableArchitecture

@Reducer
public struct HomeFeature {
    public init() {}
    
    @ObservableState
    public struct State {
        var num: Int = 0
        @Presents var resultSheet: ResultPopupFeature.State?
        public init() {}
    }
    public enum Action {
        case minusButtonTapped
        case plusButtonTapped
        case selectButtonTapped
        case resultSheet(PresentationAction<ResultPopupFeature.Action>)
    }
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .resultSheet:
                return .none
            case .selectButtonTapped:
                state.resultSheet = ResultPopupFeature.State(num: state.num)
                return .none
            case .minusButtonTapped:
                state.num -= 1
                return .none
            case .plusButtonTapped:
                state.num += 1
                return .none
            }
        }
        .ifLet(\.$resultSheet, action: \.resultSheet) {
            ResultPopupFeature()
        }
    }
}
