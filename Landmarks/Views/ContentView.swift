//
//  ContentView.swift
//  Landmarks
//
//  Created by Argjira Mala on 2/13/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
          .environmentObject(ModelData())
    }
}
