//
//  DrawerMenuUtilityViewController.swift
//  Right_Side_FlyOver_Menu
//
//  Created by Leo on 12/14/16.
//  Copyright © 2016 Leo. All rights reserved.
//

import UIKit

protocol DrawerMenuUtilityViewControllerDelegate
{
    func buttonActionClose(_ sender: AnyObject)
}

class DrawerMenuUtilityViewController: UIViewController {

    public var delegate: DrawerMenuUtilityViewControllerDelegate?
    var stringFromViewController: String?




    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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


    @IBAction func buttonActionInNewViewController(_ sender: AnyObject) {

        if self.stringFromViewController != "ViewController"
        {
            let viewControllerObject = UIStoryboard (name :"Main", bundle:nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.navigationController!.pushViewController(viewControllerObject, animated: true)

        }
        if let delegate = self.delegate
        {
            delegate.buttonActionClose("" as AnyObject)
        }



        
    }

    @IBAction func buttonActionFirstInNewViewController(_ sender: AnyObject) {

        if self.stringFromViewController != "FirstViewController"
        {
            let viewControllerObject = UIStoryboard (name :"Main", bundle:nil).instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
            self.navigationController!.pushViewController(viewControllerObject, animated: true)
        }


        if let delegate = self.delegate
        {
            delegate.buttonActionClose("" as AnyObject)
        }



        
    }

    @IBAction func buttonActionSecondInNewViewController(_ sender: AnyObject) {

        if self.stringFromViewController != "SecondViewController"
        {
            let viewControllerObject = UIStoryboard (name :"Main", bundle:nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
            self.navigationController!.pushViewController(viewControllerObject, animated: true)

        }


        if let delegate = self.delegate
        {
            delegate.buttonActionClose("" as AnyObject)
        }

        
        
        
    }

    

}
