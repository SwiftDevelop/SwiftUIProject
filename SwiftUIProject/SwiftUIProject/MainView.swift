//
//  MainView.swift
//  SwiftUIProject
//
//  Created by 장주표 on 9/18/24.
//

import SwiftUI

struct MainView: View {
    @State private var isPresented: Bool = false
    @State private var selectedProject: ProjectInfo?
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(projects) { project in
                    Button(action: {
                        selectedProject = project
                        isPresented.toggle()
                    }, label: {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(project.name.rawValue)
                                    .foregroundStyle(.primary)
                                Text("based on \(project.name.based)")
                                    .foregroundStyle(.secondary)
                                    .font(.caption)
                            }
                            Spacer()
                            Text(project.status.rawValue)
                                .foregroundStyle(.secondary)
                                .font(.caption)
                        }
                    })
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Projects")
            .sheet(isPresented: $isPresented) {
                selectedProject?.view
            }
        }
    }
}

#Preview {
    MainView()
}
