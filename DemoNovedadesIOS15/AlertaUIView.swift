//
//  AlertaUIView.swift
//  DemoNovedadesIOS15
//
//  Created by Aguid Ramirez Sanchez on 01/03/24.
//

import SwiftUI

struct AlertaUIView: View {
    
    @State private var show1 = false
    @State private var show2 = false
    
    
    var body: some View {
        Button(action: {
            show1.toggle()
        }, label: {
            Text("Mostrar Alerta")
        })
        .alert("Mensaje de la alerta", isPresented: $show1){
            Button("Aceptar", role: .none) {
                
            }
            Button("Eliminar", role: .destructive) {
                
            }
         

        }
        Button("Abrir Menu") {
            show2.toggle()
        }
        .confirmationDialog("Titulo", isPresented: $show2) {
            Button("Aceptar", role: .none) {
                
            }
            Button("Eliminar", role: .destructive) {
                
            }
        } message: {
            
        }

    }
}

#Preview {
    AlertaUIView()
}
