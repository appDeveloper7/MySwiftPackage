// The Swift Programming Language
// https://docs.swift.org/swift-book


import SwiftUI

@available(macOS 10.15, *)
@available(iOS 13, *)

// Protocol defining the rounded border functionality
public protocol MySwiftPackage: View {
    var cornerRadius: CGFloat { get }
    var borderColor: Color { get }
    var borderWidth: CGFloat { get }
}

@available(macOS 10.15, *)
@available(iOS 13, *)
// Extension to implement the view modifier for rounding and adding a border
public extension MySwiftPackage {
    func withRoundedBorder() -> some View {
        self.modifier(RoundedBorderViewImpl(cornerRadius: cornerRadius, borderColor: borderColor, borderWidth: borderWidth))
    }
}

@available(macOS 10.15, *)
@available(iOS 13, *)
// Private implementation of the modifier (hidden from users of the package)
private struct RoundedBorderViewImpl: ViewModifier {
    var cornerRadius: CGFloat
    var borderColor: Color
    var borderWidth: CGFloat
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(borderColor, lineWidth: borderWidth)
            )
            .cornerRadius(cornerRadius)
    }
}
