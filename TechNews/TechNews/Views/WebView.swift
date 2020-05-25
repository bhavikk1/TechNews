//
//  WebView.swift
//  TechNews
//
//  Created by Bhavik Kothari on 2020-05-24.
//  Copyright © 2020 Bhavik Kothari. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI



struct WebView: UIViewRepresentable{
    
    let urlString: String?
    
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
        
    }
    
}
