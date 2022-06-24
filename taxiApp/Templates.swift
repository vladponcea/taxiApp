//
//  Templates.swift
//  taxiApp
//
//  Created by Vladut Mihai Poncea on 24.06.2022.
//

import Foundation
import SwiftUI

func classicButton(text: String, bg: Color) -> some View {
    RoundedRectangle(cornerRadius: 26)
        .fill(bg)
        .frame(height: UIScreen.main.bounds.height/20)
        .overlay(Text(text)
            .font(.system(size: 16))
            .fontWeight(.semibold)
            .foregroundColor(.black)
        )
        .shadow(color: bg.opacity(0.5), radius: 10, x: 5, y: 5)
}
