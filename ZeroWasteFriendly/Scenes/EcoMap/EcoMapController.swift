//
//  EcoMapController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 20/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//
  
import UIKit
import MapKit

protocol EcoMapPresentable: SpinnerPresentable & AlertPresentable {
    func displayUserLocation(region: MKCoordinateRegion)
    func displayPlaces(annotations: [MKAnnotation])
}

final class EcoMapController: MainViewController {

    @IBOutlet private weak var ecoMapView: MKMapView!
    
    private let interactor: EcoMapInteractor

    init(interactor: EcoMapInteractor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupMapView()
        interactor.getUserLocation()
        interactor.getPlaces()
    }

    @IBAction private func addButtonPressed(_ sender: UIBarButtonItem) {

    }
}

private extension EcoMapController {

    private func setupNavigationBar() {
        title = R.string.localizable.ecoMapTitle()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(addButtonPressed(_:)))
    }

    private func setupMapView() {
        ecoMapView.register(PlaceAnnotationView.self,
                            forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
    }
}

extension EcoMapController: EcoMapPresentable {

    func displayUserLocation(region: MKCoordinateRegion) {
        ecoMapView.setRegion(region, animated: true)
    }

    func displayPlaces(annotations: [MKAnnotation]) {
        ecoMapView.addAnnotations(annotations)
    }
}
