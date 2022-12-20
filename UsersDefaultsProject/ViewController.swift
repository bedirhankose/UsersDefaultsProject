//
//  ViewController.swift
//  UsersDefaultsProject
//
//  Created by Bedirhan Köse on 20.12.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NoteTextField: UITextField!
    @IBOutlet weak var TimeTextField: UITextField!
    
    @IBOutlet weak var NoteLabel: UILabel!
    @IBOutlet weak var TimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let savedNote = UserDefaults.standard.object(forKey: "Note")
        let savedTime = UserDefaults.standard.object(forKey: "Time")
        
        // as -> casting
        if let addedNote = savedNote as? String {
            NoteLabel.text = "Work to do: \(addedNote)"
        }
        
        if let addedTime = savedTime as? String {
            TimeLabel.text = "When to do: \(addedTime)"
        }
        
    }

    @IBAction func SaveButton(_ sender: Any) {
        
        UserDefaults.standard.set(NoteTextField.text!, forKey: "Note")
        UserDefaults.standard.set(TimeTextField.text!, forKey: "Time")
        
        NoteLabel.text = "Work to do: \(NoteTextField.text!)"
        TimeLabel.text = "When to do: \(TimeTextField.text!)"
    }
    @IBAction func DeleteButton(_ sender: Any) {
    }
    
}

