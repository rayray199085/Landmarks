//
//  UserData.swift
//  Landmarks
//
//  Created by Stephen Cao on 13/10/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject{
    @Published var showFavouritesOnly = false
    @Published var landmarks = landmarkData
}
