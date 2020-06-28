//
//  ContentView.swift
//  Landmarks
//
//  Created by 李清发 on 2019/11/15.
//  Copyright © 2019 iTaojin. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var userData: UserData
    var landMark:Landmark
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex { $0.id == landMark.id }!
    }
    
    
    var body: some View {
        VStack {
            MapView(coordinate: landMark.locationCoordinate)
                .frame(height:300)
                
            
            CircleImage(image: landMark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landMark.name).font(.title)
                    Button(action: {
                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                    }) {
                        if self.userData.landmarks[self.landmarkIndex].isFavorite {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                        } else {
                            Image(systemName: "star").foregroundColor(.gray)
                        }
                    }
                }
                
                HStack {
                    Text(landMark.park).font(.subheadline)
                    Spacer()
                    Text(landMark.state).font(.subheadline)
                }
            }.padding()
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landMark: landmarkData[0])
            .environmentObject(UserData())
    }
}
