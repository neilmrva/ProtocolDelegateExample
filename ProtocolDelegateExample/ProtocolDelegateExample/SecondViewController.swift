//
//  SecondViewController.swift
//  ProtocolDelegateExample
//
//  Created by Work on 11/15/18.
//  Copyright © 2018 neilmrva. All rights reserved.
//

import UIKit

protocol ReceiveText
{
    func textReceived(textValue:String)
}

class SecondViewController: UIViewController
{
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    internal var passedText:String?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = passedText
    }
    
    @IBAction func onPassTextBack(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
    

}
