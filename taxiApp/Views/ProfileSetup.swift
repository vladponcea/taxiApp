//
//  ProfileSetup.swift
//  taxiApp
//
//  Created by Vladut Mihai Poncea on 24.06.2022.
//

import SwiftUI

struct ProfileSetup: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var fullnameString: String = ""
    @State var emailString: String = ""
    @State var dateofbirthString: String = ""
    @State var phonenumberString: String = ""
    @State var genderString: String = ""
    
    var body: some View {
        ZStack {
            VStack(spacing: 50) {
                HStack(spacing: 20) {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 10, height: 10)
                    
                    Text("Fill your information")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.gray.opacity(0.2))
                    .overlay(alignment: .bottomTrailing, content: {
                        Button(action: {}, label: {
                            RoundedRectangle(cornerRadius: 4)
                                .fill(.orange)
                                .frame(width: 25, height: 25)
                                .overlay(
                                    Image(systemName: "square.and.arrow.up.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 15, height: 15)
                                        .foregroundColor(.white)
                                )
                        })
                    })
                
                Spacer()
                
                VStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.gray.opacity(0.1))
                        .frame(height: UIScreen.main.bounds.height/20)
                        .overlay(
                            TextField("Full Name", text: $fullnameString)
                                .font(.system(size: 14))
                                .padding()
                        )
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.gray.opacity(0.1))
                        .frame(height: UIScreen.main.bounds.height/20)
                        .overlay(
                            TextField("Date of birth", text: $dateofbirthString)
                                .font(.system(size: 14))
                                .padding()
                        )
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.gray.opacity(0.1))
                        .frame(height: UIScreen.main.bounds.height/20)
                        .overlay(
                            TextField("Email", text: $emailString)
                                .font(.system(size: 14))
                                .padding()
                        )
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.gray.opacity(0.1))
                        .frame(height: UIScreen.main.bounds.height/20)
                        .overlay(
                            TextField("Phone Number", text: $phonenumberString)
                                .font(.system(size: 14))
                                .padding()
                        )
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.gray.opacity(0.1))
                        .frame(height: UIScreen.main.bounds.height/20)
                        .overlay(
                            TextField("Gender", text: $genderString)
                                .font(.system(size: 14))
                                .padding()
                        )
                }
                
                Spacer()
                
                NavigationLink(destination: CreatePin()
                    .navigationTitle("")
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true),
                               label: {
                    classicButton(text: "Continue", bg: .orange)
                })
            }
            .frame(width: defaultWidth, height: defaultHeight)
        }
    }
}

struct ProfileSetup_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSetup()
    }
}
