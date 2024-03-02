//
//  RefreshView.swift
//  DemoNovedadesIOS15
//
//  Created by Aguid Ramirez Sanchez on 01/03/24.
//

import SwiftUI

struct RefreshView: View {

    @State private var ite = "Item"
    var body: some View {
        NavigationView{
            List(1..<10){item in
                Text("\(ite) \(item)")
            }
            .navigationTitle("Lista")
            .refreshable {
//                print("Recargando api")
                ite = "Ejecutar el refresh"
            }
        }
    }
}

#Preview {
    RefreshView()
}
