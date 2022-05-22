//
//  LandmarkList.swift
//  swift-demo
//
//  Created by Logan Nguyễn on 5/21/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks){ // the key ID is identified using the identifiable protocal added in Landmark data object model
            landmark in LandmarkRow(landmark: landmark);
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
