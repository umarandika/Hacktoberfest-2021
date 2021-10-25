//
//  HomeApp.swift
//  WisataApp
//
//  Created by KhalishTianto User on 06/04/21.
//

import SwiftUI

struct HomeApp: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                foto()
                    .tabItem{
                        Image(systemName: "person.circle.fill")
                        Text("Profile")
                    }
            }
        }
    }
}

struct HomeApp_Previews: PreviewProvider {
    static var previews: some View {
        HomeApp()
            .preferredColorScheme(.dark)
    }
}

struct Home: View {
    
    @State var FindDestination: String = ""
    @State var ro: String = ""
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                VStack{
                    Text("Indonesia")
                        .font(.title)
                        .fontWeight(.semibold)

                    
                    HStack{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 100)
                                .fill(Color(#colorLiteral(red: 0.1334168911, green: 0.1294066608, blue: 0.1293440461, alpha: 1)))
                                .frame(width: 200, height: 50)
                            
                            TextField("Find Destination", text: $FindDestination)
                                .foregroundColor(.white)
                                .font(.system(size: 15))
                                .padding()
                            
                            ZStack(alignment: .trailing){
                                Circle()
                                    .fill(Color(#colorLiteral(red: 0.2394816875, green: 0.7692574859, blue: 0.9902411103, alpha: 1)))
                                    .padding(.leading, 150)
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding()
                                    .foregroundColor(.white)
                            }
                        }
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 100)
                                .fill(Color(#colorLiteral(red: 0.1334168911, green: 0.1294066608, blue: 0.1293440461, alpha: 1)))
                                .frame(width: 120, height: 50)
                            
                            TextField("Maps", text: $ro)
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .padding(.leading, 25)
                            
                            ZStack(alignment: .trailing){
                                Circle()
                                    .fill(Color(#colorLiteral(red: 0.2394816875, green: 0.7692574859, blue: 0.9902411103, alpha: 1)))
                                    .padding(.leading, 80)
                                Image(systemName: "map.fill")
                                    .frame(width: 25, height: 20)
                                    .padding()
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    
                    ScrollView(.horizontal){
                        
                        HStack{
                            ForEach(Data){ data in
                                NavigationLink(destination: DetailApp(detailwisata: data )){
                                    ZStack (alignment : .leading){
                                        Image(data.image)
                                            .resizable()
                                            .frame(width: 211, height: 130)
                                            .cornerRadius(10)
                                        
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 50)
                                                .fill(Color(#colorLiteral(red: 0.2394816875, green: 0.7692574859, blue: 0.9902411103, alpha: 1)))
                                                .frame(width: 50, height: 30)
                                            Text("GO")
                                                .fontWeight(.semibold)
                                                .foregroundColor(.white)
                                                .font(.system(size: 12))
                                            
                                        }.padding(.bottom, 130)
                                        .padding(.leading, 150)
                                        
                                        Rectangle()
                                            .fill(Color(#colorLiteral(red: 0.1334168911, green: 0.1294066608, blue: 0.1293440461, alpha: 1)))
                                            .frame(width: 211, height: 40)
                                            .padding(.top, 130)
                                            .cornerRadius(10)
                                        
                                        VStack (alignment: .leading){
                                            Text(data.namawisata)
                                                .font(.system(size: 13))
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                            Text(data.namatempat)
                                                .font(.system(size: 10))
                                                .fontWeight(.regular)
                                                .foregroundColor(.white)
                                            
                                        }.padding(.top, 127)
                                        .padding(.leading, 10)
                                        
                                        ZStack{
                                            VStack(alignment: .leading){
                                                HStack(spacing : 2){
                                                    ForEach(0..<data.rating) { index in
                                                        Image(systemName: "star.fill")
                                                            .foregroundColor(.orange)
                                                            .font(.system(size: 6))
                                                        
                                                    }
                                                }
                                                
                                                Text(data.jarak)
                                                    .font(.system(size: 12))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color.white)
                                                
                                            }
                                        }.padding(.top, 135)
                                        .padding(.leading, 150)
                                        
                                    }
                                    
                                }.padding(.top, 12)
                            }
                        }
                    }
                    
                    Text("Recommended For You")
                        .bold()
                        .font(.system(size: 20))
                        .padding(.top, 11)
                    
                    VStack (spacing: 20){
                        ForEach(Data){ data in
                            
                            NavigationLink(destination: DetailApp(detailwisata: data )){
                                
                                ZStack(alignment: .leading){
                                    Rectangle()
                                        .fill(Color(#colorLiteral(red: 0.1334168911, green: 0.1294066608, blue: 0.1293440461, alpha: 1)))
                                        .frame(width: 340, height: 85)
                                        .cornerRadius(10)
                                        .padding(.leading, 5)
                                    
                                    Image(systemName: "chevron.right.circle.fill")
                                        .foregroundColor(Color.white)
                                        .padding(.leading, 300)
                                    
                                    VStack{
                                        HStack(){
                                            Image(data.image)
                                                .resizable()
                                                .frame(width: 60, height: 60)
                                                .cornerRadius(10)
                                            
                                            VStack(alignment: .leading){
                                                Text(data.namawisata)
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(.white)
                                                Text(data.namatempat)
                                                    .font(.system(size: 10))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(.white)
                                            }
                                        }
                                    }.padding(.leading,20)
                                }
                            }
                        }
                    }
                }
            }
            
            .navigationBarTitle(Text("Find Your Destinasi"))
            .navigationBarItems(leading: Image(systemName: "rectangle.3.offgrid.fill").font(.system(size: 25)),
                                trailing:
                                    HStack{
                                        Image("profile")
                                            .resizable()
                                            .frame(width: 50, height: 40)
                                            .clipShape(Circle())
                                    }
            )
        }.padding()
    }
}

