//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Stephen Cao on 11/10/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData

    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $userData.showFavouritesOnly) {
                    Text("Favorites only")
                }
                ForEach(userData.landmarks){ landmark in
                    if !self.userData.showFavouritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        .environmentObject(UserData())
    }
}
