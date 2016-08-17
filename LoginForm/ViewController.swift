//
//  ViewController.swift
//  LoginForm
//
//  Created by Ngoc on 8/16/16.
//  Copyright © 2016 GDG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_username: UITextField!
    
    @IBOutlet weak var tf_password: UITextField!
    
    
    var users = ["nguyenbangoc":"123", "cuong":"345", "dat":"679"]
    
    @IBAction func action_Login(sender: AnyObject) {
        
        if let password = users[tf_username.text!] {
            if password == tf_password.text{
                    print("Successful login")
            }else{
                print("Password is not correct")
            
            }
            
        }else{
            print("This account does not exist")
        
        }
    
    }
    

    @IBAction func action_listAllAccount(sender: AnyObject) {
        for (username, password) in users{
            print("User \(username) has password is \(password)")
        }
        
    }
    
    
    @IBAction func action_addNewAccount(sender: AnyObject) {
        if let password = users[tf_username.text!]{
            print("This account exists. Not allowed to create new one.")
        }else{
            users[tf_username.text!] = tf_password.text
            print("Successfully created new account")
        }
        
    }
    
    
    @IBAction func action_deleteAccount(sender: AnyObject) {
        if let password = users[tf_username.text!]{
            if password == tf_password.text{
                users.removeValueForKey(tf_username.text!)
                print("Deleted")
            }
            else{
                print("Wrong Password!!! Can not do this request!!!")
            }
        }else{
            users[tf_username.text!] = tf_password.text
            print("This account does not exist. Can not delete!!!")
        }
        
    }
    
    

    @IBAction func action_updateAccount(sender: AnyObject) {
        if let password = users[tf_username.text!]{
            
            users[tf_username.text!] = tf_password.text
            print("Updated successfully")
            
        }else{
            print("This account does not exist. Can not update anything")
        
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

