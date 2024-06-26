//
//  Router.swift
//  BalYeonGiAwards
//
//  Created by Hyun Lee on 6/19/24.
//

import Foundation
import SwiftUI

class Router: ObservableObject{
    @Published var path: NavigationPath = NavigationPath()
    
    enum Destination: Hashable{
        case EmotionResultView
        case RandomEmotionView
        case CameraView
        case AllPhotosView
        case AnalyzeResultsView
        case WinnerView
        case StartView
        case NumberOfPeopleView
        case ResultListView
    }
    
    @ViewBuilder func view(for route: Destination) -> some View{
        switch route{
        case .EmotionResultView:
            EmotionResultView()
        case .RandomEmotionView:
            RandomEmotionView()
        case .CameraView:
            CameraView()
        case .AllPhotosView:
            AllPhotosView()
        case .AnalyzeResultsView:
            AnalyzeResultsView()
        case .WinnerView:
            WinnerView()
        case.NumberOfPeopleView:
            NumberOfPeopleView()
        case.StartView:
            StartView()
        case.ResultListView:
            ResultListView()
        }
    }
    
    func push(_ routePathView: Destination){
        path.append(routePathView)
    }
    
    func pop(){
        path.removeLast()
    }
    func backToRoot(){
        self.path = NavigationPath()
    }
}

