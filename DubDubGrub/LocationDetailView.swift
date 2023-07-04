//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Kvng Eko on 6/14/23.
//

import SwiftUI

struct LocationDetailView: View {
    var body: some View {
        NavigationView {
            VStack(spacing:16){
                Image("default-banner-asset")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 120)
                HStack{
                    Label("123 main st", systemImage: "mappin.and.ellipse")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Spacer()
                }
                .padding(.horizontal)
                Text("This is a test Description. This is a test Description. This is a test Description.")
                    .lineLimit(3)
                    .minimumScaleFactor(0.75)
                    .padding(.horizontal)
                ZStack {
                    Capsule()
                        .frame(height: 80)
                        .foregroundColor(Color(.secondarySystemBackground))
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationTitle("Location Name")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView()
    }
}
