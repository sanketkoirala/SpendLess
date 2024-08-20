//
//  Tab.swift
//  SpendLess
//
//  Created by Sanket Koirala on 8/13/24.
//

import SwiftUI

enum Tab : String {
    case recents = "Recents"
    case search = "Filters"
    case charts = "Charts"
    case setting = "Setting"
    
    
    @ViewBuilder
    var tabContent : some View {
        switch self {
        case .recents:
            Image(systemName: "calendar")
            Text(self.rawValue)
        case .search:
            Image(systemName: "magnifyingglass")
            Text(self.rawValue)
        case .charts:
            Image(systemName: "chart.bar.xaxis")
            Text(self.rawValue)
        case .setting:
            Image(systemName: "gearshape")
            Text(self.rawValue)
        }
    }
}
 
