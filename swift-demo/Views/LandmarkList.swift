//
//  LandmarkList.swift
//  swift-demo
//
//  Created by Logan Nguyễn on 5/21/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List{
            LandmarkRow(landmark: landmarks[0]);
            LandmarkRow(landmark: landmarks[1]);
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
