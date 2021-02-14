//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Argjira Mala on 2/13/21.
//

import SwiftUI

struct LandmarkList: View {
  @EnvironmentObject var modelData: ModelData
  @State private var showFavoritesOnly = false
  
  
  var filteredLandmarks: [Landmark] {
    modelData.landmark.filter { (landmark) -> Bool in
      (!showFavoritesOnly || landmark.isFavorite)
    }
  }
  
  var body: some View {
    NavigationView {
      List {
        Toggle(isOn: $showFavoritesOnly, label: {
          Text("Favorites Only")
        })
        ForEach(filteredLandmarks) { landmark in
          NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
            LandmarkRow(landmark: landmark)
          }
        }
      }
      .navigationTitle("Landmarks")
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkList()
      .environmentObject(ModelData())
  }
}
