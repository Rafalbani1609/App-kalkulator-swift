//
//  ViewController.swift
//  Kalkulator
//
//  Created by Muhammd Rafa Al bani on 11/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var hasil: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnTambah(_ sender: UIButton) {
        hitung(aritmatika: "+")
    }
    @IBAction func btnKurang(_ sender: UIButton) {
        hitung(aritmatika: "-")
    }
    @IBAction func btnkali(_ sender: UIButton) {
        hitung(aritmatika: "*")
    }
    @IBAction func btnBagi(_ sender: UIButton) {
        hitung(aritmatika: "/")
    }
    func hitung(aritmatika: String){
        if textField1.text == "" || textField2.text == ""{
            hasil.text = "Hati harus diisi"
        }else{
            let input1 = Double(textField1.text!)
            let input2 = Double(textField2.text!)
            var jumlah: Double?
            switch aritmatika {
            case "+":
                jumlah = input1! + input2!
            case "-":
                jumlah = input1! - input2!
            case "*":
                jumlah = input1! * input2!
            case "/":
                jumlah = input1! / input2!
            default:
                break
            }
            hasil.text = String(jumlah!)
        }
    }
}


