//
//  ViewController.swift
//  demo5
//
//  Created by 林俊緯 on 2021/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bodyImage: UIImageView!
    @IBOutlet var faceImage: UIImageView!
    @IBOutlet var hairImage: UIImageView!
    
    @IBOutlet var hairView: UIView!
    @IBOutlet var faceView: UIView!
    @IBOutlet var bodyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hairView.isHidden = false
        bodyView.isHidden = true
        faceView.isHidden = true
    }

    @IBAction func hairChange(_ sender: UIButton) {
        let hairstyle = sender.currentImage
        hairImage.image = hairstyle
    }
    @IBAction func faceChange(_ sender: UIButton) {
        let facialExpression = sender.currentImage
        faceImage.image = facialExpression
    }
    @IBAction func bodyChange(_ sender: UIButton) {
        let dress = sender.currentImage
        bodyImage.image = dress
    }
    @IBAction func hairSelect(_ sender: UIButton) {
        hairView.isHidden = false
        faceView.isHidden = true
        bodyView.isHidden = true
    }
    @IBAction func faceSelect(_ sender: UIButton) {
        hairView.isHidden = true
        faceView.isHidden = false
        bodyView.isHidden = true
    }
    @IBAction func dressSelect(_ sender: UIButton) {
        hairView.isHidden = true
        faceView.isHidden = true
        bodyView.isHidden = false
    }
    @IBAction func random(_ sender: UIButton) {
        let hairs: [UIImage?] = [UIImage(named: "hair1"), UIImage(named: "hair2"), UIImage(named: "hair3"), UIImage(named: "hair4"), UIImage(named: "hair5"), UIImage(named: "hair6")]
        
        let faces: [UIImage?] = [UIImage(named: "face1"), UIImage(named: "face2"), UIImage(named: "face3"), UIImage(named: "face4"), UIImage(named: "face5"), UIImage(named: "face6")]
        
        let bodys: [UIImage?] = [UIImage(named: "body1"), UIImage(named: "body2"), UIImage(named: "body3"), UIImage(named: "body4"), UIImage(named: "body5"), UIImage(named: "body6")]
        
        hairImage.image = hairs[Int.random(in: 0...5)]
        faceImage.image = faces[Int.random(in: 0...5)]
        bodyImage.image = bodys[Int.random(in: 0...5)]
    }
}

