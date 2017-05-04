//
//  ViewController.swift
//  Right_Side_FlyOver_Menu
//
//  Created by Leo on 12/14/16.
//  Copyright © 2016 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DrawerMenuUtilityViewControllerDelegate {

    var viewTemp = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.viewTemp.frame = CGRect(x: 0, y: 0, width: 190, height: 568)
        self.viewTemp.alpha = 0.5
        self.viewTemp.backgroundColor = UIColor.black
        self.view.addSubview(self.viewTemp)

        self.viewTemp.isHidden = true


        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonActionShowDrawerMenu(_ sender: AnyObject) {

        self.viewTemp.isHidden = false
        self.viewTemp.frame = CGRect(x: -190, y: 0, width: 190, height: 568)


        let viewControllerObject = UIStoryboard (name :"Main", bundle:nil).instantiateViewController(withIdentifier: "DrawerMenuUtilityViewController") as! DrawerMenuUtilityViewController
        viewControllerObject.delegate = self
        viewControllerObject.stringFromViewController = "ViewController"
        viewControllerObject.view.frame = CGRect(x:-320, y:0, width:320, height:500)
        self.addChildViewController(viewControllerObject)
        self.view.addSubview(viewControllerObject.view)
        viewControllerObject.didMove(toParentViewController: self)

        UIView.animate(withDuration: 0.3, animations: {
            viewControllerObject.view.frame = CGRect(x:-160, y:0, width:320, height:500)
            self.viewTemp.frame = CGRect(x: 0, y: 0, width: 190, height: 568)
        })

    }

    @IBAction func buttonActionClose(_ sender: AnyObject) {

        self.viewTemp.isHidden = true

        let viewcontrollerObject = self.childViewControllers.last
        viewcontrollerObject?.view.removeFromSuperview()
        viewcontrollerObject?.removeFromParentViewController()


    }

}

