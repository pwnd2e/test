//
//  DoubleExtensions.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 8/6/16.
//  Copyright © 2016 SwifterSwift
//

#if canImport(CoreGraphics)
    import CoreGraphics
#endif

#if os(macOS) || os(iOS)
    import Darwin
#elseif os(Linux)
    import Glibc
#endif

// MARK: - Properties

public extension Double {
    /// SwifterSwift: Int.
    var int: Int {
        Int(self)
    }

    /// SwifterSwift: Float.
    var float: Float {
        Float(self)
    }

    #if canImport(CoreGraphics)
        /// SwifterSwift: CGFloat.
        var cgFloat: CGFloat {
            CGFloat(self)
        }
    #endif
}

// MARK: - Operators

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator **: PowerPrecedence
/// SwifterSwift: Value of exponentiation.
///
/// - Parameters:
///   - lhs: base double.
///   - rhs: exponent double.
/// - Returns: exponentiation result (example: 4.4 ** 0.5 = 2.0976176963).
func ** (lhs: Double, rhs: Double) -> Double {
    // http://nshipster.com/swift-operators/
    pow(lhs, rhs)
}

// swiftlint:disable identifier_name
prefix operator √
/// SwifterSwift: Square root of double.
///
/// - Parameter double: double value to find square root for.
/// - Returns: square root of given double.
public prefix func √ (double: Double) -> Double {
    // http://nshipster.com/swift-operators/
    sqrt(double)
}

// swiftlint:enable identifier_name
