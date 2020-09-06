//
//  ViewController.swift
//  FloatingInputExamples
//
//  Created by Manish on 06/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit
import FloatingInput

class ViewController: UIViewController {

    let floatingInput = FloatingInputView(data: FloatingInputViewModel(title: "Enter text"))


    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white

        self.view.addSubview(floatingInput)
        self.floatingInput.frame = CGRect(x: 0,
                                          y: 50,
                                          width: self.view.bounds.width,
                                          height: 60)

        // customize
        self.floatingInput.style(RectStyle())
    }


}

