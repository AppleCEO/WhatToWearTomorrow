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
        case nextButtonTaped
    }
    
    enum Mutation {
        case showLocationAuthAlert
        case presentMainScreen
    }
    
    struct State {
        
    }
    
    let initialState: State
    
    init() {
        self.initialState = State()
    }
    
    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case let .nextButtonTaped:
            return Observable.just(Mutation.showLocationAuthAlert)
        }
    }
    
    func reduce(state: State, mutation: Mutation) -> State {
        switch mutation {
        case let .showLocationAuthAlert:
            
        case let .presentMainScreen:
        }
    }
}
