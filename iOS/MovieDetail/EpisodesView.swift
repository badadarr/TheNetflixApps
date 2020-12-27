//
//  EpisodesView.swift
//  The Netflix Apps (iOS)
//
//  Created by badar on 27/12/20.
//

import SwiftUI

struct EpisodesView: View {
    
    var episodes: [Episode]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter({ $0.season == season })
    }
    
    var body: some View {
        VStack {
            // Season Picker
            HStack {
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group {
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                })
                
                Spacer()
            }
            
            // Episode List
            
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                Text("TEST")
            }
            
            Spacer()
        }
        .foregroundColor(.white)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            EpisodesView(episodes: [allExampleEpisodes], showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
