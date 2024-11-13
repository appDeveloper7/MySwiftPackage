// The Swift Programming Language
// https://docs.swift.org/swift-book


import SwiftUI

@available(macOS 10.15, *)
@available(iOS 13, *)
extension View {
    public func addRoundedBorder() -> some View {
        self
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray, lineWidth: 2)
            )
    }
}
