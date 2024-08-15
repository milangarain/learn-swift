//
//  ViewController.swift
//  Ask-me-anything
//
//  Created by Milan Garain on 15/08/24.
//

import UIKit

let imageNameList : [String] = ["ball1","ball2","ball3","ball4","ball5"]

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ImageViewer.image = UIImage(imageLiteralResourceName: "ball1")
    }

    //MARK: IBOutlets and IBActions
    @IBOutlet weak var ImageViewer: UIImageView!
    
    @IBAction func AskBtn(_ sender: UIButton, forEvent event: UIEvent) {
        let imageName = Int.random(in: 0...4)
        ImageViewer.image = UIImage(imageLiteralResourceName: imageNameList[imageName])
        
    }
    
    
}

