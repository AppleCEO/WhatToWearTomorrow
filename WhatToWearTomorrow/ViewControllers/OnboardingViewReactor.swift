//
//  Untitled.swift
//  WhatToWearTomorrow
//
//  Created by 도미닉 on 10/14/25.
//

import ReactorKit
import RxSwift

final class OnboardingViewReactor: Reactor {
    enum Action {
        
    }
    
    enum Mutation {
        case setQuery(String?)
    }
    
    struct State {
        var query: String?
        
    }
    
    let initialState: State
    
    init() {
        self.initialState = State()
    }
}
