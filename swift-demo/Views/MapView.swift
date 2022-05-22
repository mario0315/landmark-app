import SwiftUI
import MapKit

struct MapView: View {
    /**
        @State attribute is used to establish a source of truth for data in the app
        Allow the varuable to be updated in more than one view
     */
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region) // Passing a binding/reference using $
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
