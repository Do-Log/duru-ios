//
//  ContentView.swift
//  duru
//
//  Created by 양원준 on 2021/04/06.
//

import SwiftUI
import PartialSheet

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            ExpenditureDetail()
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
