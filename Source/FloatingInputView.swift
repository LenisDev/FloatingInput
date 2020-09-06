//
//  FloatingInputView.swift
//  FloatingInput
//
//  Created by Manish on 06/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public class FloatingInputView: BaseView<FloatingInputViewModel> {

    override var intrinsicContentSize: CGSize { CGSize(width: .zero, height: 60) }

    private(set) lazy var titleLbl = UILabel()
    private(set) lazy var textField = UITextField()

    private(set) lazy var rootSV = UIStackView(arrangedSubViews: [self.titleLbl],
                                               spacing: 5,
                                               distribution: .fillProportionally)

    private(set) var viewState = FloatingInputViewState.notEditingUnfocused {
        didSet {
            self.toggleState()
        }
    }

    /// To avoid data setups after internal updates
    private(set) var isInternalUpdate = false

    override func initialize() {
        if !self.isInternalUpdate {
            super.initialize()
        }
    }

    override func setupViews() {
        super.setupViews()

        self.rootSV.sameSize(as: self.rootView, margin: 10.uiEdgeInsets)
        self.rootView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(enableEditingMode)))

        self.setupTextField()
    }

    override func setupData() {
        super.setupData()

        self.titleLbl.text = self.data.title
        self.textField.text = self.data.value

        self.viewState = self.data.value.isEmpty ? .notEditingUnfocused : .editingUnfocused
    }

}

extension FloatingInputView {

    private func setupTextField() {
        self.textField.addTarget(self, action: #selector(textFieldValueDidChange), for: .editingChanged)
        self.textField.delegate = self

        self.setupInputKeypad()
        self.setupInputEditMode()
    }

    private func setupInputKeypad() {

        switch self.data.inputKeypad {
        case .default:
            self.textField.keyboardType = .default
        case .number:
            self.textField.keyboardType = .numberPad
        case .decimal:
            self.textField.keyboardType = .decimalPad
        case .alphabet:
            self.textField.keyboardType = .alphabet
        }

    }

    private func setupInputEditMode() {

        switch self.data.inputMode {
        case .secret:
            self.textField.isSecureTextEntry = true
        default:
            self.textField.isSecureTextEntry = false
        }

    }

    @objc private func enableEditingMode() {
        self.viewState = .editingFocused
    }

    private func toggleState() {

        if self.viewState == .editingFocused || self.viewState == .editingUnfocused {
            self.rootSV.addArrangedSubview(self.textField)
        } else {
            self.rootSV.removeArrangedSubview(self.textField)
        }

        self.titleLbl.font = self.titleLbl.font.withSize(self.viewState.titleSize)
        self.textField.font = self.titleLbl.font.withSize(self.viewState.valueSize)

        if self.viewState == .editingFocused {
            self.textField.becomeFirstResponder()
        }

    }

}

extension FloatingInputView: UITextFieldDelegate {

    @objc private func textFieldValueDidChange() {

        self.isInternalUpdate = true
        defer {
            // reset after every reset
            self.isInternalUpdate = false
        }

        self.data.value = textField.text ?? String()

        print(self.data.value)
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        self.viewState = self.data.value.isEmpty ? .notEditingUnfocused : .editingUnfocused
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textField.resignFirstResponder()

        return true
    }

}
