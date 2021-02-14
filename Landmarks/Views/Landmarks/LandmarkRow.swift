//
//  LandmarkRoow.swift
//  Landmarks
//
//  Created by Argjira Mala on 2/13/21.
//

import SwiftUI

struct LandmarkRow: View {
  var landmark: Landmark
  
  var body: some View {
    HStack {
      landmark.image
        .resizable()
        .frame(width: 50, height: 50)
      Text(landmark.name)
      
      Spacer()
      
      if landmark.isFavorite {
        Image(systemName: "star.fill")
          .foregroundColor(.yellow)
      }
    }
  }
}

struct LandmarkRoow_Previews: PreviewProvider {
  static var landmark = ModelData().landmark
  
  static var previews: some View {
    Group {
      LandmarkRow(landmark: landmark[0])
      LandmarkRow(landmark: landmark[1])
    }
    .previewLayout(.fixed(width: 300, height: 70))
  }
}
