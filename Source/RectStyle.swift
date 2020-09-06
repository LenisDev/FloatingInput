//
//  RectStyle.swift
//  FloatingInput
//
//  Created by Manish on 06/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public struct RectStyle: Stylable {

    public var bgColor: UIColor { .clear }

    public var tintColor: UIColor { .clear }

    public var border: Border { Border(color: .gray, width: 1, edges: [.bottom]) }

    public var radius: Radius { Radius(size: 5, corners: [.allCorners]) }

    public init() { }

}
