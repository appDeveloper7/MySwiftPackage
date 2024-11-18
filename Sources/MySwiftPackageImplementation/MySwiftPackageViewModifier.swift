//
//  MySwiftPackageViewModifier.swift
//  MySwiftPackage
//
//  Created by Saumil Shah on 18/11/24.
//

import SwiftUI

@available(macOS 10.15, *)
@available(iOS 13, *)
internal struct RoundedBorderModifier: ViewModifier {
    var color: Color = .blue
    var lineWidth: CGFloat = 2
    var cornerRadius: CGFloat = 10
    
    func body(content: Content) -> some View {
        content
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(color, lineWidth: lineWidth)
            )
            .cornerRadius(cornerRadius)
    }
}

@available(macOS 10.15, *)
@available(iOS 13, *)
// Private extension to provide the implementation of the protocol, hidden from users
internal extension View {
    func applyRoundedBorder() -> some View {
        self.modifier(RoundedBorderModifier())
    }
}
