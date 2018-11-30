//
//  MenuScene.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Cartwheel Galaxy Inc. All rights reserved.
//

import SpriteKit
import GameplayKit

class MenuScene: SKScene {
    
    /// GameViewControl setup as reference to handle SceneStates
    var gameViewController: GameViewController!
    
    /// Game Controls
    var menuControls: MenuControls!
    
    var sceneNumber: Int!
    
    private var lastUpdateTime : TimeInterval = 0
    
    /// Custom Initializer
    init(sceneSize: CGSize, referenceGVC: GameViewController) {
        
        /// Set reference of GameViewControl
        gameViewController = referenceGVC
        
        /// Create scene from code
        super.init(size: sceneSize)
        
        /// Menu Controls
        menuControls = MenuControls.init(inThisScene: self)
        
        sceneNumber = 0
        
        /// Load scene
        if let skView = gameViewController.view as! SKView? {
            self.size = skView.bounds.size
            self.scaleMode = .aspectFill
            
            // TODO: Comment or remove before release to App Store
            skView.ignoresSiblingOrder = true
            skView.showsFPS = true
            skView.showsNodeCount = true
        }
    }
    
    /// Included because is a requisite if a custom Init is used
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// Present Elements to the Scene
    override func didMove(to view: SKView) {
        
        self.addChild(menuControls.bgclassic)
        self.addChild(menuControls.playclassic)
        self.addChild(menuControls.scoreclassic)
        self.addChild(menuControls.storeclassic)
        
        if sceneNumber == 0{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Classic")
            menuControls.playclassic.texture = SKTexture.init(imageNamed: "Play Classic")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Classic")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Classic")
        }
        if sceneNumber == 1{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Retro")
            menuControls.playclassic.texture = SKTexture.init(imageNamed: "Play Retro")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Retro")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Retro")
        }
        if sceneNumber == 2{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Rainbow")
            menuControls.playclassic.texture = SKTexture.init(imageNamed: "Play Rainbow")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Rainbow")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Rainbow")
        }
        if sceneNumber == 3{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Light")
            menuControls.playclassic.texture = SKTexture.init(imageNamed: "Play Light")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Light")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Light")
        }
        if sceneNumber == 4{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Soccer")
            menuControls.playclassic.texture = SKTexture.init(imageNamed: "Play Soccer")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Soccer")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Soccer")
        }
        if sceneNumber == 5{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Dust")
            menuControls.playclassic.texture = SKTexture.init(imageNamed: "Play Dust")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Dust")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Dust")
        }
        if sceneNumber == 6{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background End_Times")
            menuControls.playclassic.texture = SKTexture.init(imageNamed: "Play End_Times")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store End_Times")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score End_Times")
        }
        if sceneNumber == 7{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Pumpkin")
            menuControls.playclassic.texture = SKTexture.init(imageNamed: "Play Pumpkin")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Pumpkin")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Pumpkin")
        }
        if sceneNumber == 8{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed:"Background Scream_Red")
            menuControls.playclassic.texture = SKTexture.init(imageNamed:  "Play Scream_Red")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Scream_Red")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Scream_Red")
        }
        if sceneNumber == 9{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed:"Background Scream_Green")
            menuControls.playclassic.texture = SKTexture.init(imageNamed:  "Play Scream_Green")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Scream_Green")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Scream_Green")
        }
        if sceneNumber == 10{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Toxic")
            menuControls.playclassic.texture = SKTexture.init(imageNamed:  "Play Toxic")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Toxic")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Toxic")
        }
        if sceneNumber == 11{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Dessert")
            menuControls.playclassic.texture = SKTexture.init(imageNamed:  "Play Dessert")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Dessert")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Dessert")
        }
        if sceneNumber == 12{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Classy")
            menuControls.playclassic.texture = SKTexture.init(imageNamed:  "Play Classy")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Classy")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Classy")
        }
        if sceneNumber == 13{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Urbanic")
            menuControls.playclassic.texture = SKTexture.init(imageNamed:  "Play Urbanic")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Urbanic")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Urbanic")
        }
        if sceneNumber == 14{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Autumn")
            menuControls.playclassic.texture = SKTexture.init(imageNamed:  "Play Autumn")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Autumn")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Autumn")
        }
        if sceneNumber == 15{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Ocher")
            menuControls.playclassic.texture = SKTexture.init(imageNamed:  "Play Ocher")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Ocher")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Ocher")
        }
        if sceneNumber == 16{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Snowflake")
            menuControls.playclassic.texture = SKTexture.init(imageNamed:  "Play Snowflake")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Snowflake")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Snowflake")
        }
        if sceneNumber == 17{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Hanukkah")
            menuControls.playclassic.texture = SKTexture.init(imageNamed:  "Play Hanukkah")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Hanukkah")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Hanukkah")
        }
        if sceneNumber == 18{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background 2019")
            menuControls.playclassic.texture = SKTexture.init(imageNamed:  "Play 2019")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store 2019")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score 2019")
        }
        if sceneNumber == 19{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background Kwanza")
            menuControls.playclassic.texture = SKTexture.init(imageNamed:  "Play Kwanza")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store Kwanza")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score Kwanza")
        }
        if sceneNumber == 20{
            menuControls.bgclassic.texture = SKTexture.init(imageNamed: "Background NewYear")
            menuControls.playclassic.texture = SKTexture.init(imageNamed:  "Play NewYear")
            menuControls.storeclassic.texture = SKTexture.init(imageNamed: "Store NewYear")
            menuControls.scoreclassic.texture = SKTexture.init(imageNamed: "Score NewYear")
        }
        if sceneNumber == 21{
            menuControls.bgclassic.texture = SKTexture(imageNamed: "Background Christmas")
            menuControls.playclassic.texture = SKTexture(imageNamed: "Play Christmas")
            menuControls.scoreclassic.texture = SKTexture(imageNamed: "Store Christmas")
            menuControls.storeclassic.texture = SKTexture(imageNamed: "Score Christmas")
        }
        if sceneNumber == 22{
            menuControls.bgclassic.texture = SKTexture(imageNamed: "Background IcyBlue")
            menuControls.playclassic.texture = SKTexture(imageNamed: "Play IcyBlue")
            menuControls.scoreclassic.texture = SKTexture(imageNamed: "Store IcyBlue")
            menuControls.storeclassic.texture = SKTexture(imageNamed: "Score IcyBlue")
        }
        
    }
    
    /// Before another Scence will be presented
    override func willMove(from view: SKView) {
        removeAllChildren()
    }
    
    /// Touch event
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let item = atPoint(location)
            
            /// Exit and return to GameScene
            if (item.name == "buttonSprite-Play") {
                gameViewController.gameScene.sceneNumber = gameViewController.menuScene.sceneNumber
                gameViewController.skView.presentScene(gameViewController.gameScene)
            }
            if (item.name == "buttonSprite-Store") {
                gameViewController.storeScene.sceneNumber = gameViewController.menuScene.sceneNumber
                gameViewController.skView.presentScene(gameViewController.storeScene)
                
            }
            if (item.name == "buttonSprite-Score") {
                gameViewController.scoreScene.sceneNumber = gameViewController.menuScene.sceneNumber
                gameViewController.skView.presentScene(gameViewController.scoreScene)
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
}
