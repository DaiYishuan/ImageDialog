//
//  ViewController.swift
//  ImageDialog
//
//  Created by SpotCam-MBP-01 on 2021/11/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }
    @IBAction func tap_btn_center(_ sender: Any) {
        let controller = ImageDialogVC()
        controller.modalPresentationStyle = .overCurrentContext
        controller.modalTransitionStyle = .crossDissolve
        self.present(controller, animated: true) {
            
        }
        controller.add_action_left { success in
            let transition: CATransition = CATransition()
            transition.duration = 0.15
            transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
            transition.type = CATransitionType.fade
            controller.view.window!.layer.add(transition, forKey: nil)
            controller.dismiss(animated: false) {
                
            }
        }
        controller.add_action_right { success in
            
        }
        
    }
    

}

