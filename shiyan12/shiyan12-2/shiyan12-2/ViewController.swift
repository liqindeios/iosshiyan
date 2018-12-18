//
//  ViewController.swift
//  shiyan12-2
//
//  Created by student on 2018/12/13.
//  Copyright © 2018年 liqin. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfSex: UITextField!
    @IBOutlet weak var tfAge: UITextField!
    @IBOutlet weak var tfPhone: UITextField!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print(NSHomeDirectory())
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func addClick(_ sender: Any) {
        let person = Person(context:context)
        person.name = tfName.text
        person.sex = tfSex.text
        person.age = tfAge.text
        person.phone = tfPhone.text
        
        appDelegate.saveContext()
    }
    
    @IBAction func update(_ sender: Any) {
        
        let fetch:NSFetchRequest<Person> = Person.fetchRequest()
        
        fetch.predicate = NSPredicate(format: "name=%@", tfName.text!)
        let persons = try? context.fetch(fetch)
        if let p = persons?.first {
             p.phone = tfPhone.text
             p.sex = tfSex.text
             p.age = tfAge.text
            
        }
    }
    
    @IBAction func deleteClick(_ sender: Any) {
        
        let fetch:NSFetchRequest<Person> = Person.fetchRequest()
        
        fetch.predicate = NSPredicate(format: "name=%@", tfName.text!)
        let persons = try? context.fetch(fetch)
        if let p = persons?.first {
            context.delete(p)
            
        }
    }
   
    @IBAction func queryClick(_ sender: Any) {
        
        let fetch:NSFetchRequest<Person> = Person.fetchRequest()
        
        fetch.predicate = NSPredicate(format: "name=%@", tfName.text!)
        let persons = try? context.fetch(fetch)
        if let p = persons?.first {
            tfPhone.text = p.phone
            tfSex.text = p.sex
            tfAge.text = p.age
        }
    }
}

