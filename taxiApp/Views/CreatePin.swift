//
//  CreatePin.swift
//  taxiApp
//
//  Created by Vladut Mihai Poncea on 24.06.2022.
//

import SwiftUI

struct CreatePin: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var n1: String = ""
    @State var n2: String = ""
    @State var n3: String = ""
    @State var n4: String = ""
    
    enum Field: Int, Hashable {
        case n1, n2, n3, n4
    }
    
    @FocusState var focusedField: Field?
    
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
                
                Text("Add a PIN to make your account secure")
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                
                //pin fields
                HStack {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.gray.opacity(0.5), lineWidth: 2)
                        .frame(width: UIScreen.main.bounds.width/5, height: UIScreen.main.bounds.height/15)
                        .overlay(
                            TextField("", text: $n1)
                                .keyboardType(.numberPad)
                                .focused($focusedField, equals: .n1)
                                .padding()
                                .onChange(of: n1, perform: { newValue in
                                    focusedField = .n2
                                })
                        )
                    
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.gray.opacity(0.5), lineWidth: 2)
                        .frame(width: UIScreen.main.bounds.width/5, height: UIScreen.main.bounds.height/15)
                        .overlay(
                            TextField("", text: $n2)
                                .keyboardType(.numberPad)
                                .focused($focusedField, equals: .n2)
                                .padding()
                                .onChange(of: n2, perform: { newValue in
                                    focusedField = .n3
                                })
                        )
                    
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.gray.opacity(0.5), lineWidth: 2)
                        .frame(width: UIScreen.main.bounds.width/5, height: UIScreen.main.bounds.height/15)
                        .overlay(
                            TextField("", text: $n3)
                                .keyboardType(.numberPad)
                                .focused($focusedField, equals: .n3)
                                .padding()
                                .onChange(of: n3, perform: { newValue in
                                    focusedField = .n4
                                })
                        )
                    
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.gray.opacity(0.5), lineWidth: 2)
                        .frame(width: UIScreen.main.bounds.width/5, height: UIScreen.main.bounds.height/15)
                        .overlay(
                            TextField("", text: $n4)
                                .keyboardType(.numberPad)
                                .focused($focusedField, equals: .n4)
                                .padding()
                                .onChange(of: n4, perform: { newValue in
                                    print(n1+n2+n3+n4)
                                })
                        )
                }
                
                Spacer()
                
                NavigationLink(destination: SetFaceID()
                    .navigationTitle("")
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true), label: {
                        classicButton(text: "Continue", bg: .orange)
                    })
            }
            .frame(width: defaultWidth, height: defaultHeight)
        }
    }
}

struct CreatePin_Previews: PreviewProvider {
    static var previews: some View {
        CreatePin()
    }
}
