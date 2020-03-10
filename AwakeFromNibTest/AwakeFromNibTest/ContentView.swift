//
//  ContentView.swift
//  AwakeFromNibTest
//
//  Created by Felix Marianayagam on 3/10/20.
//  Copyright © 2020 SubhaFelix. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomViewRepresentable()
    }
}

struct CustomViewRepresentable: UIViewRepresentable {
    typealias UIViewType = CustomView
    
    func makeUIView(context: UIViewRepresentableContext<CustomViewRepresentable>) -> CustomView {
        let customView = Bundle.main.loadNibNamed("CustomView", owner: nil, options: nil)![0] as! CustomView
        return customView
    }
    
    func updateUIView(_ uiView: CustomView, context: UIViewRepresentableContext<CustomViewRepresentable>) {
    }
}
