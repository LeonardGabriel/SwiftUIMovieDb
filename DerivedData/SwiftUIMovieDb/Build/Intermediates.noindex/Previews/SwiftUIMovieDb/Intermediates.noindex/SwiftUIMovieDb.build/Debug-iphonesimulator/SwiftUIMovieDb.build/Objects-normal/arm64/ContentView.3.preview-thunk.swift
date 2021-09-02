@_private(sourceFile: "ContentView.swift") import SwiftUIMovieDb
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/leonardbuduleanu/Library/Mobile Documents/com~apple~CloudDocs/Documents/Developer/SwiftUIMovieDb/SwiftUIMovieDb/ContentView.swift", line: 38)
        AnyView(__designTimeSelection(ContentView(), "#14595.[2].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/leonardbuduleanu/Library/Mobile Documents/com~apple~CloudDocs/Documents/Developer/SwiftUIMovieDb/SwiftUIMovieDb/ContentView.swift", line: 12)
        AnyView(__designTimeSelection(TabView {
            __designTimeSelection(MovieListView()
                .tabItem {
                    __designTimeSelection(VStack {
                        __designTimeSelection(Image(systemName: __designTimeString("#14595.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "tv")), "#14595.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value.[0]")
                        __designTimeSelection(Text(__designTimeString("#14595.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: "Movies")), "#14595.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value.[1]")
                }, "#14595.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]")
            }
            
                .tag(__designTimeInteger("#14595.[1].[0].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 0)), "#14595.[1].[0].property.[0].[0].arg[0].value.[0]")
            
            __designTimeSelection(MovieSearchView()
                .tabItem {
                    __designTimeSelection(VStack {
                        __designTimeSelection(Image(systemName: __designTimeString("#14595.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "magnifyingglass")), "#14595.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value.[0]")
                        __designTimeSelection(Text(__designTimeString("#14595.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: "Search")), "#14595.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value.[1]")
                    }, "#14595.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0]")
                }
            
                .tag(__designTimeInteger("#14595.[1].[0].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: 1)), "#14595.[1].[0].property.[0].[0].arg[0].value.[1]")
        }, "#14595.[1].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

import struct SwiftUIMovieDb.ContentView
import struct SwiftUIMovieDb.ContentView_Previews