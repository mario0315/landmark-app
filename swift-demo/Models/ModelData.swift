import Foundation
import Combine


/**
     An observable object is a custom object for data
     that can be bound to a view from storage in SwiftUI’s environment.
     
     SwiftUI watches for any changes to observable objects that could affect a view,
     and displays the correct version of the view after a change.
 */
final class ModelData: ObservableObject {
    /**
     An observable object needs to publish any changes to its data,
     so that its subscribers can pick up the change.
     */
    @Published var landmarks: [Landmark] = load("landmarkData.json");
    
    var hikes: [Hike] = load("hikeData.json"); // no need @Published since hike data won't be mutated
}

func load<T: Decodable>(_ filename: String) -> T {

    let data: Data; // Data is a byte buffer
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle");
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder();
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)");
    }
}
