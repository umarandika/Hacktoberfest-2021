//
//  DetailHotel.swift
//  LishNews
//
//  Created by macOS User on 05/04/21.
//

import SwiftUI

struct DetailHotel: View {
    
    let isiDetail : booking
    
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading){
                Image(isiDetail.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                
                VStack(alignment: .leading){
                    Text(isiDetail.namaHotel)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                    Text(isiDetail.Lokasi)
                        .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                        .fontWeight(.regular)
                    
                    
                    VStack{
                        Text("Rp\(isiDetail.harga)")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(5)
                    }
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                
                    
                    Text(isiDetail.detailHotel)
                        .font(.body)
                }.padding()
            }
        }
    }
}

struct DetailHotel_Previews: PreviewProvider {
    static var previews: some View {
        DetailHotel(isiDetail: booking(id: 0, image: "", namaHotel: "", Lokasi: "", rating: 5, harga: "", detailHotel: "", jarak: ""))
    }
}
