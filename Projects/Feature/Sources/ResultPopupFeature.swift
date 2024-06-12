//
//  ResultPopupFeature.swift
//  Feature
//
//  Created by 김민호 on 6/9/24.
//

import Foundation

import Domain
import CoreKit
import ThirdPartyLib
import ComposableArchitecture

@Reducer
public struct ResultPopupFeature {
    @Dependency(\.apiService) var apiService
    public init() {}
    @ObservableState
    public struct State {
        var num: Int
        public init(num: Int) {
            self.num = num
        }
    }
    public enum Action {
        case onAppear
    }
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .onAppear:
                return .run { send in
                    apiService.requestLog()
                }
            }
        }
    }
}

