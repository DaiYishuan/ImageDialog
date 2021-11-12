//
//  ImageDialogVC.swift
//  ImageDialog
//
//  Created by SpotCam-MBP-01 on 2021/11/11.
//

import UIKit

class ImageDialogVC: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lb_title: UILabel!
    @IBOutlet weak var lb_message: UILabel!
    @IBOutlet weak var btn_left: UIButton!
    @IBOutlet weak var btn_right: UIButton!
    typealias CompletionHandler = (_ success:Bool) -> Void
    var action_left:CompletionHandler!
    var action_right:CompletionHandler!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        add_action_left { success in
            
        }
        // Do any additional setup after loading the view.
    }
    
    public func add_action_left(completion:@escaping CompletionHandler){
        action_left = completion;
    }
    public func add_action_right(completion:@escaping CompletionHandler){
        action_right = completion;
    }
    @IBAction func tap_btn_left(_ sender: UIButton) {
        action_left(true)
    }
    @IBAction func tap_btn_right(_ sender: UIButton) {
        action_right(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
