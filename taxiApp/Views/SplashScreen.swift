//
//  SplashScreen.swift
//  taxiApp
//
//  Created by Vladut Mihai Poncea on 24.06.2022.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var pageOffset: CGFloat = 0
    
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
            
            Button(action: {
                if self.pageOffset < 2 {
                    self.pageOffset += 1
                }
            }, label: {
                RoundedRectangle(cornerRadius: 26)
                    .fill(Color.orange)
                    .frame(height: UIScreen.main.bounds.height/20)
                    .overlay(Text("Next")
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    )
                    .shadow(color: .orange.opacity(0.5), radius: 10, x: 5, y: 5)
            })
        }
        .frame(width: UIScreen.main.bounds.width/1.2,height: UIScreen.main.bounds.height-100)
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
