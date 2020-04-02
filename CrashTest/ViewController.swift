//
//  ViewController.swift
//  CrashTest
//
//  Created by Zafar on 4/2/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.view.addSubview(crashingButton)
        
        NSLayoutConstraint.activate([
            crashingButton.centerXAnchor
                .constraint(equalTo: self.view.centerXAnchor),
            crashingButton.centerYAnchor
                .constraint(equalTo: self.view.centerYAnchor),
        ])
    }
    
    @objc func createCrash() {
        fatalError()
    }
    
    let crashingButton: UIButton = {
        let button = UIButton()
        button.setTitle("Crash the app!", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(createCrash), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

}

