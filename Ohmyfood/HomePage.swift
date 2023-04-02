//
//  ContentView.swift
//  Ohmyfood
//
//  Created by Bilal Dallali on 02/04/2023.
//

import SwiftUI
// 40 en haut et 57 en bas
struct HomePage: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    VStack(spacing: 0) {
                        Image("logo")
                            .padding(.top, 47)
                            .padding(.bottom, 13)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .shadow(color: Color.black.opacity(0.15), radius: 4, x: 0, y: 2)
                        Spacer()
                        HStack(spacing: 17) {
                            Image("localisation-icon")
                            Text("Paris, Belleville")
                                .font(.custom("Roboto-Medium", size: 16))
                        }
                        .padding(.bottom, 15.5)
                    }
                    .frame(height: 146)
                    .frame(maxWidth: .infinity)
                    .background(Color("Grey-2"))
                    
                    VStack(spacing: 27) {
                        VStack(spacing: 0) {
                            Text("Réservez le menu qui\nvous convient")
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .font(.custom("Roboto-Bold", size: 24))
                                .frame(height: 68)
                                .padding(.top, 40)
                            Text("Découvrez des restaurants d’exception, sélectionnés par nos soins.")
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("Font-Color-2"))
                                .font(.custom("Roboto-Light", size: 18))
                        }
                        Button {
                            //
                        } label: {
                            Text("Explorer nos restaurants")
                                .foregroundColor(.white)
                                .font(.custom("Roboto-Medium", size: 16))
                                .frame(width: 218, height: 50)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [Color(red: 0.576, green: 0.337, blue: 0.863, opacity: 1), Color(red: 1, green: 0.475, blue: 0.853)]), startPoint: .bottom, endPoint: .top)
                                )
                                .cornerRadius(.infinity)
                                .shadow(color: Color.black.opacity(0.25), radius: 10, x: 0, y: 4)
                        }
                        .padding(.bottom, 57)
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color("Background"))
                }
                
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
