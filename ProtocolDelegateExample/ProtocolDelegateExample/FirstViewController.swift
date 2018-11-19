//
//  ViewController.swift
//  ProtocolDelegateExample
//
//  Created by Work on 11/15/18.
//  Copyright © 2018 neilmrva. All rights reserved.
//

import UIKit

fileprivate enum Segues:String
{
    case segueToSecondViewController
}

class FirstViewController: UIViewController
{
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!

    @IBAction func onPassTextForward(_ sender: UIButton)
    {
        performSegue(withIdentifier: Segues.segueToSecondViewController.rawValue, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == Segues.segueToSecondViewController.rawValue
        {
            let secondViewController = segue.destination as! SecondViewController
            secondViewController.passedText = textField.text
            
            secondViewController.delegate = self
        }
    }
}

extension FirstViewController: CanReceiveText
{
    func textReceived(textValue: String)
    {
        label.text = textValue
    }
}
