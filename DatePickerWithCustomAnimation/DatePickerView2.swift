//
//  DatePickerView2.swift
//  DatePickerWithCustomAnimation
//
//  Created by aziz omar boudi  on 5/6/16.
//  Copyright © 2016 jogabo. All rights reserved.
//

import UIKit


class DatePickerView2: UIView {

  var mainViewController : ViewController?


  // MARK: Typealias

  typealias DatePickerCallback = NSDate -> Void

  // MARK: IBOutlets

  @IBOutlet weak var datePicker: UIDatePicker!

  // MARK: Properties

  var callback: DatePickerCallback?


  // MARK: Statics

  static func showInView(view: UIView, callback: DatePickerCallback? = nil) -> DatePickerView2 {
    let picker: DatePickerView2

    if let previousPicker = view.subviews.flatMap({ $0 as? DatePickerView2 }).first {
      picker = previousPicker
    } else {
      picker = NSBundle.mainBundle().loadNibNamed("DatePickerView2", owner: self, options: nil)[0] as! DatePickerView2
    }

    picker.callback = callback
    let height = view.frame.height / 3
    picker.frame = CGRect(x: 0.0, y: view.frame.height - height, width: view.frame.width, height: height)
    if picker.superview == nil {
      view.addSubview(picker)
      picker.transform = CGAffineTransformMakeTranslation(0.0, height)
      UIView.animateWithDuration(0.4, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 2.3, options: .CurveEaseInOut, animations: {
        picker.transform = CGAffineTransformIdentity

        }, completion: nil)

      //      UIView.animateWithDuration(0.3, animations: {
//        picker.transform = CGAffineTransformIdentity
//
//      })

    }

    return picker
  }






@IBAction func doneButton(sender: UIButton) {
  callback?(datePicker.date)
  UIView.animateWithDuration(0.4, animations: {
    self.transform = CGAffineTransformMakeTranslation(0.0, self.frame.height)


    }, completion: { (true) in
      self.removeFromSuperview()

      
  })
}






}
