//
//  ProfileApp.swift
//  WisataApp
//
//  Created by KhalishTianto User on 06/04/21.
//

import SwiftUI

struct ProfileApp: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                
                foto()
                    .tabItem{
                        Image(systemName: "person.circle.fill")
                        Text("profile")
                        
                    }
            }
        }
    }
}

struct ProfileApp_Previews: PreviewProvider {
    static var previews: some View {
        ProfileApp()
            .preferredColorScheme(.dark)
    }
}

struct foto: View {
    var body: some View {
        
        NavigationView{
            ScrollView{
                VStack {
                    
                    HStack {
                        Spacer()
                        
                        ZStack{
                            Rectangle()
                                .fill(Color(#colorLiteral(red: 0.1334168911, green: 0.1294066608, blue: 0.1293440461, alpha: 1)))
                                .frame(width: 400, height: 400)
                                .cornerRadius(60)
                            VStack {
                                Image("profile")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipShape(Circle())
                                    .clipped()
                                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                    .padding(.top, 44)
                                
                                Text("khalish Tianto wiriadinata")
                                    .font(.system(size: 20))
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding(.top, 12)
                                
                                Text("X - RPL C")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(.top, 4)
                                
                                Text("khalishtianto@gmail.com")
                                    .font(.system(size: 16))
                                    .foregroundColor(.white)
                                    .padding(.top, 4)
                            }
                        }
                        Spacer()
                    }
                    Spacer()
                }
                .edgesIgnoringSafeArea(.all)
                .navigationBarTitle("Profile")
                
            }
        }
    }
}




