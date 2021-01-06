//
//  ViewController.swift
//  changeEmotions
//
//  Created by 이은지 on 2021/01/06.
//

import UIKit

class ViewController: UIViewController {
    var a = "angry"
    var b = "happy"
    
    
    @IBOutlet weak var emotionLabel: UILabel!
    @IBOutlet weak var emotionImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeEmotions()
    }
    
    
    @IBAction func showAlert(_ sender: Any) {
        let message = "기분이 '\(a)' 에서 '\(b)' 로 바뀌었습니다."
        
        let alert = UIAlertController(title: "Change", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        toggle()
        changeEmotions()
        
    }
    
    func changeEmotions() {
        emotionLabel.text = "\(a)!!"
        emotionImage.image = UIImage(named: "\(a).jpg")
    }
    
    func toggle() {
        (a, b) = (b, a)
    }
    
}

