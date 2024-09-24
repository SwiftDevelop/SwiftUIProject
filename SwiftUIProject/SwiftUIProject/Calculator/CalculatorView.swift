//
//  CalculatorView.swift
//  SwiftUIProject
//
//  Created by jjp3421 on 9/24/24.
//

import SwiftUI

struct CalculatorView: View {
    
    var keypadTypes: [[CalculatorKeypadType]] {
        [
            [.allClear, .negative, .percent, .operation(.division)],
            [.number(.seven), .number(.eight), .number(.nine), .operation(.multiplication)],
            [.number(.four), .number(.five), .number(.six), .operation(.subtraction)],
            [.number(.one), .number(.two), .number(.three), .operation(.addition)],
            [.number(.zero), .decimal, .equals]
        ]
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text("0")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .font(.system(size: 88, weight: .light))
                .foregroundStyle(.white)
                .lineLimit(1)
                .minimumScaleFactor(0.2)
                .padding()
            VStack(spacing: 8) {
                ForEach(keypadTypes, id: \.self) { row in
                    HStack(spacing: 8) {
                        ForEach(row, id: \.self) { keypadType in
                            Button(keypadType.description) {
                                
                            }
                            .buttonStyle(
                                CalculatorKeypadButtonStyle(
                                    color: keypadType.backgroundColor,
                                    isWide: keypadType.isWide
                                )
                            )
                        }
                    }
                }
            }
            .padding()
        }
        .background(.black)
    }
}

#Preview {
    CalculatorView()
}
