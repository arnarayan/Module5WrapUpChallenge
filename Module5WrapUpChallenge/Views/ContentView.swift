//
//  ContentView.swift
//  Module5WrapUpChallenge
//
//  Created by Anand Narayan on 2022-06-08.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: WrapUpViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.viewModel.getLocalData()) { elem in
                    NavigationLink(destination: {
                        DisplayInfoView(id: elem.id)
                    }, label: {
                        Text(elem.title)
                    })
                    
                }
            }.navigationTitle("Video List").accentColor(.black)
        }.navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
