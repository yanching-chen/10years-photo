//
//  ViewController.swift
//  10years-photo
//
//  Created by macadmin on 2019/8/4.
//  Copyright © 2019 macadmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ChangeImage1: UIImageView!
    @IBOutlet weak var ChangeImage2: UIImageView!
    @IBOutlet weak var DateSlider: UISlider!
    @IBOutlet weak var DatePicker: UIDatePicker!
    @IBOutlet weak var YearLabel: UILabel!
    @IBOutlet weak var DatePickerLabel: UILabel!
        let formatter = DateFormatter()
        let formatter2 = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func DateSliderAction(_ sender: Any) {
        YearLabel.text = String(Int(DateSlider.value))
        ChangeImage1.image = UIImage(named: "\( Int(DateSlider.value)).png")
        let CI2 = "dad_"+String(Int(DateSlider.value))
        //照片是以民國年來命名，拔拔的照片名稱前再加上"dad_"的字串
        // print(CI2)
        ChangeImage2.image = UIImage(named: CI2 + ".png")
        }
    
    @IBAction func DatePickerAction(_ sender: UIDatePicker) {
     
        let ImageDate = DatePicker.date
        // print(ImageDate)
        let dateComponents  = Calendar.current.dateComponents(in: TimeZone.current, from: ImageDate)
        formatter.dateFormat = "yyyy/MM/dd"
        DatePickerLabel.text = formatter.string(from: DatePicker.date)
        formatter2.dateFormat = "yyyy"
        let str = formatter2.string (from: DatePicker.date)
        //print(str)
        let dpyear = Int(str)
        let xx = Int(dpyear! - 1911)
        //將西元年轉換為民國年，將dpyear-1911
        //print(xx)
        let CI3 = "dad_" + String(xx)
        //照片是以民國年來命名，拔拔的照片名稱前再加上"dad_"的字串
        //print(CI3)
        ChangeImage1.image =  UIImage(named: "\(Int(xx)).png")
        ChangeImage2.image = UIImage(named: CI3 + ".png")
        }
}
