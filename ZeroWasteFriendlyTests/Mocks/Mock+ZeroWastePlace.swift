//
//  Mock+ZeroWastePlace.swift
//  ZeroWasteFriendlyTests
//
//  Created by Marek Skrzelowski on 21/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

@testable import ZeroWasteFriendly

extension Mock {

    static let zeroWastePlace = ZeroWastePlace(name: "Drogeria Hebe",
                                               description: """
                                                            Olejki kosmetyczne w szklanych opakowaniach,
                                                            szmatka do demakijażu z bambusowego włókna (w plastikowym opakowaniu).
                                                            """,
                                               category: .refuse,
                                               latitude: 50.259486,
                                               longitude: 19.017677)

    static let zeroWastePlaces = [zeroWastePlace]
}
