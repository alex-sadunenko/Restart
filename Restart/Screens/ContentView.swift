//
//  ContentView.swift
//  Restart
//
//  Created by Tanya on 29.10.2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewAction: Bool = true
    
    var body: some View {
        if isOnboardingViewAction {
            OnboardingView()
        } else {
            HomeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
