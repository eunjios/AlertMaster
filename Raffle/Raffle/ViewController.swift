//
//  ViewController.swift
//  Raffle
//
//  Created by 이은지 on 2021/01/07.
//

import UIKit

class ViewController: UIViewController {
    
    var user1: String = "내기 당첨!"
    var user2: String = "내기 통과!"
    var emoji1 = "💣"
    var emoji2 = "🎉"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        random()
    }

    @IBAction func button1(_ sender: Any) {
        let alert = UIAlertController(title: "\(emoji1)", message: "\(user1)", preferredStyle: .alert)
        let action = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func button2(_ sender: Any) {
        let alert = UIAlertController(title: "\(emoji2)", message: "\(user2)", preferredStyle: .alert)
        let action = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

    
    func random() {
        let randomNum = Int(arc4random_uniform(1000))
        let is1Pass = Bool(randomNum%2 == 0)
    
        if is1Pass {
            user1 = "내기 통과!"
            user2 = "내기 당첨!"
            emoji1 = "🎉"
            emoji2 = "💣"
        }
    }
}

