// The Swift Programming Language
// https://docs.swift.org/swift-book


import SwiftUI

@available(macOS 10.15, *)
extension View {
    public func addRoundedBorder() -> some View {
        self
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray, lineWidth: 2)
            )
    }
}
