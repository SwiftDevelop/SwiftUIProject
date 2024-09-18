//
//  MainView.swift
//  SwiftUIProject
//
//  Created by 장주표 on 9/18/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(projects) { project in
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(project.name)
                                    .foregroundStyle(.primary)
                                Text("based on \(project.base)")
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
        }
    }
}

#Preview {
    MainView()
}
