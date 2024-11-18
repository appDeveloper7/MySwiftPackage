//
//  MySwiftPackageProtocol.swift
//  MySwiftPackage
//
//  Created by Saumil Shah on 18/11/24.
//

import SwiftUI

@available(macOS 10.15, *)
@available(iOS 13, *)

// Public protocol that defines the interface for applying a rounded border
public protocol RoundedBorderApplicable {
    associatedtype Body: View
    func applyRoundedBorder() -> Body
}
