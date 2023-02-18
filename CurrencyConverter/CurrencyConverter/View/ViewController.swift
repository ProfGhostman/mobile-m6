//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by user221491 on 2/17/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dollarInput: UITextField!
    
    var currencyLogic = CurrencyLogic()
    var exchanged = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        
    }
    
    @IBAction func euros(_ sender: UISwitch) {
        currencyLogic.setEuroSwitch(sender.isOn)
    }
    
    @IBAction func pesos(_ sender: UISwitch) {
        currencyLogic.setPesosSwitch(sender.isOn)
    }
    
    @IBAction func canadian(_ sender: UISwitch) {
        currencyLogic.setCanadianSwitch(sender.isOn)
    }
    
    @IBAction func yen(_ sender: UISwitch) {
        currencyLogic.setYenSwitch(sender.isOn)
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        if dollarInput.text == "" {
            dollarInput.placeholder = "Enter a number"
        }
        else if Int(dollarInput.text!) == nil {
            dollarInput.text = ""
            dollarInput.placeholder = "Only digits allowed"
        }
        else {
            currencyLogic.dollars = Float(dollarInput.text!)!
            exchanged = currencyLogic.convertCurrency()
            self.performSegue(withIdentifier: "toExchangeView", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toExchangeView" {
            let navigation = segue.destination as! ConvertedView
            navigation.exchanged = exchanged
        }
    }
    
}
