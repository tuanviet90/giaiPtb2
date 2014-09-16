//
//  ptb2.swift
//  giaiPtb2
//
//  Created by VietMinSK on 9/17/14.
//  Copyright (c) 2014 VietMinsk. All rights reserved.
//

import UIKit

class ptb2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var nhapA: UITextField!
    @IBOutlet weak var nhapB: UITextField!
    @IBOutlet weak var nhapC: UITextField!
    @IBOutlet weak var nghiemX1: UITextField!
    @IBOutlet weak var nghiemX2: UITextField!
    @IBOutlet weak var ketQua: UITextField!
    @IBAction func tinhNghiem(sender: AnyObject) {
        
        let a: Float = Float(self.nhapA.text.toInt()!)
        let b: Float = Float(self.nhapB.text.toInt()!)
        let c: Float = Float(self.nhapC.text.toInt()!)
        let delta: Float = b * 2 - (4 * a * c)
        
        if nhapA == 0 {
                self.ketQua.text = " Đây là phương trình bậc nhất "
        } else {
        if delta < 0 {
                self.ketQua.text = " Phương trình vô nghiệm "
        } else {
        if delta == 0 {
                self.ketQua.text = " Phương trình có nghiệm kép"
                self.nghiemX1.text = "\(-(b) / (2 * a))"
                self.nghiemX2.text = "\(-(b) / (2 * a))"
        } else {
                self.ketQua.text = " Phương trình có 2 nghiệm"
                self.nghiemX1.text = "\(-(b) + sqrt(delta)/(2 * a))"
                self.nghiemX2.text = "\(-(b) - sqrt(delta)/(2 * a))"
            }
}
}
}
}



