//
//  DisplayInfoView.swift
//  Module5WrapUpChallenge
//
//  Created by Anand Narayan on 2022-06-08.
//

import SwiftUI
import AVKit

struct DisplayInfoView: View {
    
    var id: Int
    @EnvironmentObject var viewModel: WrapUpViewModel
    
    
    var body: some View {
        
        let url = URL(string: viewModel.getSelectedVideo(videoId: id))
        VStack {
            Text((viewModel.data?[id-1].title)!).font(.headline)
            if (url != nil) {
                VideoPlayer(player: AVPlayer(url: url!))
            }
        }
    }
}


