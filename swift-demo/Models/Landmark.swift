import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int;
    var name: String;
    var park: String;
    var state: String;
    var description: String;
    
    private var imageName: String;
    var image: Image{ // Image is from SwiftUI
        Image(imageName);
    }
    
    private var coordinates: Coordinates;
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double;
        var longitude: Double;
    }
    
    
    // This is useful for MapKit
    var locationCoordinate: CLLocationCoordinate2D { // CLLocationCoordinate2D is from CoreLocation library
        CLLocationCoordinate2D (
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    
    
}
