//
//  SignUp.swift
//  taxiApp
//
//  Created by Vladut Mihai Poncea on 24.06.2022.
//

import SwiftUI

struct SignUp: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var emailString: String = ""
    @State var passwordString: String = ""
    
    @State var showPassword: Bool = false
    
    @State var rememberMe: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 50) {
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
                
                HStack {
                    Text("Create your account")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
                VStack(spacing: 20) {
                    VStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.gray.opacity(0.1))
                            .frame(height: UIScreen.main.bounds.height/20)
                            .overlay(HStack(spacing: 10) {
                                Image(systemName: "envelope.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(.gray)
                                
                                TextField("Email", text: $emailString)
                                    .font(.system(size: 14))
                                
                                Spacer()
                            }.padding())
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.gray.opacity(0.1))
                            .frame(height: UIScreen.main.bounds.height/20)
                            .overlay(HStack(spacing: 10) {
                                Image(systemName: "lock.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(.gray)
                                
                                if self.showPassword {
                                    TextField("Password", text: $passwordString)
                                        .font(.system(size: 14))
                                    
                                    Button(action: {
                                        self.showPassword = false
                                    }, label: {
                                        Image(systemName: "eye.fill")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 10, height: 10)
                                            .foregroundColor(.gray)
                                    })
                                } else {
                                    SecureField("Password", text: $passwordString)
                                        .font(.system(size: 14))
                                    
                                    Button(action: {
                                        self.showPassword = true
                                    }, label: {
                                        Image(systemName: "eye.slash.fill")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 10, height: 10)
                                            .foregroundColor(.gray)
                                    })
                                }
                            }.padding())
                            .animation(.linear(duration: 0.1), value: self.showPassword)
                    }
                    
                    Button(action: {
                        self.rememberMe.toggle()
                    }, label: {
                        HStack(spacing: 10) {
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(.orange, lineWidth: 2)
                                .frame(width: 20, height: 20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 4)
                                        .fill(.black)
                                        .frame(width: 15, height: 15)
                                        .opacity(self.rememberMe ? 1 : 0)
                                )
                            
                            Text("Remember me")
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                        }
                    })
                    .animation(.default, value: self.rememberMe)
                    
                    classicButton(text: "Sign Up", bg: .orange)
                    
                    
                }
                
                VStack(spacing: 20) {
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
                    
                    HStack(spacing: 20) {
                        Button(action: {}, label: {
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.gray.opacity(0.5))
                                .frame(width: UIScreen.main.bounds.width/5, height: UIScreen.main.bounds.height/15)
                                .overlay(
                                    Image("facebook")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 20, height: 20)
                                )
                        })
                        
                        Button(action: {}, label: {
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.gray.opacity(0.5))
                                .frame(width: UIScreen.main.bounds.width/5, height: UIScreen.main.bounds.height/15)
                                .overlay(
                                    Image("google")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 20, height: 20)
                                )
                        })
                        
                        Button(action: {}, label: {
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.gray.opacity(0.5))
                                .frame(width: UIScreen.main.bounds.width/5, height: UIScreen.main.bounds.height/15)
                                .overlay(
                                    Image("apple")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 20, height: 20)
                                )
                        })
                    }
                }
                
                HStack {
                    Text("Already have an account?")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .foregroundColor(.gray.opacity(0.5))
                    
                    NavigationLink(destination:
                                    SignIn()
                                        .navigationTitle("")
                                        .navigationBarHidden(true)
                                        .navigationBarBackButtonHidden(true),
                                   label: {
                            Text("Sign in")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(.orange)
                        })
                }
            }
            .frame(width: defaultWidth, height: defaultHeight)
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
