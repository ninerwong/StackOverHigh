//
//  Coin.swift
//  StackOverHigh
//
//  Created by niner wong on 2020/12/7.
//

import Foundation
import SceneKit

class Coin: SCNNode {
    
//    private var radius
    var coin: SCNNode?
//
//    static func initCoin(radius: CGFloat, height: CGFloat) -> Coin {
//
//        let cylinder = SCNCylinder.init(radius: radius, height: height)
//        cylinder.firstMaterial?.diffuse.contents = UIColor.green
//
////        let coin = super.init(geometry: cylinder)
//        let coin = Coin.init(geometry: cylinder)
//        coin.geometry = cylinder
//
//        return coin
//    }
    
    override init() {
        super.init()
        configCoin()
        addPhysicsBody()
    }
    
    private func configCoin() {
        let coinScene = SCNScene.init(named: "art.scnassets/Coin.scn")
        if let coin = coinScene?.rootNode.childNode(withName: "coin", recursively: true) {
            self.coin = coin
            addChildNode(coin)
        }
    }
    
//    convenience init(geometry: SCNGeometry) {
//
//    }
    
//    init(geometry: SCNGeometry) {
//
//        super.init()
//        self.geometry = geometry
////        super.init(geometry: geometry)
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addPhysicsBody() {
        
//        physicsBody = SCNPhysicsBody.init(type: .dynamic, shape: nil)
//        physicsBody?.isAffectedByGravity = true
        
    }
    
    
    
}
