import SwiftUI

struct PageView<Page: View> : View {
    var pages: [Page]
    @State private var currentPage = 0;
    
    var body: some View {
        VStack {
            PageViewController(pages: pages, currentPage: $currentPage); //$ syntax to create a binding to a value that is stored as state
            Text("Current Page: \(currentPage)")
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
                    .aspectRatio(3 / 2, contentMode: .fit)
    }
}
