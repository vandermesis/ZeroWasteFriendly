//
//  Mock+Place.swift
//  ZeroWasteFriendlyTests
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

@testable import ZeroWasteFriendly

extension Mock {

    static let place1 = Place(name: "Drogeria Hebe",
                              description: """
                                            Olejki kosmetyczne w szklanych opakowaniach,
                                            szmatka do demakijażu z bambusowego włókna (w plastikowym opakowaniu).
                                            """,
                              category: .refuse,
                              location: Location(latitude: 50.259486, longitude: 19.017677))
    static let place2 = Place(name: "Piekarnia Michalski",
                              description: "pieczywo, w tym chleb krojony, pakowany w papierowe torebki, trzeba poprosić",
                              category: .reduce,
                              location: Location(latitude: 50.259784, longitude: 19.015899))
    static let place3 = Place(name: "Palarnia Kawy",
                              description: "Kawa, herbata, niektóre słodycze na wagę, metalowe zaparzacze do herbat, młynki ręczne do kawy",
                              category: .rot,
                              location: Location(latitude: 50.255561, longitude: 19.027415))

    static let places = [place1, place2, place3]
}
