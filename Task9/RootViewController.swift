//
//  RootViewController.swift
//  Task9
//
//  Created by ちいつんしん on 2021/06/22.
//

import UIKit

class RootViewController: UIViewController, UIViewControllerTransitioningDelegate, ModalViewProtocol {

    @IBOutlet private weak var label: UILabel!

    func didSelectPrefecture(value: String) {
        label.text = value
    }

    @IBAction func didTapInputButton(_ sender: Any) {

        let navigationController = storyboard?.instantiateViewController(identifier: "modal") as? UINavigationController
        navigationController?.modalPresentationStyle = .custom
        navigationController?.transitioningDelegate = self
        present(navigationController!, animated: true, completion: nil)

        let modalVC = navigationController?.topViewController as? ModalViewController
        modalVC?.delegate = self

    }

}
