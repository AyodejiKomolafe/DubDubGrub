//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Kvng Eko on 6/14/23.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) { item in
                    HStack {
                        Image("default-square-asset")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .padding(.vertical, 8)
                        
                        VStack(alignment: .leading) {
                            Text("Test Location Name")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                            HStack {
                                AvatarView(size: 35)
                                AvatarView(size: 35)
                                AvatarView(size: 35)
                                AvatarView(size: 35)
                                AvatarView(size: 35)
                            }
                        }
                        .padding(.leading)
                    }
                }
            }
            .navigationTitle("Grub Spots")
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}

struct AvatarView: View {
    var size: CGFloat
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}
