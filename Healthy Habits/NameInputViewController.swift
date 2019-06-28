//
//  NameInputViewController.swift
//  Healthy Habits
//
//  Created by Apple on 6/27/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class NameInputViewController: UIViewController
{
    var names : [Name] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //\(extrapolate)
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func nextButton(_ sender: Any)
    {
        
    }
    @IBAction func saveButton(_ sender: Any)
    {
       
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            
            let nameToSave = Name(entity: Name.entity(), insertInto: context)
            
            nameToSave.userName = nameTextField.text
            
            }
        
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
        
        navigationController?.popViewController(animated: true)
        }
    func getNames(){
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            if let coreDataNames = try?
                context.fetch(Name.fetchRequest()) as? [Name] {
                
                names = coreDataNames
                
            }
            print("!!!")
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        getNames()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToDetail" {
            if let nameInputView = segue.destination as? homeScreenViewController {
                
                if let nameToPrint = sender as? Name {
                    nameInputView.names = nameToPrint
                }
            }
        }
        
        
    }

    
    
}
