//
//  Projects.swift
//  SwiftUIProject
//
//  Created by 장주표 on 9/18/24.
//

import Foundation
import SwiftUI

struct ProjectInfo: Identifiable {
    let id = UUID()
    let name: ProjectName
    let status: ProjectStatus
    let view: AnyView?
}

enum ProjectName: String {
    case calculator = "Calculator"
    case none
    
    var based: String {
        switch self {
        case .calculator:
            return "Apple"
        case .none:
            return "Unknown"
        }
    }
}

enum ProjectStatus: String {
    case notStarted = "Not Ready"
    case inProgress = "Progressing"
    case completed = "Completed"
}

let projects: [ProjectInfo] = [
    ProjectInfo(name: .calculator, status: .notStarted, view: AnyView(CalculatorView())),
    ProjectInfo(name: .none, status: .notStarted, view: nil),
]
