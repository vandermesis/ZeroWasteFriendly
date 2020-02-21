//
//  ZeroWastePlacesRepository.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation
import CoreLocation

typealias FetchZeroWastePlacesCompletion = (Result<[ZeroWastePlace], Error>) -> Void

protocol ZeroWastePlacesRepository {
    func fetchZeroWastePlaces(completion: FetchZeroWastePlacesCompletion?)
}

final class ZeroWastePlacesRepositoryImpl: ZeroWastePlacesRepository {

    func fetchZeroWastePlaces(completion: FetchZeroWastePlacesCompletion?) {
        completion?(.success([ZeroWastePlace(name: "Drogeria Hebe",
                                             description: """
                                                          Olejki kosmetyczne w szklanych opakowaniach,
                                                          szmatka do demakijażu z bambusowego włókna (w plastikowym opakowaniu).
                                                          """,
                                             category: .refuse,
                                             latitude: 50.259486,
                                             longitude: 19.017677),
                              ZeroWastePlace(name: "Piekarnia Michalski",
                                             description: "pieczywo, w tym chleb krojony, pakowany w papierowe torebki, trzeba poprosić",
                                             category: .reduce,
                                             latitude: 50.259784,
                                             longitude: 19.015899),
                              ZeroWastePlace(name: "Palarnia Kawy",
                                             description: "Kawa, herbata, niektóre słodycze na wagę, metalowe zaparzacze do herbat, młynki ręczne do kawy",
                                             category: .rot,
                                             latitude: 50.255561,
                                             longitude: 19.027415),
                              ZeroWastePlace(name: "PierRóg Pierogarnia",
                                             description: "pierogi do własnego opakowania",
                                             category: .recycle,
                                             latitude: 50.255430,
                                             longitude: 19.027610),
                              ZeroWastePlace(name: "Fromażeria KaiSERhof",
                                             description: "sery i oliwki do własnego opakowania",
                                             category: .repair,
                                             latitude: 50.256170,
                                             longitude: 19.019140)]))
    }
}
