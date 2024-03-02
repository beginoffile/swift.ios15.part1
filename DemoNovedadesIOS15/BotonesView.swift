//
//  BotonesView.swift
//  DemoNovedadesIOS15
//
//  Created by Aguid Ramirez Sanchez on 01/03/24.
//

import SwiftUI

struct BotonesView: View {
    @State private var on = false
    
    var body: some View {
        VStack{
            Toggle("Activar", isOn: $on)
                .toggleStyle(.button)
                .tint(.blue)
            
            Button("Guardar"){
                
            }
            .buttonStyle(.bordered)
            .headerProminence(.standard)
//            .tint(.red)
            
            Button(action: {
                
            }, label: {
                Text("Guardar").frame(maxWidth: 300)
            })
            .buttonStyle(.bordered)
            .tint(.blue)
            
            Button(role: .destructive) {
                
            } label: {
                Label("Eliminar", systemImage: "trash")
            }
            
            ControlGroup{
                Button {
                    
                } label: {
                    Label("Aceptar", systemImage: "pencil")
                }
                Button {
                    
                } label: {
                    Label("Eliminar", systemImage: "trash")
                }
            }
            

            
        }
    }
}

#Preview {
    BotonesView()
}
