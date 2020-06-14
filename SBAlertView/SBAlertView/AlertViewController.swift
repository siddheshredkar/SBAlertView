//
//  AlertViewController.swift
//  SBAlertView
//
//  Created by Siddhesh Redkar on 2020-06-14.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import Foundation
import UIKit

class AlertViewController: UIViewController {
    
    
    let vStackView      = UIStackView()
    let containerView   = AlertView()
    let titleLabel      = AlertTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel    = AlertBodyLabel(textAlignment: .center)
    
    let buttonHStackView = UIStackView()
    let actionButton1    = AlertButton(backgroundColor: UIColor.systemPink, title: "No")
    let actionButton2    = AlertButton(backgroundColor: UIColor.systemPink, title: "Yes")
    
    var alertTitle: String?
    var alertmessage: String?
    var buttonTitle1: String?
    var buttonTitle2: String?
    
    var buttonColor1:UIColor?
    var buttonColor2:UIColor?
    
    var buttonAction1: (()-> Void)?
    var buttonAction2: (()-> Void)?
    
    
    let padding: CGFloat = 20

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        
        configureStackView()
        configureButtonStackView()
        configureTitleLabel()
        configureMessageLabel()
        configureActionButton1()
        configureActionButton2()
        configureLayout()
        
    }
    
    
    
    func configureStackView() {
        
        vStackView.axis = .vertical
        vStackView.distribution = .equalSpacing
        vStackView.spacing = 15
        
        
        vStackView.addArrangedSubview(titleLabel)
        vStackView.addArrangedSubview(messageLabel)
        vStackView.addArrangedSubview(buttonHStackView)
    }
    
    
    func configureButtonStackView() {
        
        buttonHStackView.axis = .horizontal
        buttonHStackView.distribution = .fillEqually
        buttonHStackView.spacing = 15
        
        
        buttonHStackView.addArrangedSubview(actionButton1)
        buttonHStackView.addArrangedSubview(actionButton2)
        
    }
    
    
    func configureLayout(){
        
        view.addSubview(containerView)
        view.addSubview(vStackView)
        
        vStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            actionButton1.heightAnchor.constraint(equalToConstant: 44),
    
            vStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
            vStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            vStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            vStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -padding),
         
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 280)
        ])
    }
    
    
    func configureTitleLabel() {
        
        if let alertTitle = alertTitle{
            titleLabel.text = alertTitle
        }else{
            titleLabel.isHidden = true
        }
        
    }
    
    
    func configureActionButton1() {
        
        
        if let buttonTitle1 = buttonTitle1{
            actionButton1.set(backgroundColor: buttonColor1 ?? UIColor.systemPink, title: buttonTitle1)
            actionButton1.addTarget(self, action: #selector(button1Press), for: .touchUpInside)
        }else{
            actionButton1.isHidden = true
        }
    }
    
    
    func configureActionButton2() {
        
        if let buttonTitle2 = buttonTitle2{
            actionButton2.set(backgroundColor: buttonColor2 ?? UIColor.systemPink, title: buttonTitle2)
            actionButton2.addTarget(self, action: #selector(button2Press), for: .touchUpInside)
        }else{
            actionButton2.isHidden = true
        }
        
          
       }
    
    func configureMessageLabel() {
        
        if let alertmessage = alertmessage{
            messageLabel.text = alertmessage
        }else{
            messageLabel.isHidden = true
        }
      
       
    }
    
    
    
    @objc func button1Press() {
        dismiss(animated: true) {
            self.buttonAction1?()
        }
    }
    
    @objc func button2Press() {
          dismiss(animated: true) {
              self.buttonAction2?()
          }
      }

}

