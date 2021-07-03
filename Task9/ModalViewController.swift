//
//  ModalViewController.swift
//  Task9
//
//  Created by ちいつんしん on 2021/06/22.
//

import UIKit

class ModalViewController: UIViewController {

    @IBAction func didTapCancelButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapTokyoButton(_ sender: Any) {
        sendValue(value: "東京都")
    }

    @IBAction func didTapKanagawButton(_ sender: Any) {
        sendValue(value: "神奈川県")
    }

    @IBAction func didTapSaitamaButton(_ sender: Any) {
        sendValue(value: "埼玉県")
    }

    @IBAction func didTapChibaButton(_ sender: Any) {
        sendValue(value: "千葉県")
    }

    private func sendValue(value: String) {

        let preVC = self.presentingViewController as? RootViewController
        preVC?.label.text = value

        self.dismiss(animated: true, completion: nil)
    }

}
