//
//  ContentView.swift
//  ListadoUI
//
//  Created by estech on 20/2/23.
//

import SwiftUI

struct ContentView: View {
    
    let productos = Bundle.main.decode([catalogo].self, from: "productos.json")
    var body: some View {
        VStack {
            List{
                ForEach(productos){ item in
                    Text(item.title)
                    VStack{
                        ZStack(alignment: .bottomTrailing){
                            
                            AsyncImage(url: URL(string: item.image),
                                       content: { image in
                                image.resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: 100, maxHeight: 100)
                                
                            },
                                       placeholder: {
                                
                        ProgressView()
                            }
                                       
                            )
                            
                            Text("Description: \(item.description)")
                                .padding(4)
                                .background(.black)
                                .foregroundColor(.white)
                                .offset(x: -10, y: -5)
                                .font(.caption)
                            
                        }
                        
                    }
                }
                
            }
            .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
