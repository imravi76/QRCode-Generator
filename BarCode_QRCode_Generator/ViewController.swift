//
//  ViewController.swift
//  BarCode_QRCode_Generator
//
//  Created by LinuxPlus on 1/5/21.
//  Copyright © 2021 FahadHussainCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var image2: UIImageView!
    
    
    
    @IBAction func BarCodeEvent(_ sender: UIButton)
    {
        if let myString = textField.text
        {
            let data = myString.data(using: .ascii, allowLossyConversion: false)
            let barcode = CIFilter(name: "CICode128BarcodeGenerator")
            barcode?.setValue(data, forKey: "inputMessage")
            let img = UIImage(ciImage: (barcode?.outputImage)!)
            
            image1.image = img
        }
        
    }
    
    
    @IBAction func QRCodeEvent(_ sender: UIButton)
    {
        if let myString = textField.text
        {
            let data = myString.data(using: .ascii, allowLossyConversion: false)
            let barcode = CIFilter(name: "CIQRCodeGenerator")
            barcode?.setValue(data, forKey: "inputMessage")
            let img = UIImage(ciImage: (barcode?.outputImage)!)
            
            image2.image = img
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

