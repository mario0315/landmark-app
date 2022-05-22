import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true;
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter {
            landmark in
            (showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView{
            // Reading data from landmarks inited in ModelData retrieved data from json
            List(filteredLandmarks){ // the key ID is identified using the identifiable protocal added in Landmark data object model
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
        LandmarkList()
    }
}
