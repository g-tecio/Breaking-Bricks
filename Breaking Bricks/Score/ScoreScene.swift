//
//  ScoreScene.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Cartwheel Galaxy Inc. All rights reserved.
//

import SpriteKit
import GameplayKit

class ScoreScene: SKScene {
    
    /// GameViewControl setup as reference to handle SceneStates
    var gameViewController: GameViewController!
    
    /// Game Controls
    var scoreControls: ScoreControls!
    
    var sceneNumber: Int!
    
    private var lastUpdateTime : TimeInterval = 0
    
    /// Custom Initializer
    init(sceneSize: CGSize, referenceGVC: GameViewController) {
        
        /// Set reference of GameViewControl
        gameViewController = referenceGVC
        
        /// Create scene from code
        super.init(size: sceneSize)
        
        /// Menu Controls
        scoreControls = ScoreControls.init(inThisScene: self)
        
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

        self.addChild(scoreControls.bgclassic)
        self.addChild(scoreControls.menuclassic)
        self.addChild(scoreControls.winclassic)
        self.addChild(scoreControls.winclassiclabel)
        self.addChild(scoreControls.loseclassic)
        self.addChild(scoreControls.loseclassiclabel)
        self.addChild(scoreControls.timeclassic)
        self.addChild(scoreControls.timeclassiclabel)
        
        self.addChild(scoreControls.scoreTimeLabel)
        self.addChild(scoreControls.scoreLoseLabel)
        self.addChild(scoreControls.scoreWinLabel)
        
        if sceneNumber == 0{

            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Classic")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Classic")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Classic")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Classic")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Classic")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Classic")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Classic")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "MENU Classic")
            
            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
            
        }
        if sceneNumber == 1{

            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Retro")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Retro")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Retro")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Retro")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Retro")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Retro")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Retro")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "MENU Retro")

            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
            
        }
        if sceneNumber == 2{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Rainbow")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Rainbow")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Empty 1 Rainbow")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Rainbow")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Empty 2 Rainbow")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Rainbow")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Empty 3 Rainbow")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "Menu Rainbow")
            
            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
        }
        
        if sceneNumber == 3{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Light")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Light")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Mutipurpose Light")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Light")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Mutipurpose Light")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Light")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Mutipurpose Light")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "MENU Light")
            
            scoreControls.scoreWinLabel.fontColor = UIColor(red:0.54, green:0.54, blue:0.54, alpha:1.0)
            scoreControls.scoreLoseLabel.fontColor = UIColor(red:0.54, green:0.54, blue:0.54, alpha:1.0)
            scoreControls.scoreTimeLabel.fontColor = UIColor(red:0.54, green:0.54, blue:0.54, alpha:1.0)
            
        }
        if sceneNumber == 4{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Soccer")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Soccer")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Soccer")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Soccer")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Soccer")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Soccer")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Soccer")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "MENU Soccer")

            scoreControls.scoreWinLabel.fontColor = UIColor(red:0.96, green:0.75, blue:0.00, alpha:1.0)
            scoreControls.scoreLoseLabel.fontColor = UIColor(red:0.96, green:0.75, blue:0.00, alpha:1.0)
            scoreControls.scoreTimeLabel.fontColor = UIColor(red:0.96, green:0.75, blue:0.00, alpha:1.0)
            
        }
        if sceneNumber == 5{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Dust")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Dust")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Dust")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Dust")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Dust")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Dust")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Dust")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "MENU Dust")

            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
            
        }
        if sceneNumber == 6{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background End_Times")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins End_Times")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose End_Times")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose End_Times")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose End_Times")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time End_Times")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose End_Times")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "MENU End_Times")
            
            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
            
        }
        if sceneNumber == 7{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Pumpkin")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Pumpkin")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Pumpkin")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Pumpkin")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Pumpkin")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Pumpkin")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Pumpkin")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "MENU Pumpkin")

            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
            
        }
        if sceneNumber == 8{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Scream_Red")
            scoreControls.winclassic.texture = SKTexture(imageNamed:"Wins Scream_Red")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Scream_Red")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Scream_Red")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Scream_Red")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Scream_Red")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Scream_Red")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "Menu Scream_Red")
            
            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
            
        }
        if sceneNumber == 9{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Scream_Green")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Scream_Green")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Scream_Green")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Scream_Green")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Scream_Green")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Scream_Green")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Scream_Green")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "Menu Scream_Green")

            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
            
        }
        if sceneNumber == 10{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Toxic")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Toxic")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Mutipurpose Toxic")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Toxic")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Mutipurpose Toxic")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Toxic")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Mutipurpose Toxic")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "MENU Toxic")
            
            scoreControls.scoreWinLabel.fontColor = UIColor(red:0.93, green:0.95, blue:0.06, alpha:1.0)
            scoreControls.scoreLoseLabel.fontColor = UIColor(red:0.93, green:0.95, blue:0.06, alpha:1.0)
            scoreControls.scoreTimeLabel.fontColor = UIColor(red:0.93, green:0.95, blue:0.06, alpha:1.0)
            
        }
        if sceneNumber == 11{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Dessert")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Dessert")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipourpose Dessert")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Dessert")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipourpose Dessert")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Dessert")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipourpose Dessert")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "MENU Dessert")
            
            scoreControls.scoreWinLabel.fontColor = .black
            scoreControls.scoreLoseLabel.fontColor = .black
            scoreControls.scoreTimeLabel.fontColor = .black
            
        }
        if sceneNumber == 12{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Classy")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Classy")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Classy")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Classy")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Classy")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Classy")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Classy")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "MENU Classy")
            
            scoreControls.scoreWinLabel.fontColor = UIColor(red:0.95, green:0.75, blue:0.04, alpha:1.0)
            scoreControls.scoreLoseLabel.fontColor = UIColor(red:0.95, green:0.75, blue:0.04, alpha:1.0)
            scoreControls.scoreTimeLabel.fontColor = UIColor(red:0.95, green:0.75, blue:0.04, alpha:1.0)
            
        }
        if sceneNumber == 13{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Urbanic")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Urbanic")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Urbanic")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Urbanic")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Urbanic")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Urbanic")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Urbanic")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "MENU Urbanic")
            
            scoreControls.scoreWinLabel.fontColor = .black
            scoreControls.scoreLoseLabel.fontColor = .black
            scoreControls.scoreTimeLabel.fontColor = .black
            
        }
        if sceneNumber == 14{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Autumn")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Autumn")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Autumn")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Autumn")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Autumn")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Autumn")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Autumn")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "Menu Autumn")
            
            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
            
        }
        if sceneNumber == 15{

            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Ocher")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Ocher")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Ocher")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Ocher")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Ocher")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Ocher")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Ocher")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "Menu Ocher")
            
            scoreControls.scoreWinLabel.fontColor = .black
            scoreControls.scoreLoseLabel.fontColor = .black
            scoreControls.scoreTimeLabel.fontColor = .black
            
        }
        if sceneNumber == 16{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Snowflake")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Snowflake")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Snowflake")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Snowflake")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Snowflake")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Snowflake")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Snowflake")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "Menu Snowflake")
            
            scoreControls.scoreWinLabel.fontColor = UIColor(red:0.58, green:0.25, blue:0.02, alpha:1.0)
            scoreControls.scoreLoseLabel.fontColor = UIColor(red:0.58, green:0.25, blue:0.02, alpha:1.0)
            scoreControls.scoreTimeLabel.fontColor = UIColor(red:0.58, green:0.25, blue:0.02, alpha:1.0)
            
        }
        if sceneNumber == 17{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Hanukkah")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Hanukkah")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Hanukkah")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Hanukkah")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Hanukkah")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Hanukkah")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Hanukkah")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "Menu Hanukkah")
            
            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
            
        }
        if sceneNumber == 18{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background 2019")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins 2019")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "WinsBlank 2019")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose 2019")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "LoseBlank 2019")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time 2019")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "TimeBlank 2019")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "Menu 2019")
            
            scoreControls.scoreWinLabel.fontColor = .black
            scoreControls.scoreLoseLabel.fontColor = .black
            scoreControls.scoreTimeLabel.fontColor = .black
            
        }
        if sceneNumber == 19{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Kwanza")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Kwanza")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Kwanza")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Kwanza")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Kwanza")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Kwanza")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Kwanza")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "Menu Kwanza")
            
            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
            
        }
        if sceneNumber == 20{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background NewYear")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins NewYear")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "WinsBlank NewYear")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose NewYear")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "LoseBlank NewYear")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Lose NewYear")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "LoseBlank NewYear")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "Menu NewYear")
            
            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
            
        }
        if sceneNumber == 21{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background Christmas")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins Christmas")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Christmas")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose Christmas")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Christmas")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time Christmas")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose Christmas")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "Menu Christmas")
            
            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
            
        }
        if sceneNumber == 22{
            
            scoreControls.bgclassic.texture = SKTexture(imageNamed: "Background IcyBlue")
            scoreControls.winclassic.texture = SKTexture(imageNamed: "Wins IcyBlue")
            scoreControls.winclassiclabel.texture = SKTexture(imageNamed: "Multipurpose IcyBlue")
            scoreControls.loseclassic.texture = SKTexture(imageNamed: "Lose IcyBlue")
            scoreControls.loseclassiclabel.texture = SKTexture(imageNamed: "Multipurpose IcyBlue")
            scoreControls.timeclassic.texture = SKTexture(imageNamed: "Time IcyBlue")
            scoreControls.timeclassiclabel.texture = SKTexture(imageNamed: "Multipurpose IcyBlue")
            scoreControls.menuclassic.texture = SKTexture(imageNamed: "Menu IcyBlue")
            
            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
            
        }

        scoreControls.scoreWinLabel.text = ("\(win)")
        scoreControls.scoreLoseLabel.text = ("\(lose)")
        scoreControls.scoreTimeLabel.text = ("\(secondsPlus)")
        
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
            if (item.name == "buttonSprite-Menu") {
                gameViewController.scoreScene.sceneNumber = gameViewController.menuScene.sceneNumber
                gameViewController.skView.presentScene(gameViewController.menuScene)
                
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
}
