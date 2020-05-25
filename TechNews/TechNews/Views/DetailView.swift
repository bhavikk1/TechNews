//
//  DetailView.swift
//  TechNews
//
//  Created by Bhavik Kothari on 2020-05-24.
//  Copyright © 2020 Bhavik Kothari. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

