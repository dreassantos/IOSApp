//
//  ViewController.swift
//  IOSApp
//
//  Created by Andrea on 1/26/19.
//  Copyright © 2019 AndreaKayla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var submitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func submitButton(_ sender: Any) {
        let vc = self.storyboard!.instantiateViewController(withIdentifier: "resultViewController")
        self.present(vc, animated: true, completion: nil)
        self.show(vc, sender: self)
    }
}
    


