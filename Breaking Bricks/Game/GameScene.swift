//
//  GameScene.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Cartwheel Galaxy Inc. All rights reserved.
//

import SpriteKit
import GameplayKit
import AVFoundation
import Firebase

//Time Var and Let
let timeSeconds = 90
var timer = Timer()
var seconds = timeSeconds
var timerSeconds = ("\(seconds)")

var timeSecondsPlus = 0
var secondsPlus = timeSecondsPlus
var timerSecondsPlus = ("\(secondsPlus)")

//Score Var and Let
let points = 0
var score = points
var pointsCount = ("\(score)")

var coin: Int = 0
var coinsCount = ("\(coin)")

var win: Int = 0
var winsCount = ("\(win)")

var lose: Int = 0
var loseCount = ("\(lose)")

let BallCategoryName = "ball"
let BallCategoryName1 = "ball1"
let PaddleCategoryName = "paddle"
let BlockCategoryName = "block"
let GameMessageName = "gameMessage"

let BallCategory   : UInt32 = 0x1 << 0
let BottomCategory : UInt32 = 0x1 << 1
let BlockCategory  : UInt32 = 0x1 << 2
let PaddleCategory : UInt32 = 0x1 << 3
let BorderCategory : UInt32 = 0x1 << 4

//fx sounds
var hitWall = AVAudioPlayer()
var ballPaddle = AVAudioPlayer()
var hitBlock = AVAudioPlayer()


class GameScene: SKScene, SKPhysicsContactDelegate {
    
    
    var sceneNumber: Int!
    
    // the definition of the var is FingerPaddle
    var isFingerOnPaddle = false
    
    /// GameViewControl setup as reference to handle SceneStates
    var gameViewController: GameViewController!
    
    /// Game Controls
    var gameControls: GameControls!
    var brickSprite: [BrickSprite] = []
    var brickSpriteRow6: [BrickSpriteRow6] = []
    
    private var lastUpdateTime : TimeInterval = 0
    
    /// Custom Initializer
    init(sceneSize: CGSize, referenceGVC: GameViewController) {
        
        /// Set reference of GameViewControl
        gameViewController = referenceGVC
        
        /// Create scene from code
        super.init(size: sceneSize)
        
        /// Game Controls
        gameControls = GameControls.init(inThisScene: self)
        sceneNumber = 0
        
        //IF
        var numBricks = 0
        
        for row in 0...4{
            for col in 0...4{
                // Bricks Controls
                brickSprite.append(BrickSprite.init(numBricks: numBricks, row: row ,col: col ,inThisScene: self))
                numBricks += 1
            }
        }
        
        var numBricksRow6 = 0
        
        for row6 in 0...3{
            for col6 in 0...5 {
                //Bricks Row 6 Controls
                brickSpriteRow6.append(BrickSpriteRow6.init(numBricks: numBricksRow6, row: row6, col: col6, inThisScene: self))
                numBricksRow6 += 1
            }
        }
        
        
        /// Load scene
        if let skView = gameViewController.view as! SKView? {
            self.size = skView.bounds.size
            self.scaleMode = .aspectFill
            
            // TODO: Comment or remove before release to App Store
            skView.ignoresSiblingOrder = true
            skView.showsFPS = true
            skView.showsNodeCount = true
        }
    }//END Custom Init
    
