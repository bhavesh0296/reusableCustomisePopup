//
//  ReusablePopupViewController.swift
//  ReusablePopup
//
//  Created by bhavesh on 29/05/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import UIKit

class ReusablePopupViewController: UIViewController {

    //MARK:-IBOutlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!


    //MARK:-static properteis
    static let storyboardIdentifier = "ReusablePopupViewController"

    //MARK:-Member properties
    var popuptitle: String!
    var message: String!
    var actionTitle: String!
    var action: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = popuptitle
        messageLabel.text = message
        actionButton.setTitle(actionTitle, for: .normal)

    }

    @IBAction func actionButtonClicked(_ sender: UIButton) {
        action?()
        self.dismiss(animated: true, completion: nil)
    }

}
