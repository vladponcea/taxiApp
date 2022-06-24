//
//  SignIn.swift
//  taxiApp
//
//  Created by Vladut Mihai Poncea on 24.06.2022.
//

import SwiftUI

struct SignIn: View {
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .frame(width: 10, height: 10)
                            .foregroundColor(.black)
                    })
                    
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Text("Let's get you in")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
                VStack(spacing: 10) {
                    Button(action: {}, label: {
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.gray.opacity(0.5))
                            .frame(height: UIScreen.main.bounds.height/20)
                            .overlay(HStack {
                                Image("facebook")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 20, height: 20)
                                
                                Text("Continue with Facebook")
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
                            })
                    })
                    
                    Button(action: {}, label: {
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.gray.opacity(0.5))
                            .frame(height: UIScreen.main.bounds.height/20)
                            .overlay(HStack {
                                Image("google")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 20, height: 20)
                                
                                Text("Continue with Google")
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
                            })
                    })
                    
                    Button(action: {}, label: {
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.gray.opacity(0.5))
                            .frame(height: UIScreen.main.bounds.height/20)
                            .overlay(HStack {
                                Image("apple")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 20, height: 20)
                                
                                Text("Continue with Apple")
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
                            })
                    })
                }
                
                HStack {
                    Rectangle()
                        .fill(.gray.opacity(0.5))
                        .frame(height: 1)
                    
                    Text("OR")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .foregroundColor(.gray.opacity(0.5))
                    
                    Rectangle()
                        .fill(.gray.opacity(0.5))
                        .frame(height: 1)
                }
                .padding(.top, 20)
                .padding(.bottom, 20)
                
                Button(action: {
                    
                }, label: {
                    classicButton(text: "Sign in with password", bg: .orange)
                })
                
                HStack {
                    Text("Don't have an account?")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .foregroundColor(.gray.opacity(0.5))
                    
                    NavigationLink(destination:
                                    SignUp()
                                        .navigationTitle("")
                                        .navigationBarHidden(true)
                                        .navigationBarBackButtonHidden(true),
                                   label: {
                            Text("Sign up")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(.orange)
                        })
                }
                .padding(.top, 20)
                .padding(.bottom, 20)
            }
            .frame(width: defaultWidth, height: defaultHeight)
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
