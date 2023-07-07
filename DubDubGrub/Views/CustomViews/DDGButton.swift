//
//  DDGButton.swift
//  DubDubGrub
//
//  Created by Kvng Eko on 7/7/23.
//

import SwiftUI

struct DDGButton: View {
    var title: String
    var body: some View {
        Text(title)
            .bold()
            .frame(width: 280, height: 44)
            .background(Color.brandPrimary)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct DDGButton_Previews: PreviewProvider {
    static var previews: some View {
        DDGButton(title: "Test Button")
    }
}
