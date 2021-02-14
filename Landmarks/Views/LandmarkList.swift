//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Argjira Mala on 2/13/21.
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    
    NavigationView {
      List(landmark) { landmark in
        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                           LandmarkRow(landmark: landmark)
                       }
      }
      .navigationTitle("Landmarks")
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
      ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
          LandmarkList()
              .previewDevice(PreviewDevice(rawValue: deviceName))
              .previewDisplayName(deviceName)
      }
  }
}
