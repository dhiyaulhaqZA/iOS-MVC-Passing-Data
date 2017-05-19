//
//  NtfViewController.swift
//  MVC Practice 1
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 5/19/17.
//  Copyright © 2017 Dhiya Ulhaq Zulha Alamsyah. All rights reserved.
//

import UIKit

class NtfViewController: UIViewController {

    @IBOutlet var labelData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(getDataUpdate), name: NSNotification.Name(rawValue: "Data"), object: nil)
        
        NotificationDataModel.sharedInstance.requestData()
    }
    
    @objc private func getDataUpdate(){
        if let data = NotificationDataModel.sharedInstance.data {
            labelData.text = data
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
