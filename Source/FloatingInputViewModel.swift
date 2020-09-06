//
//  FloatingInputViewModel.swift
//  FloatingInput
//
//  Created by Manish on 06/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import Foundation

public struct FloatingInputViewModel: BaseViewModel {
    public var id = UUID()

    var inputKeypad: FloatingInputKeyPad
    var inputMode: FloatingInputEditMode

    var title = String()
    var value = String()

    public init(title: String = String(),
                value: String = String(),
                inputKeypad: FloatingInputKeyPad = .default,
                inputMode: FloatingInputEditMode = .visible) {
        self.title = title
        self.value = value

        self.inputKeypad = inputKeypad
        self.inputMode = inputMode
        
    }

}
