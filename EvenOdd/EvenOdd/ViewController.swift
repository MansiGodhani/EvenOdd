//
//  ViewController.swift
//  EvenOdd
//
//  Created by DCS on 14/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let myButton:UIButton = {
       let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.addTarget(self, action: #selector(handleEvent), for: .touchUpInside)
        btn.backgroundColor = UIColor.blue
        btn.layer.cornerRadius=5
        return btn
    }()
    
    @objc private func handleEvent() {
        print("received..")
        
        let vc = checkVC()
        navigationController?.pushViewController(vc, animated: true)
        
    } 
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myButton.frame = CGRect(x: 40, y: (view.height / 2) - 30, width: view.width - 80, height: 60)
    }

}

