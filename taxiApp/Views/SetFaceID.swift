//
//  SetFaceID.swift
//  taxiApp
//
//  Created by Vladut Mihai Poncea on 25.06.2022.
//

import SwiftUI

struct SetFaceID: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var showPopup: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 50) {
                HStack(spacing: 20) {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 10, height: 10)
                    
                    Text("Create a PIN")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                
                Spacer()
                
                Text("Add your FaceID to make your account more secure")
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
                Image(systemName: "faceid")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.orange)
                
                Spacer()
                
                HStack {
                    NavigationLink(destination: Home()
                        .navigationTitle("")
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true), label: {
                        RoundedRectangle(cornerRadius: 32)
                            .fill(.orange.opacity(0.2))
                            .frame(width: defaultWidth/2, height: UIScreen.main.bounds.height/20)
                            .shadow(color: .orange.opacity(0.1), radius: 10, x: 5, y: 5)
                            .overlay(
                                Text("Skip")
                                    .font(.system(size: 16))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            )
                    })
                    
                    NavigationLink(destination: Home()
                        .navigationTitle("")
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true), label: {
                        RoundedRectangle(cornerRadius: 32)
                            .fill(.orange)
                            .frame(width: defaultWidth/2, height: UIScreen.main.bounds.height/20)
                            .shadow(color: .orange.opacity(0.5), radius: 10, x: 5, y: 5)
                            .overlay(
                                Text("Continue")
                                    .font(.system(size: 16))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            )
                    })
                }
            }
            .frame(width: defaultWidth, height: defaultHeight)
        }
    }
}

struct SetFaceID_Previews: PreviewProvider {
    static var previews: some View {
        SetFaceID()
    }
}
