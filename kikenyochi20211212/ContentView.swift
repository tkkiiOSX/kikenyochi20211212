//
//  ContentView.swift
//  kikenyochi20211212
//
//  Created by Xcode2021 on 2021/12/12.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var data: DATA2 = DATA2()
    @State var name: String = ""
    @State var type: Int = 0
    @State var typeRH: Int = 0

    var typeT = ["A型","B型","O型","AB型"]
    var typeRHT = ["Rh+","Rh-"]

    var body: some View {
        VStack {
            ForEach(data.aryDat) { item in
                HStack {
                    Text(item.name)
                    Text(typeT[item.type])
                    Text(typeRHT[item.typeRH])
                }

            }
            HStack {
                Text("名前")
                TextField("名前を入れてください", text: $name)
            }
            HStack {
                Text("血液型")
                Picker("血液型", selection: $type) {
                    Text("A型").tag(0)
                    Text("B型").tag(1)
                    Text("O型").tag(2)
                    Text("AB型").tag(3)
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            HStack {
                Text("Rh")
                Picker("Rh", selection: $typeRH) {
                    Text("Rh+").tag(0)
                    Text("Rh-").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            Button(action: {
                data.aryDat.append(DATA1(name: name, type: type, typeRH: typeRH))
                name = ""
                type = 0
                typeRH = 0
            }) {
                Text("登録")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
