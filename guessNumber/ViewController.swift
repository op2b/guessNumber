//
//  ViewController.swift
//  guessNumber
//
//  Created by Artem Esolnyak on 19/05/2019.
//  Copyright © 2019 Artem Esolnyak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.isHidden = true
        label2.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func button1(_ sender: UIButton) {
        
        //поепзываем лейблы по нажатию кнопочки
        label1.isHidden = false
        label2.isHidden = false
        
        let firstNumber = Double(textField.text!)
        let randomNumber = Double(arc4random() % 999)
        
        //ну и проверочка что юзер что - то ввел
        if firstNumber != nil {
        //вывод правильного ответа
            label2.text = "The answer is \(Int(randomNumber)), your number is \(String(describing: Int(firstNumber!)))"
        //проверка условия совпадения
        if Int(firstNumber!) == Int(randomNumber) {
            label1.text = "Your won"
        } else {
            label1.text = "Your loose"
            }
        } else  {
            label2.isHidden = true
            label1.text = "Pls some number"
        }
        
       }
    @IBAction func buttonPressed(_ sender: UIButton) {
      let number = sender.currentTitle!
        
        //запилим проверочку на кол-во вводимых символов
        
        if textField.text!.count < 3{
        textField.text = textField.text! + number
        } else  {
            let alertController = UIAlertController(title: "Achtung!", message: "Only 3 apperand you can", preferredStyle: .alert)
            let someAction = UIAlertAction(title: "ok", style: .default) {(action) in
                self.textField.text = ""
                }
            alertController.addAction(someAction)
            present(alertController, animated: true, completion: nil)
            
            
        }
        
    }
    
    //кнопка  очистки
    @IBAction func clerar(_ sender: UIButton) {
        textField!.text = ""
        label1.isHidden = true
        label2.isHidden  = true
        
        
        
        
        
    }
    
}
    


