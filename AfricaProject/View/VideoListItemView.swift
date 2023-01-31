//
//  VideoListItem.swift
//  AfricaProject
//
//  Created by Orlando Moraes Martins on 31/01/23.
//

import SwiftUI

struct VideoListItemView: View {
    // MARK: - Properties
    let video: Video
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }//: ZSTACK
            
            VStack (alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
            }//:VSTACK
        }//: Htack
    }
}

struct VideoListItem_Previews: PreviewProvider {
    static var previews: some View {
        VideoListItemView(video: Video.example)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
