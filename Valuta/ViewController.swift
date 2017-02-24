//
//  ViewController.swift
//  Valuta
//
//  Created by Natalia Miller on 24/02/2017.
//  Copyright © 2017 Natalia Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var searchText: UITextField?
    @IBOutlet weak var fromCurrency: UIPickerView?
    @IBOutlet weak var toCurrency: UIPickerView?
    @IBOutlet weak var searchbutton: UIButton?
    @IBOutlet weak var resultText: UITextField?
    
    var currencies: [Currency] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fromCurrency?.tag = 1
        toCurrency?.tag = 2
        
        fromCurrency?.delegate = self
        fromCurrency?.dataSource = self
        toCurrency?.delegate = self
        toCurrency?.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        HTTPClient.getCurrencies(completion: { result in
            self.currencies = result
            self.fromCurrency?.reloadAllComponents()
            self.toCurrency?.reloadAllComponents()
        })
        super.viewWillAppear(animated)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencies.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currencies[row].id
    }
    
    @IBAction func didPressCalculate() {
        let fromCurrencySelected = fromCurrency?.selectedRow(inComponent: 1)
        let toCurrencySelected = toCurrency?.selectedRow(inComponent: 1)
        
    }
    
    
    


}

