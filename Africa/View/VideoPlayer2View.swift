//
//  VideoPlayer2View.swift
//  Africa
//
//  Created by Cristina on 2023-07-15.
//

import SwiftUI
import AVKit

struct VideoPlayer2View: View {
    // MARK: - PROPERTIES
    
    var videoSelected: String
    var videoTitle: String

    // MARK: - BODY

    var body: some View {
      VStack {
        VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
           // Text(videoTitle)
        }
        .overlay(
          Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width: 32, height: 32)
            .padding(.top, 6)
            .padding(.horizontal, 8)
          , alignment: .topLeading
        )
      } //: VSTACK
      .accentColor(.accentColor)
      .navigationBarTitle(videoTitle, displayMode: .inline)
    }
  }

  // MARK: - PREVIEW

struct VideoPlayer2View_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayer2View(videoSelected: "lion", videoTitle: "Lion")
    }
}
