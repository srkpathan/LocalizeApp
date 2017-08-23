//
//  ViewController.swift
//  LocalizeApp
//
//  Created by shahrukh on 8/23/17.
//  Copyright © 2017 shahrukh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var msgLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNotifications()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeToEnglish(_ sender: UIButton) {
        Locale.updateLanguage(code: "en")
    }
    
    @IBAction func changeToFrench(_ sender: UIButton) {
        Locale.updateLanguage(code: "fr")
    }
    
    func setupNotifications() {
        let nc = NotificationCenter.default
        
        nc.addObserver(forName: NSLocale.currentLocaleDidChangeNotification, object: nil, queue: OperationQueue.main) {
            [weak self] notification in
            guard let `self` = self else { return }
            
            //	layout pass..?
            self.view.layoutIfNeeded()
        }
    }


}

