//
//  View+Ext.swift
//  DubDubGrub
//
//  Created by Kvng Eko on 7/7/23.
//

import SwiftUI

extension View {
    func profileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
}
