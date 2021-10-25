//
//  DetailApp.swift
//  WisataApp
//
//  Created by KhalishTianto User on 06/04/21.
//

import SwiftUI

struct DetailApp: View {
    
    let detailwisata : destination
    
    var body: some View {
        Image(detailwisata.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipped()
            .cornerRadius(20)
        
        VStack (alignment: .leading){
            
            ScrollView{
                VStack(alignment: .leading, spacing: 10){
                    Text(detailwisata.namawisata)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    HStack{
                        Image(systemName: "map.fill")
                            .foregroundColor(.blue)
                        
                        Text(detailwisata.tempattujuan)
                            .font(.callout)
                    }
                    
                    HStack{
                        Image(systemName: "clock.fill")
                            .foregroundColor(.blue)
                        
                        Text(detailwisata.jam)
                            .font(.callout)
                        
                    }
                    
                    HStack{
                        Image(systemName: "person.fill")
                            .foregroundColor(.blue)
                        
                        Text(detailwisata.guide)
                            .font(.callout)
                    }
                    
                    ZStack(){
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 0.1334168911, green: 0.1294066608, blue: 0.1293440461, alpha: 1)))
                            .frame(width: 340, height: 110)
                        
                        HStack (spacing: 32){
                            VStack (spacing: 15){
                                ZStack{
                                    Circle()
                                        .fill(Color(#colorLiteral(red: 0.2394816875, green: 0.7692574859, blue: 0.9902411103, alpha: 1)))
                                        .frame(width: 50, height: 50)
                                        .clipShape(Circle())
                                        .clipped()
                                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                                    
                                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                        .padding()
                                }
                                
                                Text("Directions")
                                    .bold()
                                    .font(.system(size: 12))
                            }
                            
                            VStack (spacing: 15){
                                ZStack{
                                    Circle()
                                        .fill(Color(#colorLiteral(red: 0.2394816875, green: 0.7692574859, blue: 0.9902411103, alpha: 1)))
                                        .frame(width: 50, height: 50)
                                        .clipShape(Circle())
                                        .clipped()
                                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                                    
                                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                        .padding()
                                }
                                
                                Text("Nearby")
                                    .bold()
                                    .font(.system(size: 12))
                            }
                            
                            VStack (spacing: 15){
                                ZStack{
                                    Circle()
                                        .fill(Color(#colorLiteral(red: 0.2394816875, green: 0.7692574859, blue: 0.9902411103, alpha: 1)))
                                        .frame(width: 50, height: 50)
                                        .clipShape(Circle())
                                        .clipped()
                                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                                    
                                    Image(systemName: "person.fill")
                                        .padding()
                                }
                                
                                Text("AR Guide")
                                    .bold()
                                    .font(.system(size: 12))
                            }
                            
                            VStack (spacing: 15){
                                ZStack{
                                    Circle()
                                        .fill(Color(#colorLiteral(red: 0.2394816875, green: 0.7692574859, blue: 0.9902411103, alpha: 1)))
                                        .frame(width: 50, height: 50)
                                        .clipShape(Circle())
                                        .clipped()
                                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                                    
                                    Image(systemName: "bookmark.fill")
                                        .padding()
                                }
                                
                                Text("Save")
                                    .bold()
                                    .font(.system(size: 12))
                            }
                        }.padding(.top, 2)
                    }
                }.padding(.top, -1)
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Description")
                        .bold()
                        .font(.title2)
                    
                    Text(detailwisata.description)
                    
                   
                        
                }
                
            }.padding()
        }
    }
}

struct DetailApp_Previews: PreviewProvider {
    static var previews: some View {
        DetailApp(detailwisata: destination(id: 0, image: "", namawisata: "", namatempat: "", rating: 5, jarak: "", jam: "", tempattujuan: "", guide: "", description: ""))
            .preferredColorScheme(.dark)
    }
}
