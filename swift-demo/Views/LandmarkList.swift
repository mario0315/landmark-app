import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            // Reading data from landmarks inited in ModelData retrieved data from json
            List(landmarks){ // the key ID is identified using the identifiable protocal added in Landmark data object model
                landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark);
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
