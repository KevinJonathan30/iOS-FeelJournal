//
//  RootView.swift
//  FeelJournal
//
//  Created by Kevin Jonathan on 22/10/22.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var router: Router<Path>
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("My Journal", systemImage: "book.fill")
                }

            AnalyticsView()
                .tabItem {
                    Label("Analytics", systemImage: "chart.pie.fill")
                }
        }.navigationTitle("FeelJournal")
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
