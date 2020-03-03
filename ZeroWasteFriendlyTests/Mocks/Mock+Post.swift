//
//  Mock+Post.swift
//  ZeroWasteFriendlyTests
//
//  Created by Marek Skrzelowski on 01/03/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

@testable import ZeroWasteFriendly

extension Mock {

    static let post1 = Post(id: "442734E6-F4AD-C80E-A34F-E625B298EB12",
                            title: "Gmina Zero Waste",
                            content: """
                                    Co to znaczy „Gmina Zero Waste”?
                                    To gmina, która otwarcie podejmuje wyzwanie systematycznego ograniczenia ilości wytwarzanych odpadów.
                                    """)
    static let post2 = Post(id: "59242E4E-1F0E-A7B5-C5EE-D1678FF26F3F",
                            title: "Wrzucam. Nie wyrzucam.",
                            content: "Kampania WRZUCAM. Nie wyrzucam, czyli obowiązkowy system kaucyjny na opakowania jedno- i wielorazowe po napojach.")

    static let posts = [post1, post2]
}
