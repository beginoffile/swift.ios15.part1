//
//  ContentView.swift
//  DemoNovedadesIOS15
//
//  Created by Aguid Ramirez Sanchez on 01/03/24.
//

import SwiftUI

struct ContentView: View {
    
    enum Campos{
        case nombre
        case apellido
        case email
    }
    
    @State private var nombre = ""
    @State private var apellido = ""
    @State private var email = ""
    @FocusState private var foco: Campos?
    
    var body: some View {
        VStack {
            
            TextField(text: $nombre) {
                Text("Nombre")
            }
            .focused($foco, equals: .nombre)
            .textFieldStyle(.roundedBorder)
            .submitLabel(.continue)
            
            TextField(text: $apellido) {
                Text("Apellido")
            }
            .focused($foco, equals: .apellido)
            .textFieldStyle(.roundedBorder)
            .submitLabel(.continue)
            
            TextField(text: $email) {
                Text("Email")
            }
            .focused($foco, equals: .email)
            .textFieldStyle(.roundedBorder)
            .submitLabel(.done)
            .keyboardType(.emailAddress)
            
            TextField("Name", text: $nombre)
                .textFieldStyle(.roundedBorder)
                .toolbar{
                    ToolbarItemGroup(placement: .keyboard) {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "pencil.tip.crop.circle")
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "tablecells")
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "camera")
                        })
                        
                        
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Registar")
                        })
                    }
                }
            
        }
        .padding()
        .onSubmit {
            switch foco{
            case .nombre:
                foco = .apellido
            case .apellido:
                foco = .email
            default:
                print("Guardar Formulario")
            }
        }
    }
}

#Preview {
    ContentView()
}
