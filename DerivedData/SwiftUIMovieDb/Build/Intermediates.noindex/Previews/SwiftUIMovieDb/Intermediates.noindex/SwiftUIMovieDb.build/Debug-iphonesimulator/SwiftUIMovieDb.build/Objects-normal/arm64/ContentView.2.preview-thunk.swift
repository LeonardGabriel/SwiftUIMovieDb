@_private(sourceFile: "ContentView.swift") import SwiftUIMovieDb
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/leonardbuduleanu/Library/Mobile Documents/com~apple~CloudDocs/Documents/Developer/SwiftUIMovieDb/SwiftUIMovieDb/ContentView.swift", line: 38)
        AnyView(ContentView())
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/leonardbuduleanu/Library/Mobile Documents/com~apple~CloudDocs/Documents/Developer/SwiftUIMovieDb/SwiftUIMovieDb/ContentView.swift", line: 12)
        AnyView(TabView {
            MovieListView()
                .tabItem {
                    VStack {
                        Image(systemName: __designTimeString("#14595.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "tv"))
                        Text(__designTimeString("#14595.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: "Movies"))
                }
            }
            
                .tag(__designTimeInteger("#14595.[1].[0].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 0))
            
            MovieSearchView()
                .tabItem {
                    VStack {
                        Image(systemName: __designTimeString("#14595.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "magnifyingglass"))
                        Text(__designTimeString("#14595.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: "Search"))
                    }
                }
            
                .tag(__designTimeInteger("#14595.[1].[0].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: 1))
        })
    #sourceLocation()
    }
}

import struct SwiftUIMovieDb.ContentView
import struct SwiftUIMovieDb.ContentView_Previews