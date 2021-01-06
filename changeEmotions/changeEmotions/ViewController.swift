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
        let message = "기분을 '\(a)' 에서 '\(b)' 로 바꾸시겠습니까?"
        
        let alert = UIAlertController(title: "Change", message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let action = UIAlertAction(title: "확인", style: .default, handler: { action in
            self.toggle()
            self.changeEmotions()
        })
        alert.addAction(cancel)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func changeEmotions() {
        emotionLabel.text = "\(a)!!"
        emotionImage.image = UIImage(named: "\(a).jpg")
    }
    
    func toggle() {
        (a, b) = (b, a)
    }
    
}

