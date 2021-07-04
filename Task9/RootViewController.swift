//
//  RootViewController.swift
//  Task9
//
//  Created by ちいつんしん on 2021/06/22.
//

import UIKit

class RootViewController: UIViewController, UIViewControllerTransitioningDelegate {

    @IBOutlet private weak var label: UILabel!

    @IBAction func didTapInputButton(_ sender: Any) {

        // swiftlint:disable:next force_cast line_length
        let navigationController = storyboard?.instantiateViewController(withIdentifier: "modal") as! UINavigationController
        navigationController.modalPresentationStyle = .custom
        navigationController.transitioningDelegate = self

        // swiftlint:disable:next force_cast
        let modalVC = navigationController.topViewController as! ModalViewController
        modalVC.delegate = self

        present(navigationController, animated: true, completion: nil)
    }
}

extension RootViewController: ModalViewControllerProtocol {
    func didSelectPrefecture(name: String) {
        label.text = name
    }
}
