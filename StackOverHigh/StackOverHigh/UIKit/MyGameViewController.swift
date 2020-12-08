//
//  MyGameViewController.swift
//  StackOverHigh
//
//  Created by niner wong on 2020/11/30.
//

import Foundation
import UIKit
import SnapKit

class MyGameViewController: UIViewController {
    
    
    
    var scnView: MySCNView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configMyUIs()
        configMySCNView()
    }
    
    private func configMyUIs() {
        view.backgroundColor = .black
        
        
    }
    
    private func configMySCNView() {
        scnView = MySCNView.init(frame: view.frame, options: nil, dadada: 0)
        view.addSubview(scnView!)
    }
    
    
    
    
    
    
    
    
    
    
}
