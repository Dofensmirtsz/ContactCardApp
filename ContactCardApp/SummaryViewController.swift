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
    @IBOutlet weak var person_button: UIButton!
    
    
    @IBAction func person_button(_ sender: AnyObject) {
        index = (index + 1) % 3
        first_name.text = persons[index].firstName
        last_name.text = persons[index].lastName
        profile_img.image = persons[index].image
        profile_img.alpha = 0.1
        UIView.animate(withDuration: 0.75,
                       delay: 0.0,
                       options: UIViewAnimationOptions.curveEaseInOut,
                       animations: {self.profile_img.alpha = 1.0})
    }
    
    var persons: [Person] = []
    var person : Person!
    var index : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        GenerateList()
        person = persons[index]
        first_name.text = persons[index].firstName
        last_name.text = persons[index].lastName
        profile_img.image = persons[index].image
        
        profile_img.layer.cornerRadius = profile_img.bounds.width/2
        profile_img.layer.borderWidth = 5.0
        profile_img.layer.borderColor = UIColor.black.cgColor
        profile_img.clipsToBounds = true
        profile_img.alpha = 0.1

        //background.layer.borderWidth = 5.0
        //background.layer.borderColor = UIColor.black.cgColor
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.75,
                       delay: 0.0,
                       options: UIViewAnimationOptions.curveEaseInOut,
                       animations: {self.profile_img.alpha = 1.0})
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func GenerateList(){
        let p1 = Person(firstName: "Marshall", lastName: "Fuhrer", imageString: "bigan-face-expander-thumb");
        persons.append(p1)
        let p2 = Person(firstName: "Randy", lastName: "Lahey", imageString: "randy-lahey");
        persons.append(p2)
        let p3 = Person(firstName: "Jessie en James", lastName: "Meowth ogen dicht!", imageString: "jessie-james-meowth");
        persons.append(p3)
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
