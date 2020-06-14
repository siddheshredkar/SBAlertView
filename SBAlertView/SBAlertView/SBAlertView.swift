//
//  SBAlertView.swift
//  SBAlertView
//
//  Created by Siddhesh Redkar on 2020-06-14.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import Foundation
import UIKit


public class SBAlertView{
    
    
    public init(){}
    
    public func presentCustomAlert(target:UIViewController,title: String?, message: String?, buttonTitle1: String?,buttonTitle2:String?,buttonColor1:UIColor?,buttonColor2:UIColor?,buttonAction1: @escaping () -> Void, buttonAction2: @escaping () -> Void){
          DispatchQueue.main.async {
              let customAlertVc = AlertViewController()
              customAlertVc.alertTitle = title
              customAlertVc.alertmessage = message
              customAlertVc.buttonTitle1 = buttonTitle1
              customAlertVc.buttonTitle2 = buttonTitle2
              customAlertVc.buttonColor1 = buttonColor1
              customAlertVc.buttonColor2 = buttonColor2
              customAlertVc.buttonAction1 = buttonAction1
              customAlertVc.buttonAction2 = buttonAction2
              customAlertVc.modalPresentationStyle = .overFullScreen
              customAlertVc.modalTransitionStyle = .crossDissolve
              target.present(customAlertVc, animated: true, completion: nil)
          }
      }
    
    
}
