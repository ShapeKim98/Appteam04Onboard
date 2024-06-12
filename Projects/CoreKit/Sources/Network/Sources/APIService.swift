//
//  APIService.swift
//  CoreKit
//
//  Created by 김민호 on 6/9/24.
//

import Foundation
import Dependencies

extension DependencyValues {
    public var apiService: APIService {
        get { self[APIService.self] }
        set { self[APIService.self] = newValue }
    }
}

public struct APIService {
    public var requestLog: () -> Void
}

extension APIService: DependencyKey {
    public static let liveValue: Self = {
        return Self(
            requestLog: { print("hello") }
        )
    }()
    
    public static let previewValue: Self = {
       Self(
        requestLog: { print("hello (only preview)") }
       )
    }()
}
