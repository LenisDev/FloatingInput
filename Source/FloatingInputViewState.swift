//
//  FloatingInputViewState.swift
//  FloatingInput
//
//  Created by Manish on 06/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

enum FloatingInputViewState {
    case editingUnfocused
    case editingFocused
    case notEditingUnfocused

    var titleSize: CGFloat {
        switch self {
        case .editingUnfocused, .editingFocused:
            return 12
        default:
            return 15
        }
    }

    var valueSize: CGFloat {
        switch self {
        case .editingUnfocused, .editingFocused:
            return 15
        default:
            return 0
        }
    }

}
