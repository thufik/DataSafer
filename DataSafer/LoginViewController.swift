//
//  LoginViewController.swift
//  DataSafer
//
//  Created by Fellipe Thufik Costa Gomes Hoashi on 9/10/16.
//  Copyright © 2016 Fellipe Thufik Costa Gomes Hoashi. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var txtLogin: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.clipsToBounds = true
        loginButton.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(sender: UIButton) {
    
        if let login = txtLogin.text, let pass = txtPass.text{
            GetUser.Login(login, pass: pass)
        }else{
            //funcao para preencher os campos
        }
        
        //GetUser.Login(self.txtLogin.text!, pass: self.txtPass.text!)
        //GetUser.Login(txtLogin.text!, pass: txtPass.text!)
        
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
