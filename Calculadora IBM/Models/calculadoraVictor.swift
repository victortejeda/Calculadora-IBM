//
//  ViewController.swift
//  Calculadora IBM
//
//  Created by Victor Tejeda on 3/9/22.
//

import UIKit

class CalculadoraVictor {

    var bmi: BMI?
    
    func getBMIValue() -> String {
        //Este codigo de abajo que empieza con if es del aprendisaje que tuve en la leccion anterior aplicaremos este emetodo "Si el IMC no es igula a cero". pero hacemos un preOrndenacion  conn un nuevo codigo que que sera usar el enlace optional que es "sefeBMI _ bmi" es tipo float. hubieron muchos cambios pero es para mejor el codigo.
        
        //if let safeBMI = bmi  { lo elimanos porque hay un valor en el IMC
            
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
//        } else {
//            return "0.0"
//        }        Elimanamos el codigo para simplificar tambien para usar nuestro operador de funcion nula
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
    func calculateBMI(height: Float, weight: Float) {
        let bmivalue  = weight / (height * height)
        if bmivalue < 18.5 {
            //print("Bajo de peso")
            // recoradr que la declaracion "if" esta verficando, si falla estara el "else if" pero arecordando con ese mismo cpdigo de "else if" que es que ya se verifico la condicion anterior y pues ya se verfico con el "if de arriba" por que ya verificamos nuestro extremo inferior.
            bmi = BMI(value: bmivalue, advice: "bajo peso", color: UIColor.blue)
        } else if bmivalue < 24.9 {
           // print("Peso Normal")
            bmi = BMI(value: bmivalue, advice: "peso promedio", color: UIColor.green)
        } else {
          //  print("Sobre peso")
            bmi = BMI(value: bmivalue, advice: "Estas gordo", color: UIColor.red)
        }
       
    }
    
}



