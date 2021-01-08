//
//  ViewController.swift
//  Raffle
//
//  Created by 이은지 on 2021/01/07.
//

import UIKit

class ViewController: UIViewController {
    var is1Pass: Bool = true
    var is2Pass: Bool = false
    
    var alrtTitle: String = "title"
    var alrtMessage: String = "message"

    override func viewDidLoad() {
        super.viewDidLoad()
        is1Pass = isPass()
        is2Pass = !is1Pass
    }

    @IBAction func button1(_ sender: Any) {
        alrtTitle = titleString(is1Pass)
        alrtMessage = messageString(is1Pass)
        
        let alert = UIAlertController(title: "\(alrtTitle)", message: "\(alrtMessage)", preferredStyle: .alert)
        let action = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func button2(_ sender: Any) {
        alrtTitle = titleString(is2Pass)
        alrtMessage = messageString(is2Pass)
        let alert = UIAlertController(title: "\(alrtTitle)", message: "\(alrtMessage)", preferredStyle: .alert)
        let action = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

    
    func isPass() -> Bool {
        let randomNum = Int(arc4random_uniform(1000))
        let is1Pass: Bool = randomNum % 2 == 0
        return is1Pass
    }
    
    func titleString(_ isPass: Bool) -> String {
        var title = "title"

        if isPass {
            title = "🎉"
        } else {
            title = "💣"
        }
        return title
    }
    
    func messageString(_ isPass: Bool) -> String {
        var message = "message"
        
        if isPass {
            message = "내기 통과!"
        } else {
            message = "내기 당첨!"
        }
        return message
    }
        
}

