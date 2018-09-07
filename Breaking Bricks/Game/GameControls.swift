//
//  GameControls.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Luis Reyes. All rights reserved.
//

import SpriteKit
import Device_swift

struct GameControls {
    
    let deviceType = UIDevice.current.deviceType
    
    //Screen Barrier
    let borderBody: SKPhysicsBody
    let scoreLabel: SKLabelNode
    let timerLabel: SKLabelNode
    
    ///Classic
    // Backgrounds
    let bgclassic: SKSpriteNode
    // Paddles
    let  paddleclassic: SKSpriteNode
    // Balls
    let ballclassic: SKSpriteNode
    //Timer
    let timerBrick: SKSpriteNode
    //Score
    let scoreBrick: SKSpriteNode
    
    
    //    /// Retro Life Skin
    //    // Backgrounds
    //    let retroLifeSkinBackground: SKSpriteNode
    //    // Paddles
    //    let retroLifeSkinPaddle: SKSpriteNode
    //    // Balls
    //    let retroLifeSkinBall: SKSpriteNode
    //    //Timer
    //    let retroLifeSkinTimer: SKSpriteNode
    //    //Score
    //    let retroLifeSkinScore: SKSpriteNode
    //
    //    /// Rainbow Skin
    //    // Backgrounds
    //    let rainbowBackground: SKSpriteNode
    //    // Paddles
    //    let rainbowPaddle: SKSpriteNode
    //    // Balls
    //    let rainbowBall: SKSpriteNode
    //    //Timer
    //    let rainbowTimer: SKSpriteNode
    //    //Score
    //    let rainbowScore: SKSpriteNode
    //
    //    /// Light Skin
    //    // Backgrounds
    //    let lightBackground: SKSpriteNode
    //    // Paddles
    //    let lightPaddle: SKSpriteNode
    //    // Balls
    //    let lightBall: SKSpriteNode
    //    //Timer
    //    let lightTimer: SKSpriteNode
    //    //Score
    //    let lightScore: SKSpriteNode
    //
    //    /// Soccer Skin
    //    // Backgrounds
    //    let soccerBackground: SKSpriteNode
    //    // Paddles
    //    let soccerPaddle: SKSpriteNode
    //    // Balls
    //    let soccerBall: SKSpriteNode
    //    //Timer
    //    let soccerTimer: SKSpriteNode
    //    //Score
    //    let soccerScore: SKSpriteNode
    
    
    init(inThisScene: GameScene) {
        
        
        //Barrier
        borderBody = SKPhysicsBody(edgeLoopFrom: inThisScene.frame)
        borderBody.friction = 0
        inThisScene.physicsBody = borderBody
        
        //Timer
        timerLabel = SKLabelNode.init(text: "TIME: ")
        timerLabel.name = "TimerLabel-Game"
        timerLabel.fontName = "Roboto-Regular"
        timerLabel.horizontalAlignmentMode = .center
        timerLabel.verticalAlignmentMode = .center
        timerLabel.fontColor = .white
        timerLabel.fontSize = 21
        timerLabel.zPosition = 4
        timerLabel.position = CGPoint(x: inThisScene.size.width*(79.73/100), y: inThisScene.size.height * (95.31/100))
        let resizeFactorFont:CGFloat = inThisScene.size.width / 407.0
        timerLabel.fontSize *= resizeFactorFont
        
        //Score
        scoreLabel = SKLabelNode.init(text: "BRICKS: ")
        scoreLabel.name = "ScoreLabel-Game"
        scoreLabel.fontName = "Roboto-Regular"
        scoreLabel.horizontalAlignmentMode = .center
        scoreLabel.verticalAlignmentMode = .center
        scoreLabel.fontColor = .white
        scoreLabel.fontSize = 21
        scoreLabel.zPosition = 4
        scoreLabel.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        scoreLabel.fontSize *= resizeFactorFont
        
        /// Classic
        // Backgrounds
        bgclassic = SKSpriteNode.init(imageNamed: "Background Classic")
        bgclassic.name = "background"
        bgclassic.zPosition = 1
        bgclassic.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        bgclassic.size = CGSize(
            width: ((bgclassic.size.width * (inThisScene.size.width / bgclassic.size.width))),
            height: (bgclassic.size.height * (inThisScene.size.height / bgclassic.size.height)))
        
        //Paddles
        paddleclassic = SKSpriteNode.init(imageNamed: "Paddle Classic")
        paddleclassic.name = "paddle"
        paddleclassic.zPosition = 3
        paddleclassic.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100) )
        
        //Balls
        ballclassic = SKSpriteNode.init(imageNamed: "Ball Classic")
        ballclassic.name = "ball"
        ballclassic.zPosition = 2
        ballclassic.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        ballclassic.physicsBody = SKPhysicsBody(circleOfRadius: (ballclassic.size.width / 2))
        ballclassic.physicsBody?.allowsRotation = false
        ballclassic.physicsBody?.affectedByGravity = true
        ballclassic.physicsBody?.friction = 0
        ballclassic.physicsBody?.restitution = 1
        ballclassic.physicsBody?.linearDamping = 0
        ballclassic.physicsBody?.angularDamping = 0
        ballclassic.physicsBody?.mass = 0.01
        
        //Timer Brick
        timerBrick = SKSpriteNode.init(imageNamed: "Timer_score Classic")
        timerBrick.zPosition = 3
        timerBrick.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        
        //Score Brick
        scoreBrick = SKSpriteNode.init(imageNamed: "Timer_score Classic")
        scoreBrick.zPosition = 3
        scoreBrick.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        
        
        if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone ){
            //16:9
            paddleclassic.size = CGSize(
                width: ((paddleclassic.size.width * (inThisScene.size.width / paddleclassic.size.width)*(25/100))),
                height: (paddleclassic.size.height * (inThisScene.size.height / paddleclassic.size.height)*(1.56/100)))
            paddleclassic.physicsBody = SKPhysicsBody(rectangleOf: paddleclassic.size)
            paddleclassic.physicsBody?.isDynamic = false
            paddleclassic.physicsBody?.friction = 0
            paddleclassic.physicsBody?.restitution = 1
            //16:9
            ballclassic.size = CGSize(
                width: (ballclassic.size.width * (inThisScene.size.width / ballclassic.size.width)*(4.63/100)),
                height: (ballclassic.size.height * (inThisScene.size.height / ballclassic.size.height)*(2.6/100)))
            ballclassic.physicsBody = SKPhysicsBody(circleOfRadius: (ballclassic.size.width / 2))
            ballclassic.physicsBody?.allowsRotation = false
            ballclassic.physicsBody?.affectedByGravity = true
            ballclassic.physicsBody?.friction = 0
            ballclassic.physicsBody?.restitution = 1
            ballclassic.physicsBody?.linearDamping = 0
            ballclassic.physicsBody?.angularDamping = 0
            ballclassic.physicsBody?.mass = 0.01
            //16:9
            timerBrick.size = CGSize(
                width: (timerBrick.size.width * (inThisScene.size.width / timerBrick.size.width)*(22/100)),
                height: (timerBrick.size.height * (inThisScene.size.height / timerBrick.size.height)*(4/100)))
            //16:9
            scoreBrick.size = CGSize(
                width: (scoreBrick.size.width * (inThisScene.size.width / scoreBrick.size.width)*(22.22/100)),
                height: (scoreBrick.size.height * (inThisScene.size.height / scoreBrick.size.height)*(4.17/100)))
            
        }else{
            //4:3
            paddleclassic.size = CGSize(
                width: ((paddleclassic.size.width * (inThisScene.size.width / paddleclassic.size.width)*(24.41/100))),
                height: (paddleclassic.size.height * (inThisScene.size.height / paddleclassic.size.height)*(2.56/100)))
            paddleclassic.physicsBody = SKPhysicsBody(rectangleOf: paddleclassic.size)
            paddleclassic.physicsBody?.isDynamic = false
            paddleclassic.physicsBody?.friction = 0
            paddleclassic.physicsBody?.restitution = 1
            //4:3
            ballclassic.size = CGSize(
                width: (ballclassic.size.width * (inThisScene.size.width / ballclassic.size.width)*(3.91/100)),
                height: (ballclassic.size.height * (inThisScene.size.height / ballclassic.size.height)*(2.93/100)))
            ballclassic.physicsBody = SKPhysicsBody(circleOfRadius: (ballclassic.size.width / 2))
            ballclassic.physicsBody?.allowsRotation = false
            ballclassic.physicsBody?.affectedByGravity = true
            ballclassic.physicsBody?.friction = 0
            ballclassic.physicsBody?.restitution = 1
            ballclassic.physicsBody?.linearDamping = 0
            ballclassic.physicsBody?.angularDamping = 0
            ballclassic.physicsBody?.mass = 0.01
            //4:3
            timerBrick.size = CGSize(
                width: (timerBrick.size.width * (inThisScene.size.width / timerBrick.size.width)*(17.57/100)),
                height: (timerBrick.size.height * (inThisScene.size.height / timerBrick.size.height)*(4.49/100)))
            //4:3
            scoreBrick.size = CGSize(
                width: (scoreBrick.size.width * (inThisScene.size.width / scoreBrick.size.width)*(17.57/100)),
                height: (scoreBrick.size.height * (inThisScene.size.height / scoreBrick.size.height)*(4.49/100)))
        }//End else

        
        //        /// Retro Life Skin
        //        // Backgrounds
        //        retroLifeSkinBackground = SKSpriteNode.init(imageNamed: "Background Retro")
        //        retroLifeSkinBackground.name = "background"
        //        retroLifeSkinBackground.zPosition = 1
        //        retroLifeSkinBackground.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        //        retroLifeSkinBackground.size = CGSize(
        //            width: ((retroLifeSkinBackground.size.width * (inThisScene.size.width / retroLifeSkinBackground.size.width))),
        //            height: (retroLifeSkinBackground.size.height * (inThisScene.size.height / retroLifeSkinBackground.size.height)))
        //
        //        //Paddles
        //        retroLifeSkinPaddle = SKSpriteNode.init(imageNamed: "Paddle Retro")
        //        retroLifeSkinPaddle.name = "paddle"
        //        retroLifeSkinPaddle.zPosition = 3
        //        retroLifeSkinPaddle.size = CGSize(
        //            width: ((retroLifeSkinPaddle.size.width * (inThisScene.size.width / retroLifeSkinPaddle.size.width)*(25/100))),
        //            height: (retroLifeSkinPaddle.size.height * (inThisScene.size.height / retroLifeSkinPaddle.size.height)*(1.56/100)))
        //        retroLifeSkinPaddle.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100) )
        //        retroLifeSkinPaddle.physicsBody = SKPhysicsBody(rectangleOf: paddleclassic.size)
        //        retroLifeSkinPaddle.physicsBody?.isDynamic = false
        //        retroLifeSkinPaddle.physicsBody?.friction = 0
        //        retroLifeSkinPaddle.physicsBody?.restitution = 1
        //
        //
        //        //Balls
        //        retroLifeSkinBall = SKSpriteNode.init(imageNamed: "Ball Retro")
        //        retroLifeSkinBall.name = "ball"
        //        retroLifeSkinBall.zPosition = 2
        //        retroLifeSkinBall.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        //        retroLifeSkinBall.size = CGSize(
        //            width: (retroLifeSkinBall.size.width * (inThisScene.size.width / retroLifeSkinBall.size.width)*(4.63/100)),
        //            height: (retroLifeSkinBall.size.height * (inThisScene.size.height / retroLifeSkinBall.size.height)*(2.6/100)))
        //        retroLifeSkinBall.physicsBody = SKPhysicsBody(circleOfRadius: (retroLifeSkinBall.size.width / 2))
        //        retroLifeSkinBall.physicsBody?.allowsRotation = false
        //        retroLifeSkinBall.physicsBody?.affectedByGravity = true
        //        retroLifeSkinBall.physicsBody?.friction = 0
        //        retroLifeSkinBall.physicsBody?.restitution = 1
        //        retroLifeSkinBall.physicsBody?.linearDamping = 0
        //        retroLifeSkinBall.physicsBody?.angularDamping = 0
        //        retroLifeSkinBall.physicsBody?.mass = 0.01
        //
        //        //Timer Brick
        //        retroLifeSkinTimer = SKSpriteNode.init(imageNamed: "Timer_Score Retro")
        //        retroLifeSkinTimer.zPosition = 3
        //        retroLifeSkinTimer.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //        retroLifeSkinTimer.size = CGSize(
        //            width: (retroLifeSkinTimer.size.width * (inThisScene.size.width / retroLifeSkinTimer.size.width)*(22/100)),
        //            height: (retroLifeSkinTimer.size.height * (inThisScene.size.height / retroLifeSkinTimer.size.height)*(4/100)))
        //
        //        //Score Brick
        //        retroLifeSkinScore = SKSpriteNode.init(imageNamed: "Timer_Score Retro")
        //        retroLifeSkinScore.zPosition = 3
        //        retroLifeSkinScore.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        //        retroLifeSkinScore.size = CGSize(
        //            width: (retroLifeSkinScore.size.width * (inThisScene.size.width / retroLifeSkinScore.size.width)*(22.22/100)),
        //            height: (retroLifeSkinScore.size.height * (inThisScene.size.height / retroLifeSkinScore.size.height)*(4.17/100)))
        //
        //        /// Rainbow Skin
        //        // Backgrounds
        //        rainbowBackground = SKSpriteNode.init(imageNamed: "Background Rainbow")
        //        rainbowBackground.name = "background"
        //        rainbowBackground.zPosition = 1
        //        rainbowBackground.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        //        rainbowBackground.size = CGSize(
        //            width: ((rainbowBackground.size.width * (inThisScene.size.width / rainbowBackground.size.width))),
        //            height: (rainbowBackground.size.height * (inThisScene.size.height / rainbowBackground.size.height)))
        //
        //        //Paddles
        //        rainbowPaddle = SKSpriteNode.init(imageNamed: "Paddle Rainbow")
        //        rainbowPaddle.name = "paddle"
        //        rainbowPaddle.zPosition = 3
        //        rainbowPaddle.size = CGSize(
        //            width: ((rainbowPaddle.size.width * (inThisScene.size.width / rainbowPaddle.size.width)*(25/100))),
        //            height: (rainbowPaddle.size.height * (inThisScene.size.height / rainbowPaddle.size.height)*(1.56/100)))
        //        rainbowPaddle.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100) )
        //        rainbowPaddle.physicsBody = SKPhysicsBody(rectangleOf: paddleclassic.size)
        //        rainbowPaddle.physicsBody?.isDynamic = false
        //        rainbowPaddle.physicsBody?.friction = 0
        //        rainbowPaddle.physicsBody?.restitution = 1
        //
        //
        //        //Balls
        //        rainbowBall = SKSpriteNode.init(imageNamed: "Ball Rainbow")
        //        rainbowBall.name = "ball"
        //        rainbowBall.zPosition = 2
        //        rainbowBall.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        //        rainbowBall.size = CGSize(
        //            width: (rainbowBall.size.width * (inThisScene.size.width / rainbowBall.size.width)*(4.63/100)),
        //            height: (rainbowBall.size.height * (inThisScene.size.height / rainbowBall.size.height)*(2.6/100)))
        //        rainbowBall.physicsBody = SKPhysicsBody(circleOfRadius: (rainbowBall.size.width / 2))
        //        rainbowBall.physicsBody?.allowsRotation = false
        //        rainbowBall.physicsBody?.affectedByGravity = true
        //        rainbowBall.physicsBody?.friction = 0
        //        rainbowBall.physicsBody?.restitution = 1
        //        rainbowBall.physicsBody?.linearDamping = 0
        //        rainbowBall.physicsBody?.angularDamping = 0
        //        rainbowBall.physicsBody?.mass = 0.01
        //
        //        //Timer Brick
        //        rainbowTimer = SKSpriteNode.init(imageNamed: "Timer_score Rainbow")
        //        rainbowTimer.zPosition = 3
        //        rainbowTimer.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //        rainbowTimer.size = CGSize(
        //            width: (rainbowTimer.size.width * (inThisScene.size.width / rainbowTimer.size.width)*(22/100)),
        //            height: (rainbowTimer.size.height * (inThisScene.size.height / rainbowTimer.size.height)*(4/100)))
        //
        //        //Score Brick
        //        rainbowScore = SKSpriteNode.init(imageNamed: "Timer_score Rainbow")
        //        rainbowScore.zPosition = 3
        //        rainbowScore.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        //        rainbowScore.size = CGSize(
        //            width: (rainbowScore.size.width * (inThisScene.size.width / rainbowScore.size.width)*(22.22/100)),
        //            height: (rainbowScore.size.height * (inThisScene.size.height / rainbowScore.size.height)*(4.17/100)))
        //
        //        /// Light
        //        // Backgrounds
        //        lightBackground = SKSpriteNode.init(imageNamed: "Background Light")
        //        lightBackground.name = "background"
        //        lightBackground.zPosition = 1
        //        lightBackground.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        //        lightBackground.size = CGSize(
        //            width: ((lightBackground.size.width * (inThisScene.size.width / lightBackground.size.width))),
        //            height: (lightBackground.size.height * (inThisScene.size.height / lightBackground.size.height)))
        //
        //        //Paddles
        //        lightPaddle = SKSpriteNode.init(imageNamed: "Paddle Light")
        //        lightPaddle.name = "paddle"
        //        lightPaddle.zPosition = 3
        //        lightPaddle.size = CGSize(
        //            width: ((lightPaddle.size.width * (inThisScene.size.width / lightPaddle.size.width)*(25/100))),
        //            height: (lightPaddle.size.height * (inThisScene.size.height / lightPaddle.size.height)*(1.56/100)))
        //        lightPaddle.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100) )
        //        lightPaddle.physicsBody = SKPhysicsBody(rectangleOf: lightPaddle.size)
        //        lightPaddle.physicsBody?.isDynamic = false
        //        lightPaddle.physicsBody?.friction = 0
        //        lightPaddle.physicsBody?.restitution = 1
        //
        //        //Balls
        //        lightBall = SKSpriteNode.init(imageNamed: "Ball Light")
        //        lightBall.name = "ball"
        //        lightBall.zPosition = 2
        //        lightBall.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        //        lightBall.size = CGSize(
        //            width: (lightBall.size.width * (inThisScene.size.width / lightBall.size.width)*(4.63/100)),
        //            height: (lightBall.size.height * (inThisScene.size.height / lightBall.size.height)*(2.6/100)))
        //        lightBall.physicsBody = SKPhysicsBody(circleOfRadius: (lightBall.size.width / 2))
        //        lightBall.physicsBody?.allowsRotation = false
        //        lightBall.physicsBody?.affectedByGravity = true
        //        lightBall.physicsBody?.friction = 0
        //        lightBall.physicsBody?.restitution = 1
        //        lightBall.physicsBody?.linearDamping = 0
        //        lightBall.physicsBody?.angularDamping = 0
        //        lightBall.physicsBody?.mass = 0.01
        //
        //        //Timer Brick
        //        lightTimer = SKSpriteNode.init(imageNamed: "Timer_score Light")
        //        lightTimer.zPosition = 3
        //        lightTimer.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //        lightTimer.size = CGSize(
        //            width: (lightTimer.size.width * (inThisScene.size.width / lightTimer.size.width)*(22/100)),
        //            height: (lightTimer.size.height * (inThisScene.size.height / lightTimer.size.height)*(4/100)))
        //
        //        //Score Brick
        //        lightScore = SKSpriteNode.init(imageNamed: "Timer_score Light")
        //        lightScore.zPosition = 3
        //        lightScore.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        //        lightScore.size = CGSize(
        //            width: (lightScore.size.width * (inThisScene.size.width / lightScore.size.width)*(22.22/100)),
        //            height: (lightScore.size.height * (inThisScene.size.height / lightScore.size.height)*(4.17/100)))
        //
        //        /// Soccer
        //        // Backgrounds
        //        soccerBackground = SKSpriteNode.init(imageNamed: "Background Soccer")
        //        soccerBackground.name = "background"
        //        soccerBackground.zPosition = 1
        //        soccerBackground.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        //        soccerBackground.size = CGSize(
        //            width: ((soccerBackground.size.width * (inThisScene.size.width / soccerBackground.size.width))),
        //            height: (soccerBackground.size.height * (inThisScene.size.height / soccerBackground.size.height)))
        //
        //        //Paddles
        //        soccerPaddle = SKSpriteNode.init(imageNamed: "Paddle Soccer")
        //        soccerPaddle.name = "paddle"
        //        soccerPaddle.zPosition = 3
        //        soccerPaddle.size = CGSize(
        //            width: ((soccerPaddle.size.width * (inThisScene.size.width / soccerPaddle.size.width)*(25/100))),
        //            height: (soccerPaddle.size.height * (inThisScene.size.height / soccerPaddle.size.height)*(1.56/100)))
        //        soccerPaddle.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100) )
        //        soccerPaddle.physicsBody = SKPhysicsBody(rectangleOf: soccerPaddle.size)
        //        soccerPaddle.physicsBody?.isDynamic = false
        //        soccerPaddle.physicsBody?.friction = 0
        //        soccerPaddle.physicsBody?.restitution = 1
        //
        //        //Balls
        //        soccerBall = SKSpriteNode.init(imageNamed: "Ball Soccer")
        //        soccerBall.name = "ball"
        //        soccerBall.zPosition = 2
        //        soccerBall.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        //        soccerBall.size = CGSize(
        //            width: (soccerBall.size.width * (inThisScene.size.width / soccerBall.size.width)*(4.63/100)),
        //            height: (soccerBall.size.height * (inThisScene.size.height / soccerBall.size.height)*(2.6/100)))
        //        soccerBall.physicsBody = SKPhysicsBody(circleOfRadius: (soccerBall.size.width / 2))
        //        soccerBall.physicsBody?.allowsRotation = false
        //        soccerBall.physicsBody?.affectedByGravity = true
        //        soccerBall.physicsBody?.friction = 0
        //        soccerBall.physicsBody?.restitution = 1
        //        soccerBall.physicsBody?.linearDamping = 0
        //        soccerBall.physicsBody?.angularDamping = 0
        //        soccerBall.physicsBody?.mass = 0.01
        //
        //        //Timer Brick
        //        soccerTimer = SKSpriteNode.init(imageNamed: "Timer_Score Soccer")
        //        soccerTimer.zPosition = 3
        //        soccerTimer.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //        soccerTimer.size = CGSize(
        //            width: (soccerTimer.size.width * (inThisScene.size.width / soccerTimer.size.width)*(22/100)),
        //            height: (soccerTimer.size.height * (inThisScene.size.height / soccerTimer.size.height)*(4/100)))
        //
        //        //Score Brick
        //        soccerScore = SKSpriteNode.init(imageNamed: "Timer_Score Soccer")
        //        soccerScore.zPosition = 3
        //        soccerScore.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        //        soccerScore.size = CGSize(
        //            width: (soccerScore.size.width * (inThisScene.size.width / soccerScore.size.width)*(22.22/100)),
        //            height: (soccerScore.size.height * (inThisScene.size.height / soccerScore.size.height)*(4.17/100)))
        
    }//END Init
    
}//END Struct
