//
//  SingUpVC.swift
//  iDoctor
//
//  Created by osama on 5/31/20.
//  Copyright © 2020 iDoctor. All rights reserved.
//

import UIKit

class SingUpVC: UIViewController {
    @IBOutlet weak var Name: UITextField!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var DOB: UITextField!
    @IBOutlet weak var sex: UITextField!
    @IBOutlet weak var City: UITextField!
    @IBOutlet weak var Campany: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)

    }
    
    @IBAction func singUp(_ sender: Any) {
        WindowManger.show(.main, animated: true)

    }
}
