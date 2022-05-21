//
//  CircleImage.swift
//  swift-demo
//
//  Created by Logan Nguyễn on 5/20/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtle-rock")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
