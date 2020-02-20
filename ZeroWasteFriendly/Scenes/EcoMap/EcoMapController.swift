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
    func displayEcoMap()
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
        centerMapOnLocation(location: Constants.EcoMap.katowiceCoordinates)
        interactor.getEcoMap()
    }

    @IBAction private func addButtonPressed(_ sender: UIBarButtonItem) {

    }
}

extension EcoMapController: EcoMapPresentable {

    func displayEcoMap() {
        
    }
}

private extension EcoMapController {

    private func setupNavigationBar() {
        title = R.string.localizable.ecoMapTitle()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(addButtonPressed(_:)))
    }

    private func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                                                  latitudinalMeters: Constants.EcoMap.kilometerRadius,
                                                  longitudinalMeters: Constants.EcoMap.kilometerRadius)
        ecoMapView.setRegion(coordinateRegion, animated: true)
    }
}
