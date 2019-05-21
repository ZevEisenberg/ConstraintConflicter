//
//  ViewController.swift
//  ConstraintConflicter
//
//  Created by Zev Eisenberg on 5/12/19.
//  Copyright © 2019 Zev Eisenberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let myView = UIView()
        // Setting the accessibilityIdentifier will give this
        // view a label in Auto Layout debug output.
        myView.accessibilityIdentifier = "My cool view"

        view.addSubview(myView)
        myView.translatesAutoresizingMaskIntoConstraints = false

        #warning("These two constraints will conflict")
        myView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        myView.widthAnchor.constraint(equalToConstant: 40).isActive = true

        myView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50)
        myView.heightAnchor.constraint(equalToConstant: 40)
    }

}
