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
    let name: String
    let base: String
    let status: ProjectStatus
    let view: AnyView?
}

enum ProjectStatus: String {
    case notStarted = "Not Ready"
    case inProgress = "Progressing"
    case completed = "Completed"
}

let projects: [ProjectInfo] = [
    ProjectInfo(name: "Calculator", base: "Apple", status: .notStarted, view: nil),
]
