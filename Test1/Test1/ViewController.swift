//
//  ViewController.swift
//  Test1
//
//  Created by Huy Vu on 8/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myappButton: UIButton!
    
    @IBOutlet weak var huyappButton: UIButton!
    
    var isLandscape: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Ban đầu, thiết lập màu và trạng thái ban đầu cho các button
        // Thiết lập màu và trạng thái ban đầu cho các button
                myappButton.backgroundColor = UIColor.white
                myappButton.layer.borderColor = UIColor(red: 0.81, green: 0.81, blue: 0.81, alpha: 1.0).cgColor
                myappButton.layer.borderWidth = 1.5
                
                huyappButton.backgroundColor = UIColor(red: 0, green: 0.02, blue: 0.05, alpha: 0.3)

    }


    @IBAction func myappButtonTapped(_ sender: Any) {
        toggleOrientation()
        updateRealTime()
        print("HUy ok ok ok o k ok ok ok : \(isLandscape) ")
    }
    
    
    // Hàm để thay đổi giá trị của isLandscape
    func toggleOrientation() {
        isLandscape = !isLandscape
    }
    
    func updateRealTime() {
        if isLandscape {
            myappButton.backgroundColor = UIColor(red: 1, green: 0.94, blue: 0.73, alpha: 1.0)
            myappButton.layer.borderColor = UIColor(red: 1, green: 0.42, blue: 0.24, alpha: 1.0).cgColor
            myappButton.layer.borderWidth = 1.5
            
            huyappButton.backgroundColor = UIColor(red: 0, green: 0.04, blue: 0.12, alpha: 1.0)

        } else {
            myappButton.backgroundColor = UIColor.white
            myappButton.layer.borderColor = UIColor(red: 0.81, green: 0.81, blue: 0.81, alpha: 1.0).cgColor
            myappButton.layer.borderWidth = 1.5
            
            huyappButton.backgroundColor = UIColor(red: 0, green: 0.02, blue: 0.05, alpha: 0.3)
        }
    }
}

