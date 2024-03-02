//
//  TareaModificadoraView.swift
//  DemoNovedadesIOS15
//
//  Created by Aguid Ramirez Sanchez on 01/03/24.
//

import SwiftUI

struct TareaModificadoraView: View {
    @State private var num = ""
    var body: some View {
        Text("Hello, World!")
            .task(id: num){
                    print("Se ejecuta la accion")
            }
        
        Button(action: {
            num="texto"
        }, label: {
            Text("Incrementar")
        })
    }
}

#Preview {
    TareaModificadoraView()
}
