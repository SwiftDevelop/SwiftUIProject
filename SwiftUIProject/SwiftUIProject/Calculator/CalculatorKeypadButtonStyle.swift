//
//  CalculatorKeypadButtonStyle.swift
//  SwiftUIProject
//
//  Created by jjp3421 on 9/24/24.
//

import SwiftUI

struct CalculatorKeypadButtonStyle: ButtonStyle {
    private var size: CGFloat {
        (UIScreen.main.bounds.width - (8 * 5)) / 4
    }
    var color: Color
    var isWide: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 32, weight: .medium))
            .frame(width: size * (isWide ? 2 : 1), height: size)
            .background(color)
            .foregroundStyle(.white)
            .overlay {
                if configuration.isPressed {
                    Color(white: 1.0, opacity: 0.2)
                }
            }
            .clipShape(Capsule())
    }
}