    /// Included because is a requisite if a custom Init is used
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }//END init
    
    /// Present Elements to the Scene
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        //Sounds
        do{
            hitWall = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath:Bundle.main.path(forResource:"WallBounce_2.2", ofType: "wav")!))
            hitWall.prepareToPlay()
            
            hitBlock = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath:Bundle.main.path(forResource:"HitBox_1.2", ofType: "wav")!))
            hitBlock.prepareToPlay()
            
            ballPaddle = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath:Bundle.main.path(forResource:"BallPadle_Sample", ofType: "wav")!))
            ballPaddle.prepareToPlay()
        }
        catch{
            print(error)
        }

        //            //Mute Button
        //            hitWall.volume = 0
        //            hitBlock.volume = 0
        //            ballPaddle.volume = 0
        
        // Background and paddle
        self.addChild(gameControls.bgclassic)
        self.addChild(gameControls.paddleclassic)
        // Bricks
        self.addChild(gameControls.scoreBrick)
        self.addChild(gameControls.timerBrick)
        // Label
        self.addChild(gameControls.timerLabel)
        self.addChild(gameControls.scoreLabel)
        
        
        if sceneNumber == 0{
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Classic")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Classic")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_score Classic")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_score Classic")

            // Color label
            gameControls.timerLabel.fontColor = .white
            gameControls.scoreLabel.fontColor = .white
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].blockclassic)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].blockclassic)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Classic")
            
            gameState.enter(WaitingForTap.self)
            
        }
        if(sceneNumber == 1 ){

            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Retro")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Retro")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score Retro")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score Retro")

            // Color label
            gameControls.timerLabel.fontColor = .white
            gameControls.scoreLabel.fontColor = .white
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].retroLifeSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].retroLifeSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Retro")
            
            gameState.enter(WaitingForTap.self)
        }
        if(sceneNumber == 2 ){

            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Rainbow")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Rainbow")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_score Rainbow")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_score Rainbow")

            // Color label
            gameControls.timerLabel.fontColor = .white
            gameControls.scoreLabel.fontColor = .white
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].rainbowSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].rainbowSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Rainbow")
            
            gameState.enter(WaitingForTap.self)
        }
        if(sceneNumber == 3 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Light")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Light")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_score Light")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_score Light")

            // Color label
            gameControls.timerLabel.fontColor = UIColor(red:0.54, green:0.54, blue:0.54, alpha:1.0)
            gameControls.scoreLabel.fontColor = UIColor(red:0.54, green:0.54, blue:0.54, alpha:1.0)
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].lightSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].lightSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Light")
            
            gameState.enter(WaitingForTap.self)
        }
        if(sceneNumber == 4 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Soccer")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Soccer")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score Soccer")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score Soccer")

            // Color label
            gameControls.timerLabel.fontColor = UIColor(red:0.96, green:0.75, blue:0.00, alpha:1.0)
            gameControls.scoreLabel.fontColor = UIColor(red:0.96, green:0.75, blue:0.00, alpha:1.0)
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].soccerSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].soccerSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Soccer")
            
            gameState.enter(WaitingForTap.self)
            
        }//END SCENENUMBER 4
        if(sceneNumber == 5 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Dust")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Dust")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score Dust")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score Dust")

            // Color label
            gameControls.timerLabel.fontColor = .white
            gameControls.scoreLabel.fontColor = .white
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].spaceDustSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].spaceDustSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Dust")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER 5
        if(sceneNumber == 6){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background End_Times")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle End_Times")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score End_Times")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score End_Times")

            // Color label
            gameControls.timerLabel.fontColor = .white
            gameControls.scoreLabel.fontColor = .white
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].endTimesSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].endTimesSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball End_Times")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 7){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Pumpkin")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Pumpkin")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score Pumpkin")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score Pumpkin")

            // Color label
            gameControls.timerLabel.fontColor = .white
            gameControls.scoreLabel.fontColor = .white
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].pumpkinSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].pumpkinSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Pumpkin")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 8){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Scream_Red")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Scream_Red")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score Scream_Red")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score Scream_Red")
            
            // Color label
            gameControls.timerLabel.fontColor = .white
            gameControls.scoreLabel.fontColor = .white
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].screamRedSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].screamRedSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Scream_Red")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 9){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Scream_Green")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Scream_Green")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score Scream_Green")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score Scream_Green")

            // Color label
            gameControls.timerLabel.fontColor = .white
            gameControls.scoreLabel.fontColor = .white
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].screamGreenSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].screamGreenSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Scream_Green")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 10 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Toxic")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Toxic")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_score Acid")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_score Acid")

            // Color label
            gameControls.timerLabel.fontColor = UIColor(red:0.93, green:0.95, blue:0.06, alpha:1.0)
            gameControls.scoreLabel.fontColor = UIColor(red:0.93, green:0.95, blue:0.06, alpha:1.0)
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].acidRainSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].acidRainSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Toxic")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER 10
        if(sceneNumber == 11 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Dessert")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Dessert")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_score Dessert")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_score Dessert")

            // Color label
            gameControls.timerLabel.fontColor = .black
            gameControls.scoreLabel.fontColor = .black
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].dessertSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].dessertSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Dessert")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 12 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Classy")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Classy")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score Classy")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score Classy")
            
            // Color label
            gameControls.timerLabel.fontColor = UIColor(red:0.95, green:0.75, blue:0.04, alpha:1.0)
            gameControls.scoreLabel.fontColor = UIColor(red:0.95, green:0.75, blue:0.04, alpha:1.0)
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].classySkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].classySkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Classy")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 13 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Urbanic")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Urbanic")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score Urbanic")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score Urbanic")

            // Color label
            gameControls.timerLabel.fontColor = .black
            gameControls.scoreLabel.fontColor = .black
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].urbanicSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].urbanicSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Urbanic")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 14 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Autumn")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Autumn")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score Autumn")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score Autumn")

            // Color label
            gameControls.timerLabel.fontColor = .white
            gameControls.scoreLabel.fontColor = .white
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].autumnSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].autumnSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Autumn")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 15 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Ocher")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Ocher")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score Ocher")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score Ocher")

            // Color label
            gameControls.timerLabel.fontColor = .black
            gameControls.scoreLabel.fontColor = .black
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].ocherSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].ocherSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Ocher")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 16 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Snowflake")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Snowflake")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score Snowflake")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score Snowflake")
            
            // Color label
            gameControls.timerLabel.fontColor = UIColor(red:0.58, green:0.25, blue:0.02, alpha:1.0)
            gameControls.scoreLabel.fontColor = UIColor(red:0.58, green:0.25, blue:0.02, alpha:1.0)
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].snowflakeSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].snowflakeSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Snowflake")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 17 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Hanukkah")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Hanukkah")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score Hanukkah")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score Hanukkah")
            
            // Color label
            gameControls.timerLabel.fontColor = .white
            gameControls.scoreLabel.fontColor = .white
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].hanukkahSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].hanukkahSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Hanukkah")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 18 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background 2019")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle 2019")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score 2019")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score 2019")
            
            // Color label
            gameControls.timerLabel.fontColor = .black
            gameControls.scoreLabel.fontColor = .black
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].dosmildiecinueveSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].dosmildiecinueveSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball 2019")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 19 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Kwanza")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Kwanza")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score Kwanza")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score Kwanza")
            
            // Color label
            gameControls.timerLabel.fontColor = .white
            gameControls.scoreLabel.fontColor = .white
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].kwanzaSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].kwanzaSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Kwanza")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 20 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background NewYear")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle NewYear")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score NewYear")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score NewYear")
            
            // Color label
            gameControls.timerLabel.fontColor = .white
            gameControls.scoreLabel.fontColor = .white
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].newYearSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].newYearSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball NewYear")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 21 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background Christmas")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle Christmas")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score Christmas")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score Christmas")
            
            // Color label
            gameControls.timerLabel.fontColor = .white
            gameControls.scoreLabel.fontColor = .white
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].christmasSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].christmasSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball Christmas")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
        if(sceneNumber == 22 ){
            
            // Background and paddle
            gameControls.bgclassic.texture = SKTexture(imageNamed: "Background IcyBlue")
            gameControls.paddleclassic.texture = SKTexture(imageNamed: "Paddle IcyBlue")
            // Bricks
            gameControls.scoreBrick.texture = SKTexture(imageNamed: "Timer_Score IcyBlue")
            gameControls.timerBrick.texture = SKTexture(imageNamed: "Timer_Score IcyBlue")
            
            // Color label
            gameControls.timerLabel.fontColor = .white
            gameControls.scoreLabel.fontColor = .white
            
            //Bricks
            for brick in 0...24{
                self.addChild(brickSprite[brick].icyBlueSkin)
            }
            
            //Bricks 6
            for brick6 in 0...23{
                self.addChild(brickSpriteRow6[brick6].icyBlueSkin)
            }
            
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            physicsWorld.contactDelegate = self as? SKPhysicsContactDelegate
            
            //Paddle and ball
            let ball = gameControls.ballclassic
            
            let paddle = gameControls.paddleclassic
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            //let bottomRect = CGRect(x: 0, y: 0, width: frame.size.width, height: 1)
            
            let bottom = SKNode()
            bottom.physicsBody = SKPhysicsBody(edgeLoopFrom: bottomRect)
            addChild(bottom)
            
            paddle.position = CGPoint(x: self.size.width/2 , y: self.size.height * (12.29/100))
            
            bottom.physicsBody!.categoryBitMask = BottomCategory
            ball.physicsBody!.categoryBitMask = BallCategory
            paddle.physicsBody!.categoryBitMask = PaddleCategory
            gameControls.borderBody.categoryBitMask = BorderCategory
            ball.physicsBody!.contactTestBitMask = BottomCategory | BlockCategory | BorderCategory | PaddleCategory
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            //Timer And Score
            gameControls.scoreLabel.text = pointsCount
            gameControls.timerLabel.text = timerSeconds
            
            self.addChild(gameControls.ballclassic)
            gameControls.ballclassic.texture = SKTexture(imageNamed: "Ball IcyBlue")
            
            gameState.enter(WaitingForTap.self)
        }//END SCENENUMBER
    }//END didMove
    
    lazy var gameState: GKStateMachine = GKStateMachine(states: [
        WaitingForTap(scene: self),
        Playing(scene: self),
        GameOver(scene: self)])
    
    
    var gameWon : Bool = false {
        
        didSet {
            
            self.gameViewController.interstitial = self.gameViewController.createAndLoadInterstitial()

            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 ) {
                Analytics.logEvent("GameMenu", parameters: nil)
                
                //                let transition = SKTransition.fade(with: UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0), duration: 5)
                //                let menuScene = SKScene(fileNamed: "MenuScene") as! MenuScene
                //                self.view?.presentScene(menuScene, transition: transition)
                self.gameViewController.skView.presentScene(self.gameViewController.menuScene)
            }
            //gameWon ? gameWonSound.play() : gameOverSound.play()
        }
    
        
    }
    
    /// Before another Scence will be presented
    override func willMove(from view: SKView) {
        removeAllChildren()
    }//END WillMove
    
    /// Touch event
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        switch gameState.currentState {
        case is WaitingForTap:
            gameState.enter(Playing.self)
            isFingerOnPaddle = true
            //ADD THIS LINE
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(GameScene.clock), userInfo: nil, repeats:true)
            
        case is Playing:
            let touch = touches.first
            let touchLocation = touch!.location(in: self)
            let item = atPoint(touchLocation)
            
            if item.name == "paddle"{
                isFingerOnPaddle = true
            }
            
            if let body = physicsWorld.body(at: touchLocation) {
                
                if body.node!.name == PaddleCategoryName {
                    
                    isFingerOnPaddle = true
                    
                }
            }
            
        case is GameOver:
            
            //Timer Line
            seconds = timeSeconds
            //Score Line
            score = points
            
            
        default:
            break
        }
        
        for touch in touches {
            let location = touch.location(in: self)
            let item = atPoint(location)
            
            
        }
    }//END TouchesBegan
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //1
        if isFingerOnPaddle {
            //2
            let touch = touches.first
            let touchLocation = touch!.location(in: self)
            let previousLocation = touch!.previousLocation(in: self)
            //3
            let paddle = childNode(withName: PaddleCategoryName) as! SKSpriteNode
            //4
            var paddleX = paddle.position.x + (touchLocation.x - previousLocation.x)
            //5
            paddleX = max(paddleX, paddle.size.width/2)
            paddleX = min(paddleX, size.width - paddle.size.width/2)
            //6
            paddle.position = CGPoint(x: paddleX, y: paddle.position.y)

            print(touchLocation.x)
        }
    }//END TouchesMoved
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Paddle
        isFingerOnPaddle = false
    }//END TouchesEnded
    
    
    
    
    @objc func clock() {
        seconds=seconds-1
        secondsPlus=secondsPlus+1
        gameControls.timerLabel.text = ("\(seconds)")
        if (seconds==0){
            gameState.enter(GameOver.self)
            gameWon = false
            timer.invalidate()
            
        }
    }//END Clock
    
    
    override func update(_ currentTime: TimeInterval) {
        
        gameState.update(deltaTime: currentTime)
        
    }//END Update
    
    
    func didBegin(_ contact: SKPhysicsContact) {
        
        if gameState.currentState is Playing {
            
            // 1
            var firstBody: SKPhysicsBody
            var secondBody: SKPhysicsBody
            // 2
            if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask {
                firstBody = contact.bodyA
                secondBody = contact.bodyB
            } else {
                firstBody = contact.bodyB
                secondBody = contact.bodyA
            }
            // 3
            if firstBody.categoryBitMask == BallCategory && secondBody.categoryBitMask == BottomCategory {
                /*print("Hit bottom. First contact has been made.") Line replaced with the following*/
                gameState.enter(GameOver.self)
                gameWon = false
                lose += 1
                print("Ya perdiste", lose)
                timer.invalidate()
                saveValues()
            }
            
            if firstBody.categoryBitMask == BallCategory && secondBody.categoryBitMask == BlockCategory {
                breakBlock(node: secondBody.node!)
                
                //TODO: check if the game has been won
                if isGameWon() {
                    win += 1
                    coin += 1
                    print("Ya ganaste", win)
                    gameState.enter(GameOver.self)
                    gameWon = true
                    timer.invalidate()
                    saveValues()
                    self.gameViewController.showVideoReward()
                    
                }
            }
            
            
            //Adding soun effects
            if firstBody.categoryBitMask == BallCategory && secondBody.categoryBitMask == BorderCategory {
                
                hitWall.play()
                
            }
            if firstBody.categoryBitMask == BallCategory && secondBody.categoryBitMask == PaddleCategory {
                
                ballPaddle.play()
                
            }
        }
        
    }//END DidBegin
    
    func saveValues() {
        // Create an intance of UserDefaults
        let userDefaults = UserDefaults.standard
        
        //Storing values of different objects
        userDefaults.setValue(coin, forKey: "coins")
        //Retrive Data
        let coinValue = userDefaults.integer(forKey: "coins")
        print("Coins: \(coinValue)")
        
        //Storing values of different objects
        userDefaults.setValue(win, forKey: "wins")
        //Retrive Data
        let winValue = userDefaults.integer(forKey: "wins")
        print("Wins: \(winValue)")
        
        //Storing values of different objects
        userDefaults.setValue(lose, forKey: "loses")
        //Retrive Data
        let loseValue = userDefaults.integer(forKey: "loses")
        print("Loses: \(loseValue)")
        
        //Storing values of different objects
        userDefaults.setValue(secondsPlus, forKey: "playtime")
        //Retrive Data
        let timeValue = userDefaults.integer(forKey: "playtime")
        print("Playtime: \(timeValue)")
    }
    
    //Position and break the flags bricks
    func breakBlock(node: SKNode) {
        //Ading Sounds
        hitBlock.play()
        
        node.removeFromParent()
        //Score
        score += 1
        
        ///Test Coin
        //coin += 1
        
        gameControls.scoreLabel.text = ("\(score)")
    }//END BreakBlocks
    
    func randomFloat(from: CGFloat, to: CGFloat) -> CGFloat {
        
        let rand: CGFloat = CGFloat(Float(arc4random()) / 0xFFFFFFFF)
        return (rand) * (to - from) + from
    }//End RandomFloat
    
    func isGameWon() -> Bool {
        
        var numberOfBricks = 0
        self.enumerateChildNodes(withName: BlockCategoryName) {
            
            node, stop in
            numberOfBricks = numberOfBricks + 1
            
        }
        
        return numberOfBricks == 0
        
    }//END IsGameWon
    
}//END CLASS
