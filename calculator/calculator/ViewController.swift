//
//  ViewController.swift
//  calculator
//
//  Created by abdiqani on 24/06/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var CalculatorWorkings: UILabel!
    
    @IBOutlet weak var CalculatorResults: UILabel!
    
    var workings: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        
    }
    func clearAll(){
        workings = ""
        CalculatorWorkings.text = ""
        CalculatorResults.text = ""
    }
    func addToWorkings(value: String){
        workings = workings + value
        CalculatorWorkings.text = workings
    }
    @IBAction func AllClearTap(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func backTap(_ sender: Any) {
        if(!workings.isEmpty){
            workings.removeLast()
            CalculatorWorkings.text = workings
        }
        
    }
    
    @IBAction func percentTap(_ sender: Any) {
        addToWorkings(value: "%")
        
    }
    
   

    
    @IBAction func savenTap(_ sender: Any) {
        addToWorkings(value: "7")
        
    }
    
    @IBAction func eigthTab(_ sender: Any) {
        addToWorkings(value: "8")
        
    }
    
    @IBAction func neinTab(_ sender: Any) {
        addToWorkings(value: "9")
        
    }
    
    @IBAction func fourTab(_ sender: Any) {
        addToWorkings(value: "4")
        
    }
    
    @IBAction func FiveTab(_ sender: Any) {
        addToWorkings(value: "5")
        
    }
    
    @IBAction func sixTab(_ sender: Any) {
        addToWorkings(value: "6")
        
    }
    
    @IBAction func oneTab(_ sender: Any) {
        addToWorkings(value: "1")
        
    }
    
    @IBAction func twoTab(_ sender: Any) {
        addToWorkings(value: "2")
        
    }
    
    @IBAction func threeTab(_ sender: Any) {
        addToWorkings(value: "3")
        
    }
    
    @IBAction func dotTab(_ sender: Any) {
        addToWorkings(value: ".")
        
    }
    
    @IBAction func seroTap(_ sender: Any) {
        addToWorkings(value: "0")
        
    }
    @IBAction func timesTap(_ sender: Any) {
        addToWorkings(value: "*")
        
    }
    
    @IBAction func dividTap(_ sender: Any) {
        addToWorkings(value: "/")
        
    }
    
    
    @IBAction func minusTap(_ sender: Any) {
        addToWorkings(value: "-")
        
    }
    
    @IBAction func plusTap(_ sender: Any) {
        addToWorkings(value: "+")
        
    }
    
   
    @IBAction func equalsTap(_ sender: Any) {
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        CalculatorResults.text = resultString
    }
    func formatResult(result: Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        
        else {
            return String(format: "%.0f", result)
            
        }
        
        
        
        
    }
}
