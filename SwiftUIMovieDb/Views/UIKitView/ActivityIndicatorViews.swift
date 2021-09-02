//
//  ActivityIndicatorViews.swift
//  SwiftUIMovieDb
//
//  Created by Leonard Buduleanu on 28.08.2021.
//

import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
    
    func makeUIView(context: Context) -> some UIActivityIndicatorView{
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
    
}
 
