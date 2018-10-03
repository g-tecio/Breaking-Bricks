//
//  GameScene.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Luis Reyes. All rights reserved.
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
        
        if sceneNumber == 0{
            
            // Background and paddle
            self.addChild(gameControls.bgclassic)
            self.addChild(gameControls.paddleclassic)
            // Bricks
            self.addChild(gameControls.scoreBrick)
            self.addChild(gameControls.timerBrick)
            // Label
            self.addChild(gameControls.timerLabel)
            self.addChild(gameControls.scoreLabel)
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
            
            gameState.enter(WaitingForTap.self)
            
        }
        if(sceneNumber == 1 ){
            
            // Background and paddle
            self.addChild(gameControls.retroLifeSkinBackground)
            self.addChild(gameControls.retroLifeSkinPaddle)
            // Bricks
            self.addChild(gameControls.retroLifeSkinScore)
            self.addChild(gameControls.retroLifeSkinTimer)
            // Label
            self.addChild(gameControls.timerLabel)
            self.addChild(gameControls.scoreLabel)
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
            let ball = gameControls.retroLifeSkinBall
            let paddle = gameControls.retroLifeSkinPaddle
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            
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
            
            self.addChild(gameControls.retroLifeSkinBall)
            
            gameState.enter(WaitingForTap.self)
        }
        if(sceneNumber == 2 ){
            
            // Background and paddle
            self.addChild(gameControls.rainbowBackground)
            self.addChild(gameControls.rainbowPaddle)
            // Bricks
            self.addChild(gameControls.rainbowScore)
            self.addChild(gameControls.rainbowTimer)
            // Label
            self.addChild(gameControls.timerLabel)
            self.addChild(gameControls.scoreLabel)
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
            let ball = gameControls.rainbowBall
            let paddle = gameControls.rainbowPaddle
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            
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
            
            self.addChild(gameControls.rainbowBall)
            
            gameState.enter(WaitingForTap.self)
        }
        if(sceneNumber == 3 ){
            
            // Background and paddle
            self.addChild(gameControls.lightBackground)
            self.addChild(gameControls.lightPaddle)
            // Bricks
            self.addChild(gameControls.lightScore)
            self.addChild(gameControls.lightTimer)
            // Label
            self.addChild(gameControls.timerLabel)
            self.addChild(gameControls.scoreLabel)
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
            let ball = gameControls.lightBall
            let paddle = gameControls.lightPaddle
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            
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
            
            self.addChild(gameControls.lightBall)
            
            gameState.enter(WaitingForTap.self)
        }
        if(sceneNumber == 4 ){
            
            // Background and paddle
            self.addChild(gameControls.soccerBackground)
            self.addChild(gameControls.soccerPaddle)
            // Bricks
            self.addChild(gameControls.soccerScore)
            self.addChild(gameControls.soccerTimer)
            // Label
            self.addChild(gameControls.timerLabel)
            self.addChild(gameControls.scoreLabel)
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
            let ball = gameControls.soccerBall
            let paddle = gameControls.soccerPaddle
            
            ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
            ball.position =  CGPoint(x: self.size.width/2 , y: self.size.height * (18.54/100))
            
            let bottomRect = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 1)
            
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
            
            self.addChild(gameControls.soccerBall)
            
            gameState.enter(WaitingForTap.self)
        }
        
    }//END didMove
    
    lazy var gameState: GKStateMachine = GKStateMachine(states: [
        WaitingForTap(scene: self),
        Playing(scene: self),
        GameOver(scene: self)])
    
    
    var gameWon : Bool = false {
        
        didSet {
            
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
        
        /*
            //Test Coin
            coin += 1
        */
        
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
