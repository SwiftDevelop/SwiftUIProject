//
//  CalculatorKeypadType.swift
//  SwiftUIProject
//
//  Created by jjp3421 on 9/24/24.
//

import SwiftUI

enum CalculatorKeypadType: Hashable, CustomStringConvertible {
    case number(_ num: Number)
    case operation(_ operation: Operation)
    case negative
    case percent
    case decimal
    case equals
    case allClear
    case clear
    
    var description: String {
        switch self {
        case .number(let num):
            return num.description
        case .operation(let operation):
            return operation.description
        case .negative:
            return "±"
        case .percent:
            return "%"
        case .decimal:
            return "."
        case .equals:
            return "="
        case .allClear:
            return "AC"
        case .clear:
            return "C"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .number, .decimal:
            return .calculatorKeypadColor1
        case .allClear, .clear, .negative, .percent:
            return .calculatorKeypadColor2
        case .operation, .equals:
            return .calculatorKeypadColor3
        }
    }
    
    var isWide: Bool {
        switch self {
        case .number(let num) where num == .zero:
            return true
        default:
            return false
        }
    }
}

enum Number: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}

enum Operation: CaseIterable, CustomStringConvertible {
    case addition, subtraction, multiplication, division
    
    var description: String {
        switch self {
        case .addition:
            return "+"
        case .subtraction:
            return "-"
        case .multiplication:
            return "×"
        case .division:
            return "÷"
        }
    }
}
