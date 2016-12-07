//
//  ViewController.swift
//  DTSIncidentExample7Dec2016
//
//  Created by Daniel Loewenherz on 12/7/16.
//  Copyright © 2016 Lionheart Software LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!

    @IBAction func button1DidTouchUpInside(sender: Any) {
        let alert = UIAlertController(title: "Loading...", message: "Please wait while we enable the second button.", preferredStyle: .alert)
        present(alert, animated: true, completion: nil)

        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.button1.isEnabled = false
            self.button2.isEnabled = true

            alert.dismiss(animated: true, completion: nil)
        }
    }

    @IBAction func button2DidTouchUpInside(sender: Any) {
        let alert = UIAlertController(title: "Success!", message: "Here is a cookie. 🍪", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK...", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

