//
//  RootViewController.swift
//  Task9
//
//  Created by ちいつんしん on 2021/06/22.
//

import UIKit

class RootViewController: UIViewController, UIViewControllerTransitioningDelegate {

    @IBOutlet weak var label: UILabel!

        override func viewDidLoad() {
            super.viewDidLoad()
        }

    @IBAction func didTapInputButton(_ sender: Any) {

        let modalVC = self.storyboard?.instantiateViewController(withIdentifier: "modal")
        modalVC!.modalPresentationStyle = .custom
        modalVC!.transitioningDelegate = self
        present(modalVC!, animated: true, completion: nil)

    }

}
