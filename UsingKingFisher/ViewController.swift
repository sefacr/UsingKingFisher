//
//  ViewController.swift
//  UsingKingFisher
//
//  Created by Sefa Acar on 22.05.2024.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageShow(imageName: "baklava")
        
    }
    
    
    @IBAction func image1Btn(_ sender: Any) {
        imageShow(imageName: "su")
    }
    
    @IBAction func image2Btn(_ sender: Any) {
        imageShow(imageName: "lazanya")
    }
    
    func imageShow(imageName: String){
        if let url = URL(string: "//http://kasimadalan.pe.hu/yemekler/resimler/\(imageName).php") {
            DispatchQueue.main.async {
                self.imageView.kf.setImage(with: url)
            }
        }
    }
    
}

