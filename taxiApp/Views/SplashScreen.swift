//
//  SplashScreen.swift
//  taxiApp
//
//  Created by Vladut Mihai Poncea on 24.06.2022.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var pageOffset: CGFloat = 0
    @State var changeView: Bool = false
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Text("We provide professional taxi services for you")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .frame(width: UIScreen.main.bounds.width)
                
                Text("Your satisfaction is our number one priority")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .frame(width: UIScreen.main.bounds.width)
                
                Text("Let's make your day great right now")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .frame(width: UIScreen.main.bounds.width)

            }
            .animation(.default, value: self.pageOffset)
            .offset(x: -(self.pageOffset * UIScreen.main.bounds.width)+UIScreen.main.bounds.width)
            
            
            HStack {
                Circle()
                    .fill(self.pageOffset == 0 ? .orange : .gray)
                    .frame(width: 10, height: 10)
                
                Circle()
                    .fill(self.pageOffset == 1 ? .orange : .gray)
                    .frame(width: 10, height: 10)
                
                Circle()
                    .fill(self.pageOffset == 2 ? .orange : .gray)
                    .frame(width: 10, height: 10)
            }
            
            NavigationLink(destination:
                            SignIn()
                                .navigationTitle("")
                                .navigationBarHidden(true)
                                .navigationBarBackButtonHidden(true),
                           isActive: $changeView, label: {
                classicButton(text: "Next", bg: .orange)
            })
            .simultaneousGesture(TapGesture().onEnded({
                if self.pageOffset < 2 {
                    self.pageOffset += 1
                } else if self.pageOffset == 2 {
                    self.changeView = true
                }
            }))
        }
        .frame(width: defaultWidth, height: defaultHeight)
        .gesture(DragGesture()
            .onEnded({ value in
                if value.translation.width > 10 {
                    if self.pageOffset > 0 {
                        self.pageOffset -= 1
                    }
                } else if value.translation.width < -10{
                    if self.pageOffset < 2 {
                        pageOffset += 1
                    }
                }
            })
        )
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
