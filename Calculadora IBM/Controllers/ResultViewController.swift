//
//  ResultViewController.swift
//  Calculadora IBM
//
//  Created by Victor Tejeda on 3/9/22.
//

import UIKit

class calcularViewController: UIViewController {
    
    var calculadoraVictor = CalculadoraVictor()
//    var bmiValue = "0.0"
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heigtSliderChanged(_ sender: UISlider) {
       let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weigthSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
      let height = heightSlider.value
       let weight = weightSlider.value
        
           // esta es una forma de usar codigo let bmi = weight / (height * height) es decir que se calcula como peso dividido.
        //let bmi = weight / pow(height, 2) // Para tener la altura cuadrada se usa pow
       // print(bmi)
//
//        let bmi = weight / (height * height)
//        bmiValue = String(format: "%.1f", bmi)
        
        calculadoraVictor.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "irResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irResult" {
            //cuando usanos el signo de exclamacion para desenvolver opcioneses decir rechaza forzado, es de cir esto expresa nuestra certeza de qwue cuando se indentifica el segmento, su controlador de vista, de des tiono obtiene creado definitivamente sera un ResultViewController.
//            let destionationVC = segue.destination as! ResultViewController
//            destionationVC.bmiValue = bmiValue
            
            let destionationVC = segue.destination as! ResultViewController
            destionationVC.bmiValue = calculadoraVictor.getBMIValue()
            destionationVC.advice = calculadoraVictor.getAdvice()
            destionationVC.color = calculadoraVictor.getColor()
        }
    }
    
}
