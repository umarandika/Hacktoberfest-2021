//
//  ListHotel.swift
//  LishNews
//
//  Created by macOS User on 01/04/21.
//

import SwiftUI

struct ListHotel: View {
    var body: some View {
        
        NavigationView{
        List(HotelData){ data in
            
            NavigationLink(destination: DetailHotel(isiDetail: data)){
            
                
                
            ZStack{
               
                HStack{
                    Image(data.image)
                        .resizable()
                        .frame(width: 150, height: 170)
                        .clipped()
                        .cornerRadius(10)
                    
                    VStack(){
                        Text(data.namaHotel)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.blue)
                        Text(data.Lokasi)
                            .font(.system(size: 10))
                            .fontWeight(.regular)
                            .foregroundColor(Color.blue)
                        
                        HStack{
                            
                            Text("Tunjukan di peta")
                                .font(.system(size: 10))
                                .fontWeight(.regular)
                                .foregroundColor(Color.blue)
                            
                            Text(data.jarak)
                                .font(.system(size: 10))
                                .fontWeight(.regular)
                                .foregroundColor(Color.black)
                            
                        }.padding(.top, 5)
                        
                        Spacer()
                        
                        Text("Sangat Baik")
                        
                        Text("1 malam, 2 orang dewasa")
                            .font(.caption2)
                            .foregroundColor(.gray)
                            .padding(.bottom,3)
                        Text("Rp \(data.harga)")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        Spacer()
                        
                    }
                    .padding()
                }
            }
            .background(Color.white)
            .cornerRadius(10)
            }
        }
        
        .navigationBarTitle(Text("Booking"))
        }
        
    }
}

struct ListHotel_Previews: PreviewProvider {
    static var previews: some View {
        ListHotel()
    }
}



