//
//  RectStyle.swift
//  FloatingInput
//
//  Created by Manish on 06/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

struct RectStyle: Stylable {

    var bgColor: UIColor { .clear }

    var tintColor: UIColor { .clear }

    var border: Border { Border(color: .gray, width: 1, edges: [.bottom]) }

    var radius: Radius { Radius(size: 5, corners: [.allCorners]) }

}
