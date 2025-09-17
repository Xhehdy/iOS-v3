//
//  RememberCardView.swift
//  FlutterwaveSDK
//
//  Created by Ismail Ibrahim on 17/09/2025.
//

import Foundation

class RememberCardView : UIView{
    
    lazy var rememberCardCheck: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "rave_check_box",in: Bundle.getResourcesBundle(), compatibleWith: nil), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    lazy var rememberCardText: UILabel = {
        let label = UILabel()
        label.text = "Remember this card next time"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(hex: "#4A4A4A")
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(rememberCardCheck)
        
        addSubview(rememberCardText)
        
        
        setupConstriant()
    }
    
    func setupConstriant(){
        NSLayoutConstraint.activate([
            rememberCardCheck.topAnchor.constraint(equalTo: topAnchor, constant:18),
            rememberCardCheck.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 13),
            rememberCardCheck.heightAnchor.constraint(equalToConstant: 32),
            rememberCardCheck.widthAnchor.constraint(equalToConstant: 39),
            
            
            rememberCardText.leadingAnchor.constraint(equalTo: rememberCardCheck.trailingAnchor, constant: 6),
            rememberCardText.centerYAnchor.constraint(equalTo: rememberCardCheck.centerYAnchor),

        ])
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
