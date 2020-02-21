//
//  PlacesRepository.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation
import CoreLocation

typealias FetchPlacesCompletion = (Result<[Place], Error>) -> Void

protocol PlacesRepository {
    func fetchPlaces(completion: FetchPlacesCompletion?)
}

final class PlacesRepositoryImpl: PlacesRepository {

    func fetchPlaces(completion: FetchPlacesCompletion?) {
        //TODO: Add proper networking
        completion?(.success([Place(name: "Drogeria Hebe",
                                    description: """
                                                Olejki kosmetyczne w szklanych opakowaniach,
                                                szmatka do demakijażu z bambusowego włókna (w plastikowym opakowaniu).
                                                """,
                                    category: .refuse,
                                    latitude: 50.259486,
                                    longitude: 19.017677),
                              Place(name: "Piekarnia Michalski",
                                    description: "pieczywo, w tym chleb krojony, pakowany w papierowe torebki, trzeba poprosić",
                                    category: .reduce,
                                    latitude: 50.259784,
                                    longitude: 19.015899),
                              Place(name: "Palarnia Kawy",
                                    description: "Kawa, herbata, niektóre słodycze na wagę, metalowe zaparzacze do herbat, młynki ręczne do kawy",
                                    category: .rot,
                                    latitude: 50.255561,
                                    longitude: 19.027415),
                              Place(name: "PierRóg Pierogarnia"         ,
                                    description: "pierogi do własnego opakowania",
                                    category: .recycle,
                                    latitude: 50.255430,
                                    longitude: 19.027610),
                              Place(name: "Fromażeria KaiSERhof",
                                    description: "sery i oliwki do własnego opakowania",
                                    category: .repair,
                                    latitude: 50.256170,
                                    longitude: 19.019140)]))
    }
}
