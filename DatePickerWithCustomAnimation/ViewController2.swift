//
//  ViewController2.swift
//  DatePickerWithCustomAnimation
//
//  Created by aziz omar boudi  on 5/6/16.
//  Copyright © 2016 jogabo. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//      if let datePickerView2 = NSBundle.mainBundle().loadNibNamed("DatePickerView2", owner: self, options: nil).first as? DatePickerView2 {
//        contentView.addSubview(datePickerView2)
//      }


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func showDatePicker(sender: UIButton) {
    selectTime()
  }

  private func selectTime() {
    DatePickerView2.showInView(view)
      
  }

}
