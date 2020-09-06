//
//  FloatingInputViewModel.swift
//  FloatingInput
//
//  Created by Manish on 06/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import Foundation

struct FloatingInputViewModel: BaseViewModel {
    var id = UUID()

    var inputKeypad = FloatingInputKeyPad.default
    var inputMode = FloatingInputEditMode.visible

    var title = String()
    var value = String()
}
