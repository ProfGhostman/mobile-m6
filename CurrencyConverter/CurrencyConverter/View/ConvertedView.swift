//
//  ConvertedView.swift
//  CurrencyConverter
//
//  Created by user221491 on 2/17/23.
//

import UIKit

class ConvertedView: UIViewController {

    @IBOutlet weak var exchangeLabel: UILabel!
    
    var exchanged = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exchangeLabel.text = exchanged
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
