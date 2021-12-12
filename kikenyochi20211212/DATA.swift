//
//  DATA.swift
//  kikenyochi20211212
//
//  Created by Xcode2021 on 2021/12/12.
//

import SwiftUI

class DATA1: ObservableObject, Identifiable {
    @Published var id = UUID()
    @Published var name: String
    @Published var type: Int
    @Published var typeRH: Int

    init(
        name: String = "",
        type: Int = 0,
        typeRH: Int = 0
    ) {
        self.name = name
        self.type = type
        self.typeRH = typeRH
    }
}

class DATA2: ObservableObject {
    @Published var aryDat: [DATA1] = []
}
