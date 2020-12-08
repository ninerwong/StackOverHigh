//
//  MySCNView.swift
//  StackOverHigh
//
//  Created by niner wong on 2020/11/30.
//

import Foundation
import SceneKit

class MySCNView: SCNView {
    
    private var myScene: SCNScene!
    private var cameraNode: SCNNode!
    private var cameraParentNode: SCNNode!
    
    deinit {
        print("******* deinit MySCNView")
    }
    
    override init(frame: CGRect, options: [String : Any]? = nil) {
        super.init(frame: frame, options: options)
    }
    
    convenience init(frame: CGRect, options: [String : Any]? = nil, dadada: Int) {
        self.init(frame: frame, options: options)
        
        configScene()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            
            self.configCamera()
        }
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScene() {
        backgroundColor = .yellow
        
        myScene = SCNScene.init(named: "art.scnassets/Empty.scn")
//        myScene.background.contents = UIColor.black
        scene = myScene
//        scene.physicsWorld.contactDelegate = self
//        allowsCameraControl = true
        backgroundColor = .clear
//        delegate = self
        antialiasingMode = .multisampling4X
        isJitteringEnabled = true
        isMultipleTouchEnabled = false // 不要多点触控
        autoenablesDefaultLighting = true
        showsStatistics = true
        
        
    }
    
    private func configCamera() {
        cameraNode = SCNNode.init()
        cameraNode.camera = SCNCamera.init()
        cameraNode.position = SCNVector3.init(x: 0, y: 0, z: 10)
        
        cameraParentNode = SCNNode.init()
        cameraParentNode.position = SCNVector3.init(x: 0, y: 0, z: 0)
        
        myScene?.rootNode.addChildNode(cameraParentNode)
        cameraParentNode.addChildNode(cameraNode)
        cameraParentNode.eulerAngles = SCNVector3.init(x: Float.pi * -0.25, y: 0, z: 0)
        
    }
    
    
}


extension MySCNView {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        spawnCoin()
    }
    
    private func spawnCoin() {
        print(#function)
//        let coin = Coin.initCoin(radius: 0.5, height: 0.03)
        let coin = Coin.init()
        coin.position = SCNVector3.init(x: 0, y: 2, z: 0)

        myScene.rootNode.addChildNode(coin)
        
        
//        let cylinder = SCNCylinder.init(radius: 0.5, height: 0.03)
//        cylinder.firstMaterial?.diffuse.contents = UIColor.green
//        let coin = SCNNode.init(geometry: cylinder)
//        coin.position = SCNVector3.init(x: 0, y: 0, z: 0)
//        myScene.rootNode.addChildNode(coin)
        
    }
    
    
}
