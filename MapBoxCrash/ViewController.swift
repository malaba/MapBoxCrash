import Mapbox
import UIKit

class ViewController: UIViewController {
    private let mapView = MGLMapView(
        frame: UIScreen.main.bounds,
        styleURL: URL(string: "YOURS")!
    )
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMapView()

        self.view.addSubview(mapView)
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }

    private func setupMapView() {
        mapView.translatesAutoresizingMaskIntoConstraints = false

        mapView.isRotateEnabled = false

        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
    }
}
