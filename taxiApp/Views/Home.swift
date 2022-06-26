//
//  Home.swift
//  taxiApp
//
//  Created by Vladut Mihai Poncea on 25.06.2022.
//

import SwiftUI
import Combine

struct Home: View {
    
    @State var showPopUp: Bool = false
    
    var body: some View {
        ZStack {
            ZStack {
                
                GoogleMapsView()
                    .ignoresSafeArea()
                
                VStack {
                    HStack(spacing: 10) {
                        Spacer()
                        
                        Button(action: {}, label: {
                            Circle()
                                .fill(.orange.opacity(0.5))
                                .frame(width: 50, height: 50)
                                .overlay(
                                    Image(systemName: "magnifyingglass")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 20, height: 20)
                                )
                                .foregroundColor(.black.opacity(0.5))
                        })
                        
                        Button(action: {}, label: {
                            Circle()
                                .fill(.orange.opacity(0.5))
                                .frame(width: 50, height: 50)
                                .overlay(
                                    Image(systemName: "bell.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 20, height: 20)
                                )
                                .foregroundColor(.black.opacity(0.5))
                        })
                        
                        Button(action: {}, label: {
                            Circle()
                                .fill(.orange.opacity(0.5))
                                .frame(width: 50, height: 50)
                                .overlay(
                                    Image(systemName: "percent")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 20, height: 20)
                                )
                                .foregroundColor(.black.opacity(0.5))
                        })
                    }
                    
                    Spacer()
                }
                .frame(width: defaultWidth, height: defaultHeight)
            }
            .opacity(showPopUp ? 0.5 : 1)
            
            RoundedRectangle(cornerRadius: 16)
                .fill(.white)
                .frame(width: UIScreen.main.bounds.width-100, height: UIScreen.main.bounds.height-400)
                .overlay(
                    VStack(spacing: 20) {
                        Spacer()
                        
                        VStack(spacing: 5) {
                            Text("Enable Location")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            Text("We need access to your location to be able to use this service")
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.center)
                        }
                        
                        VStack(spacing: 10) {
                            Button(action: {
                                self.showPopUp = false
                            }, label: {
                                RoundedRectangle(cornerRadius: 26)
                                    .fill(.orange)
                                    .frame(width: (UIScreen.main.bounds.width-100)/1.3, height: UIScreen.main.bounds.height/20)
                                    .overlay(
                                        Text("Continue")
                                            .font(.system(size: 14))
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                    )
                            })
                            
                            Button(action: {
                                self.showPopUp = false
                            }, label: {
                                RoundedRectangle(cornerRadius: 26)
                                    .fill(.orange.opacity(0.1))
                                    .frame(width: (UIScreen.main.bounds.width-100)/1.3, height: UIScreen.main.bounds.height/20)
                                    .overlay(
                                        Text("Not now")
                                            .font(.system(size: 14))
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                    )
                            })
                        }
                        
                    }
                        .padding()
                )
                .opacity(showPopUp ? 1 : 0)
                .disabled(showPopUp ? false : true)
        }
        .animation(.default, value: self.showPopUp)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
