//
//  SummaryViewController.swift
//  ContactCardApp
//
//  Created by Tim van Lieshout on 31/08/2017.
//  Copyright © 2017 Tim van Lieshout. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {
    
    @IBOutlet weak var profile_img: UIImageView!
    @IBOutlet weak var first_name: UILabel!
    @IBOutlet weak var last_name: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        first_name.text = "fag"
        last_name.text = "got ahhahahahahahahahahahahahahahahahahahahahahahahahah"
        
        profile_img.layer.cornerRadius = profile_img.bounds.width/2
        profile_img.layer.borderWidth = 5.0
        profile_img.layer.borderColor = UIColor.black.cgColor
        profile_img.clipsToBounds = true
        profile_img.alpha = 0.1

        background.layer.borderWidth = 5.0
        background.layer.borderColor = UIColor.black.cgColor
        
        first_name.sizeToFit()
        last_name.sizeToFit()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0,
                       delay: 0.3,
                       options: UIViewAnimationOptions.curveEaseInOut,
                       animations: {self.profile_img.alpha = 1.0})
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
