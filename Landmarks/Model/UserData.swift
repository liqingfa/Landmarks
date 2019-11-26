//
//  UserData.swift
//  Landmarks
//
//  Created by 李清发 on 2019/11/26.
//  Copyright © 2019 iTaojin. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
