//
//  ViewController.swift
//  ReusablePopup
//
//  Created by bhavesh on 29/05/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func presentPopup(_ sender: UIButton) {
        presentPopup("Hello", message: "we showed reusable popup", actionName: "OK") {
            print("This is the action")
        }
    }


    func presentPopup(_ title: String = "", message: String = "", actionName: String = "OK", action: (()->Void)?){
        let popup = UIStoryboard.init(name: "Popup", bundle: nil).instantiateViewController(withIdentifier: ReusablePopupViewController.storyboardIdentifier) as! ReusablePopupViewController
        popup.modalPresentationStyle = .overCurrentContext
        popup.modalTransitionStyle = .crossDissolve
        popup.title = title
        popup.message = message
        popup.actionTitle = actionName
        popup.action = action
        self.navigationController?.present(popup, animated: true, completion: nil)
    }
}
