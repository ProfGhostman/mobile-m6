//
//  CurrencyLogic.swift
//  CurrencyConverter
//
//  Created by user221491 on 2/17/23.
//

import Foundation

struct CurrencyLogic{
    
    var euroSwitch = true
    var pesosSwitch = true
    var canadianSwitch = true
    var yenSwitch = true
    var dollars : Float = 0.0
    var euros : Float = 0.0
    var pesos : Float = 0.0
    var canadian : Float = 0.0
    var yen : Float = 0.0
    
    mutating func setEuroSwitch(_ switchValue : Bool){
        if switchValue{
            euroSwitch = true
        }
        else {
            euroSwitch = false
        }
    }
    
    mutating func setPesosSwitch(_ switchValue : Bool){
        if switchValue{
            pesosSwitch = true
        }
        else {
            pesosSwitch = false
        }
    }
    
    mutating func setCanadianSwitch(_ switchValue : Bool){
        if switchValue{
            canadianSwitch = true
        }
        else {
            canadianSwitch = false
        }
    }
    
    mutating func setYenSwitch(_ switchValue : Bool){
        if switchValue{
            yenSwitch = true
        }
        else {
            yenSwitch = false
        }
    }
    
    mutating func convertCurrency() -> String{
        var result = String(format: "USD: $ %.2f", dollars) + "\n"
        // "USD: $ \(dollars) \n"
        if euroSwitch {
            euros = Float(dollars) * 0.93
            let append = String(format: "Euros: € %.2f", euros)
            result = result + "\n" + append
        }
        if pesosSwitch {
            pesos = Float(dollars) * 18.36
            let append = String(format: "Pesos: ₱ %.2f", pesos)
            result = result + "\n" + append
        }
        if canadianSwitch {
            canadian = Float(dollars) * 1.35
            let append = String(format: "Canadian: $ %.2f", canadian)
            result = result + "\n" + append
        }
        if yenSwitch {
            yen = Float(dollars) * 134.16
            let append = String(format: "Yen: ¥ %.2f", yen)
            result = result + "\n" + append
        }
        return result
    }
    
    // let formatted = String(format: "Angle: %.2f", angle)
}
