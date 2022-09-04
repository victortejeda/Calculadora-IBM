//
//  calcularViewController.swift
//  Calculadora IBM
//
//  Created by Victor Tejeda on 3/9/22.
//

import UIKit

class ResultViewController: UIViewController {
    // cadena opcional String
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
        
    }
    @IBAction func recalculoPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    



}
