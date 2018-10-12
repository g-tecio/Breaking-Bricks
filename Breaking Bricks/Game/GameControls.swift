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
    
    /// Retro Life Skin
    // Backgrounds
    let retroLifeSkinBackground: SKSpriteNode
    // Paddles
    let retroLifeSkinPaddle: SKSpriteNode
    // Balls
    let retroLifeSkinBall: SKSpriteNode
    //Timer
    let retroLifeSkinTimer: SKSpriteNode
    //Score
    let retroLifeSkinScore: SKSpriteNode
    
    /// Rainbow Skin
    // Backgrounds
    let rainbowBackground: SKSpriteNode
    // Paddles
    let rainbowPaddle: SKSpriteNode
    // Balls
    let rainbowBall: SKSpriteNode
    //Timer
    let rainbowTimer: SKSpriteNode
    //Score
    let rainbowScore: SKSpriteNode
    
    /// Light Skin
    // Backgrounds
    let lightBackground: SKSpriteNode
    // Paddles
    let lightPaddle: SKSpriteNode
    // Balls
    let lightBall: SKSpriteNode
    //Timer
    let lightTimer: SKSpriteNode
    //Score
    let lightScore: SKSpriteNode
    
    /// Soccer Skin
    // Backgrounds
    let soccerBackground: SKSpriteNode
    // Paddles
    let soccerPaddle: SKSpriteNode
    // Balls
    let soccerBall: SKSpriteNode
    //Timer
    let soccerTimer: SKSpriteNode
    //Score
    let soccerScore: SKSpriteNode
    
    /// Dust Skin
    // Backgrounds
    let spaceDustBackground: SKSpriteNode
    // Paddles
    let spaceDustPaddle: SKSpriteNode
    // Balls
    let spaceDustBall: SKSpriteNode
    //Timer
    let spaceDustTimer: SKSpriteNode
    //Score
    let spaceDustScore: SKSpriteNode
    
    /// Acid Rain Skin
    // Backgrounds
    let acidRainBackground: SKSpriteNode
    // Paddles
    let acidRainPaddle: SKSpriteNode
    // Balls
    let acidRainBall: SKSpriteNode
    //Timer
    let acidRainTimer: SKSpriteNode
    //Score
    let acidRainScore: SKSpriteNode
    
    /// End Times Skin
    // Backgrounds
    let endTimesBackground: SKSpriteNode
    // Paddles
    let endTimesPaddle: SKSpriteNode
    // Balls
    let endTimesBall: SKSpriteNode
    //Timer
    let endTimesTimer: SKSpriteNode
    //Score
    let endTimesScore: SKSpriteNode
    
    /// Pumpkin Skin
    // Backgrounds
    let pumpkinBackground: SKSpriteNode
    // Paddles
    let pumpkinPaddle: SKSpriteNode
    // Balls
    let pumpkinBall: SKSpriteNode
    //Timer
    let pumpkinTimer: SKSpriteNode
    //Score
    let pumpkinScore: SKSpriteNode
    
    /// Scream Red Skin
    // Backgrounds
    let screamRedBackground: SKSpriteNode
    // Paddles
    let screamRedPaddle: SKSpriteNode
    // Balls
    let screamRedBall: SKSpriteNode
    //Timer
    let screamRedTimer: SKSpriteNode
    //Score
    let screamRedScore: SKSpriteNode
    
    /// Scream Green Skin
    // Backgrounds
    let screamGreenBackground: SKSpriteNode
    // Paddles
    let screamGreenPaddle: SKSpriteNode
    // Balls
    let screamGreenBall: SKSpriteNode
    //Timer
    let screamGreenTimer: SKSpriteNode
    //Score
    let screamGreenScore: SKSpriteNode

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
        //Timer Brick
        timerBrick = SKSpriteNode.init(imageNamed: "Timer_score Classic")
        timerBrick.zPosition = 3
        timerBrick.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //Score Brick
        scoreBrick = SKSpriteNode.init(imageNamed: "Timer_score Classic")
        scoreBrick.zPosition = 3
        scoreBrick.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        
        /// Retro Life Skin
        // Backgrounds
        retroLifeSkinBackground = SKSpriteNode.init(imageNamed: "Background Retro")
        retroLifeSkinBackground.name = "background"
        retroLifeSkinBackground.zPosition = 1
        retroLifeSkinBackground.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        retroLifeSkinBackground.size = CGSize(
            width: ((retroLifeSkinBackground.size.width * (inThisScene.size.width / retroLifeSkinBackground.size.width))),
            height: (retroLifeSkinBackground.size.height * (inThisScene.size.height / retroLifeSkinBackground.size.height)))
        //Paddles
        retroLifeSkinPaddle = SKSpriteNode.init(imageNamed: "Paddle Retro")
        retroLifeSkinPaddle.name = "paddle"
        retroLifeSkinPaddle.zPosition = 3
        retroLifeSkinPaddle.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100) )
        //Balls
        retroLifeSkinBall = SKSpriteNode.init(imageNamed: "Ball Retro")
        retroLifeSkinBall.name = "ball"
        retroLifeSkinBall.zPosition = 2
        retroLifeSkinBall.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        //Timer Brick
        retroLifeSkinTimer = SKSpriteNode.init(imageNamed: "Timer_Score Retro")
        retroLifeSkinTimer.zPosition = 3
        retroLifeSkinTimer.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //Score Brick
        retroLifeSkinScore = SKSpriteNode.init(imageNamed: "Timer_Score Retro")
        retroLifeSkinScore.zPosition = 3
        retroLifeSkinScore.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        
        /// Rainbow Skin
        // Backgrounds
        rainbowBackground = SKSpriteNode.init(imageNamed: "Background Rainbow")
        rainbowBackground.name = "background"
        rainbowBackground.zPosition = 1
        rainbowBackground.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        rainbowBackground.size = CGSize(
            width: ((rainbowBackground.size.width * (inThisScene.size.width / rainbowBackground.size.width))),
            height: (rainbowBackground.size.height * (inThisScene.size.height / rainbowBackground.size.height)))
        //Paddles
        rainbowPaddle = SKSpriteNode.init(imageNamed: "Paddle Rainbow")
        rainbowPaddle.name = "paddle"
        rainbowPaddle.zPosition = 3
        rainbowPaddle.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100) )
        //Balls
        rainbowBall = SKSpriteNode.init(imageNamed: "Ball Rainbow")
        rainbowBall.name = "ball"
        rainbowBall.zPosition = 2
        rainbowBall.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        //Timer Brick
        rainbowTimer = SKSpriteNode.init(imageNamed: "Timer_score Rainbow")
        rainbowTimer.zPosition = 3
        rainbowTimer.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //Score Brick
        rainbowScore = SKSpriteNode.init(imageNamed: "Timer_score Rainbow")
        rainbowScore.zPosition = 3
        rainbowScore.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        
        /// Light Skin
        // Backgrounds
        lightBackground = SKSpriteNode.init(imageNamed: "Background Light")
        lightBackground.name = "background"
        lightBackground.zPosition = 1
        lightBackground.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        lightBackground.size = CGSize(
            width: ((lightBackground.size.width * (inThisScene.size.width / lightBackground.size.width))),
            height: (lightBackground.size.height * (inThisScene.size.height / lightBackground.size.height)))
        //Paddles
        lightPaddle = SKSpriteNode.init(imageNamed: "Paddle Light")
        lightPaddle.name = "paddle"
        lightPaddle.zPosition = 3
        lightPaddle.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100) )
        //Balls
        lightBall = SKSpriteNode.init(imageNamed: "Ball Light")
        lightBall.name = "ball"
        lightBall.zPosition = 2
        lightBall.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        //Timer Brick
        lightTimer = SKSpriteNode.init(imageNamed: "Timer_score Light")
        lightTimer.zPosition = 3
        lightTimer.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //Score Brick
        lightScore = SKSpriteNode.init(imageNamed: "Timer_score Light")
        lightScore.zPosition = 3
        lightScore.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        
        /// Soccer
        // Backgrounds
        soccerBackground = SKSpriteNode.init(imageNamed: "Background Soccer")
        soccerBackground.name = "background"
        soccerBackground.zPosition = 1
        soccerBackground.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        soccerBackground.size = CGSize(
            width: ((soccerBackground.size.width * (inThisScene.size.width / soccerBackground.size.width))),
            height: (soccerBackground.size.height * (inThisScene.size.height / soccerBackground.size.height)))
        //Paddles
        soccerPaddle = SKSpriteNode.init(imageNamed: "Paddle Soccer")
        soccerPaddle.name = "paddle"
        soccerPaddle.zPosition = 3
        soccerPaddle.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100))
        //Balls
        soccerBall = SKSpriteNode.init(imageNamed: "Ball Soccer")
        soccerBall.name = "ball"
        soccerBall.zPosition = 2
        soccerBall.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        //Timer Brick
        soccerTimer = SKSpriteNode.init(imageNamed: "Timer_Score Soccer")
        soccerTimer.zPosition = 3
        soccerTimer.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //Score Brick
        soccerScore = SKSpriteNode.init(imageNamed: "Timer_Score Soccer")
        soccerScore.zPosition = 3
        soccerScore.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        
        /// Space Dust Skin
        // Backgrounds
        spaceDustBackground = SKSpriteNode.init(imageNamed: "Background Dust")
        spaceDustBackground.name = "background"
        spaceDustBackground.zPosition = 1
        spaceDustBackground.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        spaceDustBackground.size = CGSize(
            width: ((spaceDustBackground.size.width * (inThisScene.size.width / spaceDustBackground.size.width))),
            height: (spaceDustBackground.size.height * (inThisScene.size.height / spaceDustBackground.size.height)))
        //Paddles
        spaceDustPaddle = SKSpriteNode.init(imageNamed: "Paddle Dust")
        spaceDustPaddle.name = "paddle"
        spaceDustPaddle.zPosition = 3
        spaceDustPaddle.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100))
        //Balls
        spaceDustBall = SKSpriteNode.init(imageNamed: "Ball Dust")
        spaceDustBall.name = "ball"
        spaceDustBall.zPosition = 2
        spaceDustBall.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        //Timer Brick
        spaceDustTimer = SKSpriteNode.init(imageNamed: "Timer_Score Dust")
        spaceDustTimer.zPosition = 3
        spaceDustTimer.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //Score Brick
        spaceDustScore = SKSpriteNode.init(imageNamed: "Timer_Score Dust")
        spaceDustScore.zPosition = 3
        spaceDustScore.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        
        /// Acid Rain Skin
        // Backgrounds
        acidRainBackground = SKSpriteNode.init(imageNamed: "Background Toxic")
        acidRainBackground.name = "background"
        acidRainBackground.zPosition = 1
        acidRainBackground.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        acidRainBackground.size = CGSize(
            width: ((acidRainBackground.size.width * (inThisScene.size.width / acidRainBackground.size.width))),
            height: (acidRainBackground.size.height * (inThisScene.size.height / acidRainBackground.size.height)))
        //Paddles
        acidRainPaddle = SKSpriteNode.init(imageNamed: "Paddle Toxic")
        acidRainPaddle.name = "paddle"
        acidRainPaddle.zPosition = 3
        acidRainPaddle.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100))
        //Balls
        acidRainBall = SKSpriteNode.init(imageNamed: "Ball Toxic")
        acidRainBall.name = "ball"
        acidRainBall.zPosition = 2
        acidRainBall.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        //Timer Brick
        acidRainTimer = SKSpriteNode.init(imageNamed: "Timer_score Acid")
        acidRainTimer.zPosition = 3
        acidRainTimer.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //Score Brick
        acidRainScore = SKSpriteNode.init(imageNamed: "Timer_score Acid")
        acidRainScore.zPosition = 3
        acidRainScore.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        
        /// End Times Skin
        // Backgrounds
        endTimesBackground = SKSpriteNode.init(imageNamed: "Background End_Times")
        endTimesBackground.name = "background"
        endTimesBackground.zPosition = 1
        endTimesBackground.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        endTimesBackground.size = CGSize(
            width: ((endTimesBackground.size.width * (inThisScene.size.width / endTimesBackground.size.width))),
            height: (endTimesBackground.size.height * (inThisScene.size.height / endTimesBackground.size.height)))
        //Paddles
        endTimesPaddle = SKSpriteNode.init(imageNamed: "Paddle End_Times")
        endTimesPaddle.name = "paddle"
        endTimesPaddle.zPosition = 3
        endTimesPaddle.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100))
        //Balls
        endTimesBall = SKSpriteNode.init(imageNamed: "Ball End_Times")
        endTimesBall.name = "ball"
        endTimesBall.zPosition = 2
        endTimesBall.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        //Timer Brick
        endTimesTimer = SKSpriteNode.init(imageNamed: "Timer_Score End_Times")
        endTimesTimer.zPosition = 3
        endTimesTimer.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //Score Brick
        endTimesScore = SKSpriteNode.init(imageNamed: "Timer_Score End_Times")
        endTimesScore.zPosition = 3
        endTimesScore.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        
        /// Pumpkin Skin
        // Backgrounds
        pumpkinBackground = SKSpriteNode.init(imageNamed: "Background Pumpkin")
        pumpkinBackground.name = "background"
        pumpkinBackground.zPosition = 1
        pumpkinBackground.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        pumpkinBackground.size = CGSize(
            width: ((pumpkinBackground.size.width * (inThisScene.size.width / pumpkinBackground.size.width))),
            height: (pumpkinBackground.size.height * (inThisScene.size.height / pumpkinBackground.size.height)))
        //Paddles
        pumpkinPaddle = SKSpriteNode.init(imageNamed: "Paddle Pumpkin")
        pumpkinPaddle.name = "paddle"
        pumpkinPaddle.zPosition = 3
        pumpkinPaddle.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100))
        //Balls
        pumpkinBall = SKSpriteNode.init(imageNamed: "Ball Pumpkin")
        pumpkinBall.name = "ball"
        pumpkinBall.zPosition = 2
        pumpkinBall.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        //Timer Brick
        pumpkinTimer = SKSpriteNode.init(imageNamed: "Timer_Score Pumpkin")
        pumpkinTimer.zPosition = 3
        pumpkinTimer.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //Score Brick
        pumpkinScore = SKSpriteNode.init(imageNamed: "Timer_Score Pumpkin")
        pumpkinScore.zPosition = 3
        pumpkinScore.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        
        /// Scream Red Skin
        // Backgrounds
        screamRedBackground = SKSpriteNode.init(imageNamed: "Background Scream_Red")
        screamRedBackground.name = "background"
        screamRedBackground.zPosition = 1
        screamRedBackground.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        screamRedBackground.size = CGSize(
            width: ((screamRedBackground.size.width * (inThisScene.size.width / screamRedBackground.size.width))),
            height: (screamRedBackground.size.height * (inThisScene.size.height / screamRedBackground.size.height)))
        //Paddles
        screamRedPaddle = SKSpriteNode.init(imageNamed: "Paddle Scream_Red")
        screamRedPaddle.name = "paddle"
        screamRedPaddle.zPosition = 3
        screamRedPaddle.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100))
        //Balls
        screamRedBall = SKSpriteNode.init(imageNamed: "Ball Scream_Red")
        screamRedBall.name = "ball"
        screamRedBall.zPosition = 2
        screamRedBall.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        //Timer Brick
        screamRedTimer = SKSpriteNode.init(imageNamed: "Timer_Score Scream_Red")
        screamRedTimer.zPosition = 3
        screamRedTimer.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //Score Brick
        screamRedScore = SKSpriteNode.init(imageNamed: "Timer_Score Scream_Red")
        screamRedScore.zPosition = 3
        screamRedScore.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        
        /// Scream Green Skin
        // Backgrounds
        screamGreenBackground = SKSpriteNode.init(imageNamed: "Background Scream_Green")
        screamGreenBackground.name = "background"
        screamGreenBackground.zPosition = 1
        screamGreenBackground.position = CGPoint(x: inThisScene.size.width/2, y: inThisScene.size.height/2)
        screamGreenBackground.size = CGSize(
            width: ((screamGreenBackground.size.width * (inThisScene.size.width / screamGreenBackground.size.width))),
            height: (screamGreenBackground.size.height * (inThisScene.size.height / screamGreenBackground.size.height)))
        //Paddles
        screamGreenPaddle = SKSpriteNode.init(imageNamed: "Paddle Scream_Green")
        screamGreenPaddle.name = "paddle"
        screamGreenPaddle.zPosition = 3
        screamGreenPaddle.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100))
        //Balls
        screamGreenBall = SKSpriteNode.init(imageNamed: "Ball Scream_Green")
        screamGreenBall.name = "ball"
        screamGreenBall.zPosition = 2
        screamGreenBall.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
        //Timer Brick
        screamGreenTimer = SKSpriteNode.init(imageNamed: "Timer_Score Scream_Green")
        screamGreenTimer.zPosition = 3
        screamGreenTimer.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
        //Score Brick
        screamGreenScore = SKSpriteNode.init(imageNamed: "Timer_Score Scream_Green")
        screamGreenScore.zPosition = 3
        screamGreenScore.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
        
        if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone ){
            /// Classic
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
            
            /// Retro Life Skin
            //16:9
            retroLifeSkinPaddle.size = CGSize(
                width: ((retroLifeSkinPaddle.size.width * (inThisScene.size.width / retroLifeSkinPaddle.size.width)*(25/100))),
                height: (retroLifeSkinPaddle.size.height * (inThisScene.size.height / retroLifeSkinPaddle.size.height)*(1.56/100)))
            retroLifeSkinPaddle.physicsBody = SKPhysicsBody(rectangleOf: retroLifeSkinPaddle.size)
            retroLifeSkinPaddle.physicsBody?.isDynamic = false
            retroLifeSkinPaddle.physicsBody?.friction = 0
            retroLifeSkinPaddle.physicsBody?.restitution = 1
            //16:9
            retroLifeSkinBall.size = CGSize(
                width: (retroLifeSkinBall.size.width * (inThisScene.size.width / retroLifeSkinBall.size.width)*(4.63/100)),
                height: (retroLifeSkinBall.size.height * (inThisScene.size.height / retroLifeSkinBall.size.height)*(2.6/100)))
            retroLifeSkinBall.physicsBody = SKPhysicsBody(circleOfRadius: (retroLifeSkinBall.size.width / 2))
            retroLifeSkinBall.physicsBody?.allowsRotation = false
            retroLifeSkinBall.physicsBody?.affectedByGravity = true
            retroLifeSkinBall.physicsBody?.friction = 0
            retroLifeSkinBall.physicsBody?.restitution = 1
            retroLifeSkinBall.physicsBody?.linearDamping = 0
            retroLifeSkinBall.physicsBody?.angularDamping = 0
            retroLifeSkinBall.physicsBody?.mass = 0.01
            //16:9
            retroLifeSkinTimer.size = CGSize(
                width: (retroLifeSkinTimer.size.width * (inThisScene.size.width / retroLifeSkinTimer.size.width)*(22/100)),
                height: (retroLifeSkinTimer.size.height * (inThisScene.size.height / retroLifeSkinTimer.size.height)*(4/100)))
            //16:9
            retroLifeSkinScore.size = CGSize(
                width: (retroLifeSkinScore.size.width * (inThisScene.size.width / retroLifeSkinScore.size.width)*(22.22/100)),
                height: (retroLifeSkinScore.size.height * (inThisScene.size.height / retroLifeSkinScore.size.height)*(4.17/100)))
            
            /// Rainbow Skin
            //16:9
            rainbowPaddle.size = CGSize(
                width: ((rainbowPaddle.size.width * (inThisScene.size.width / rainbowPaddle.size.width)*(25/100))),
                height: (rainbowPaddle.size.height * (inThisScene.size.height / rainbowPaddle.size.height)*(1.56/100)))
            rainbowPaddle.physicsBody = SKPhysicsBody(rectangleOf: retroLifeSkinPaddle.size)
            rainbowPaddle.physicsBody?.isDynamic = false
            rainbowPaddle.physicsBody?.friction = 0
            rainbowPaddle.physicsBody?.restitution = 1
            //16:9
            rainbowBall.size = CGSize(
                width: (rainbowBall.size.width * (inThisScene.size.width / rainbowBall.size.width)*(4.63/100)),
                height: (rainbowBall.size.height * (inThisScene.size.height / rainbowBall.size.height)*(2.6/100)))
            rainbowBall.physicsBody = SKPhysicsBody(circleOfRadius: (rainbowBall.size.width / 2))
            rainbowBall.physicsBody?.allowsRotation = false
            rainbowBall.physicsBody?.affectedByGravity = true
            rainbowBall.physicsBody?.friction = 0
            rainbowBall.physicsBody?.restitution = 1
            rainbowBall.physicsBody?.linearDamping = 0
            rainbowBall.physicsBody?.angularDamping = 0
            rainbowBall.physicsBody?.mass = 0.01
            //16:9
            rainbowTimer.size = CGSize(
                width: (rainbowTimer.size.width * (inThisScene.size.width / rainbowTimer.size.width)*(22/100)),
                height: (rainbowTimer.size.height * (inThisScene.size.height / rainbowTimer.size.height)*(4/100)))
            //16:9
            rainbowScore.size = CGSize(
                width: (rainbowScore.size.width * (inThisScene.size.width / rainbowScore.size.width)*(22.22/100)),
                height: (rainbowScore.size.height * (inThisScene.size.height / rainbowScore.size.height)*(4.17/100)))
            
            /// Light Skin
            //16:9
            lightPaddle.size = CGSize(
                width: ((lightPaddle.size.width * (inThisScene.size.width / lightPaddle.size.width)*(25/100))),
                height: (lightPaddle.size.height * (inThisScene.size.height / lightPaddle.size.height)*(1.56/100)))
            lightPaddle.physicsBody = SKPhysicsBody(rectangleOf: lightPaddle.size)
            lightPaddle.physicsBody?.isDynamic = false
            lightPaddle.physicsBody?.friction = 0
            lightPaddle.physicsBody?.restitution = 1
            //16:9
            lightBall.size = CGSize(
                width: (lightBall.size.width * (inThisScene.size.width / lightBall.size.width)*(4.63/100)),
                height: (lightBall.size.height * (inThisScene.size.height / lightBall.size.height)*(2.6/100)))
            lightBall.physicsBody = SKPhysicsBody(circleOfRadius: (lightBall.size.width / 2))
            lightBall.physicsBody?.allowsRotation = false
            lightBall.physicsBody?.affectedByGravity = true
            lightBall.physicsBody?.friction = 0
            lightBall.physicsBody?.restitution = 1
            lightBall.physicsBody?.linearDamping = 0
            lightBall.physicsBody?.angularDamping = 0
            lightBall.physicsBody?.mass = 0.01
            //16:9
            lightTimer.size = CGSize(
                width: (lightTimer.size.width * (inThisScene.size.width / lightTimer.size.width)*(22/100)),
                height: (lightTimer.size.height * (inThisScene.size.height / lightTimer.size.height)*(4/100)))
            //16:9
            lightScore.size = CGSize(
                width: (lightScore.size.width * (inThisScene.size.width / lightScore.size.width)*(22.22/100)),
                height: (lightScore.size.height * (inThisScene.size.height / lightScore.size.height)*(4.17/100)))
            
            /// Soccer Skin
            //16:9
            soccerPaddle.size = CGSize(
                width: ((soccerPaddle.size.width * (inThisScene.size.width / soccerPaddle.size.width)*(25/100))),
                height: (soccerPaddle.size.height * (inThisScene.size.height / soccerPaddle.size.height)*(1.56/100)))
            soccerPaddle.physicsBody = SKPhysicsBody(rectangleOf: soccerPaddle.size)
            soccerPaddle.physicsBody?.isDynamic = false
            soccerPaddle.physicsBody?.friction = 0
            soccerPaddle.physicsBody?.restitution = 1
            //16:9
            soccerBall.size = CGSize(
                width: (soccerBall.size.width * (inThisScene.size.width / soccerBall.size.width)*(4.63/100)),
                height: (soccerBall.size.height * (inThisScene.size.height / soccerBall.size.height)*(2.6/100)))
            soccerBall.physicsBody = SKPhysicsBody(circleOfRadius: (soccerBall.size.width / 2))
            soccerBall.physicsBody?.allowsRotation = false
            soccerBall.physicsBody?.affectedByGravity = true
            soccerBall.physicsBody?.friction = 0
            soccerBall.physicsBody?.restitution = 1
            soccerBall.physicsBody?.linearDamping = 0
            soccerBall.physicsBody?.angularDamping = 0
            soccerBall.physicsBody?.mass = 0.01
            //16:9
            soccerTimer.size = CGSize(
                width: (soccerTimer.size.width * (inThisScene.size.width / soccerTimer.size.width)*(22/100)),
                height: (soccerTimer.size.height * (inThisScene.size.height / soccerTimer.size.height)*(4/100)))
            //16:9
            soccerScore.size = CGSize(
                width: (soccerScore.size.width * (inThisScene.size.width / soccerScore.size.width)*(22.22/100)),
                height: (soccerScore.size.height * (inThisScene.size.height / soccerScore.size.height)*(4.17/100)))
            
            
            /// Space Dust Skin
            //16:9
            spaceDustPaddle.size = CGSize(
                width: ((spaceDustPaddle.size.width * (inThisScene.size.width / spaceDustPaddle.size.width)*(25/100))),
                height: (spaceDustPaddle.size.height * (inThisScene.size.height / spaceDustPaddle.size.height)*(1.56/100)))
            spaceDustPaddle.physicsBody = SKPhysicsBody(rectangleOf: spaceDustPaddle.size)
            spaceDustPaddle.physicsBody?.isDynamic = false
            spaceDustPaddle.physicsBody?.friction = 0
            spaceDustPaddle.physicsBody?.restitution = 1
            //16:9
            spaceDustBall.size = CGSize(
                width: (spaceDustBall.size.width * (inThisScene.size.width / spaceDustBall.size.width)*(4.63/100)),
                height: (spaceDustBall.size.height * (inThisScene.size.height / spaceDustBall.size.height)*(2.6/100)))
            spaceDustBall.physicsBody = SKPhysicsBody(circleOfRadius: (spaceDustBall.size.width / 2))
            spaceDustBall.physicsBody?.allowsRotation = false
            spaceDustBall.physicsBody?.affectedByGravity = true
            spaceDustBall.physicsBody?.friction = 0
            spaceDustBall.physicsBody?.restitution = 1
            spaceDustBall.physicsBody?.linearDamping = 0
            spaceDustBall.physicsBody?.angularDamping = 0
            spaceDustBall.physicsBody?.mass = 0.01
            //16:9
            spaceDustTimer.size = CGSize(
                width: (spaceDustTimer.size.width * (inThisScene.size.width / spaceDustTimer.size.width)*(22/100)),
                height: (spaceDustTimer.size.height * (inThisScene.size.height / spaceDustTimer.size.height)*(4/100)))
            //16:9
            spaceDustScore.size = CGSize(
                width: (spaceDustScore.size.width * (inThisScene.size.width / spaceDustScore.size.width)*(22.22/100)),
                height: (spaceDustScore.size.height * (inThisScene.size.height / spaceDustScore.size.height)*(4.17/100)))
            
            /// Acid Rain Skin
            //16:9
            acidRainPaddle.size = CGSize(
                width: ((acidRainPaddle.size.width * (inThisScene.size.width / acidRainPaddle.size.width)*(25/100))),
                height: (acidRainPaddle.size.height * (inThisScene.size.height / acidRainPaddle.size.height)*(1.56/100)))
            acidRainPaddle.physicsBody = SKPhysicsBody(rectangleOf: acidRainPaddle.size)
            acidRainPaddle.physicsBody?.isDynamic = false
            acidRainPaddle.physicsBody?.friction = 0
            acidRainPaddle.physicsBody?.restitution = 1
            //16:9
            acidRainBall.size = CGSize(
                width: (acidRainBall.size.width * (inThisScene.size.width / acidRainBall.size.width)*(4.63/100)),
                height: (acidRainBall.size.height * (inThisScene.size.height / acidRainBall.size.height)*(2.6/100)))
            acidRainBall.physicsBody = SKPhysicsBody(circleOfRadius: (acidRainBall.size.width / 2))
            acidRainBall.physicsBody?.allowsRotation = false
            acidRainBall.physicsBody?.affectedByGravity = true
            acidRainBall.physicsBody?.friction = 0
            acidRainBall.physicsBody?.restitution = 1
            acidRainBall.physicsBody?.linearDamping = 0
            acidRainBall.physicsBody?.angularDamping = 0
            acidRainBall.physicsBody?.mass = 0.01
            //16:9
            acidRainTimer.size = CGSize(
                width: (acidRainTimer.size.width * (inThisScene.size.width / acidRainTimer.size.width)*(22/100)),
                height: (acidRainTimer.size.height * (inThisScene.size.height / acidRainTimer.size.height)*(4/100)))
            //16:9
            acidRainScore.size = CGSize(
                width: (acidRainScore.size.width * (inThisScene.size.width / acidRainScore.size.width)*(22.22/100)),
                height: (acidRainScore.size.height * (inThisScene.size.height / acidRainScore.size.height)*(4.17/100)))
            
            /// End Times Skin
            //16:9
            endTimesPaddle.size = CGSize(
                width: ((endTimesPaddle.size.width * (inThisScene.size.width / endTimesPaddle.size.width)*(25/100))),
                height: (endTimesPaddle.size.height * (inThisScene.size.height / endTimesPaddle.size.height)*(1.56/100)))
            endTimesPaddle.physicsBody = SKPhysicsBody(rectangleOf: endTimesPaddle.size)
            endTimesPaddle.physicsBody?.isDynamic = false
            endTimesPaddle.physicsBody?.friction = 0
            endTimesPaddle.physicsBody?.restitution = 1
            //16:9
            endTimesBall.size = CGSize(
                width: (endTimesBall.size.width * (inThisScene.size.width / endTimesBall.size.width)*(4.63/100)),
                height: (endTimesBall.size.height * (inThisScene.size.height / endTimesBall.size.height)*(2.6/100)))
            endTimesBall.physicsBody = SKPhysicsBody(circleOfRadius: (endTimesBall.size.width / 2))
            endTimesBall.physicsBody?.allowsRotation = false
            endTimesBall.physicsBody?.affectedByGravity = true
            endTimesBall.physicsBody?.friction = 0
            endTimesBall.physicsBody?.restitution = 1
            endTimesBall.physicsBody?.linearDamping = 0
            endTimesBall.physicsBody?.angularDamping = 0
            endTimesBall.physicsBody?.mass = 0.01
            //16:9
            endTimesTimer.size = CGSize(
                width: (endTimesTimer.size.width * (inThisScene.size.width / endTimesTimer.size.width)*(22/100)),
                height: (endTimesTimer.size.height * (inThisScene.size.height / endTimesTimer.size.height)*(4/100)))
            //16:9
            endTimesScore.size = CGSize(
                width: (endTimesScore.size.width * (inThisScene.size.width / endTimesScore.size.width)*(22.22/100)),
                height: (endTimesScore.size.height * (inThisScene.size.height / endTimesScore.size.height)*(4.17/100)))
            
            /// Pumpkin Skin
            //16:9 pumpkinBall
            pumpkinPaddle.size = CGSize(
                width: ((pumpkinPaddle.size.width * (inThisScene.size.width / pumpkinPaddle.size.width)*(25/100))),
                height: (pumpkinPaddle.size.height * (inThisScene.size.height / pumpkinPaddle.size.height)*(1.56/100)))
            pumpkinPaddle.physicsBody = SKPhysicsBody(rectangleOf: pumpkinPaddle.size)
            pumpkinPaddle.physicsBody?.isDynamic = false
            pumpkinPaddle.physicsBody?.friction = 0
            pumpkinPaddle.physicsBody?.restitution = 1
            //16:9
            pumpkinBall.size = CGSize(
                width: (pumpkinBall.size.width * (inThisScene.size.width / pumpkinBall.size.width)*(4.63/100)),
                height: (pumpkinBall.size.height * (inThisScene.size.height / pumpkinBall.size.height)*(2.6/100)))
            pumpkinBall.physicsBody = SKPhysicsBody(circleOfRadius: (pumpkinBall.size.width / 2))
            pumpkinBall.physicsBody?.allowsRotation = false
            pumpkinBall.physicsBody?.affectedByGravity = true
            pumpkinBall.physicsBody?.friction = 0
            pumpkinBall.physicsBody?.restitution = 1
            pumpkinBall.physicsBody?.linearDamping = 0
            pumpkinBall.physicsBody?.angularDamping = 0
            pumpkinBall.physicsBody?.mass = 0.01
            //16:9
            pumpkinTimer.size = CGSize(
                width: (pumpkinTimer.size.width * (inThisScene.size.width / pumpkinTimer.size.width)*(22/100)),
                height: (pumpkinTimer.size.height * (inThisScene.size.height / pumpkinTimer.size.height)*(4/100)))
            //16:9
            pumpkinScore.size = CGSize(
                width: (pumpkinScore.size.width * (inThisScene.size.width / pumpkinScore.size.width)*(22.22/100)),
                height: (pumpkinScore.size.height * (inThisScene.size.height / pumpkinScore.size.height)*(4.17/100)))
            
            /// Scream Red  Skin
            //16:9 pumpkinBall
            screamRedPaddle.size = CGSize(
                width: ((screamRedPaddle.size.width * (inThisScene.size.width / screamRedPaddle.size.width)*(25/100))),
                height: (screamRedPaddle.size.height * (inThisScene.size.height / screamRedPaddle.size.height)*(1.56/100)))
            screamRedPaddle.physicsBody = SKPhysicsBody(rectangleOf: screamRedPaddle.size)
            screamRedPaddle.physicsBody?.isDynamic = false
            screamRedPaddle.physicsBody?.friction = 0
            screamRedPaddle.physicsBody?.restitution = 1
            //16:9
            screamRedBall.size = CGSize(
                width: (screamRedBall.size.width * (inThisScene.size.width / screamRedBall.size.width)*(4.63/100)),
                height: (screamRedBall.size.height * (inThisScene.size.height / screamRedBall.size.height)*(2.6/100)))
            screamRedBall.physicsBody = SKPhysicsBody(circleOfRadius: ( screamRedBall.size.width / 2))
            screamRedBall.physicsBody?.allowsRotation = false
            screamRedBall.physicsBody?.affectedByGravity = true
            screamRedBall.physicsBody?.friction = 0
            screamRedBall.physicsBody?.restitution = 1
            screamRedBall.physicsBody?.linearDamping = 0
            screamRedBall.physicsBody?.angularDamping = 0
            screamRedBall.physicsBody?.mass = 0.01
            //16:9
            screamRedTimer.size = CGSize(
                width: (screamRedTimer.size.width * (inThisScene.size.width / screamRedTimer.size.width)*(22/100)),
                height: (screamRedTimer.size.height * (inThisScene.size.height / screamRedTimer.size.height)*(4/100)))
            //16:9
            screamRedScore.size = CGSize(
                width: (screamRedScore.size.width * (inThisScene.size.width / screamRedScore.size.width)*(22.22/100)),
                height: (screamRedScore.size.height * (inThisScene.size.height / screamRedScore.size.height)*(4.17/100)))
            
            /// Scream Green  Skin
            //16:9 pumpkinBall
            screamGreenPaddle.size = CGSize(
                width: ((screamGreenPaddle.size.width * (inThisScene.size.width / screamGreenPaddle.size.width)*(25/100))),
                height: (screamGreenPaddle.size.height * (inThisScene.size.height / screamGreenPaddle.size.height)*(1.56/100)))
            screamGreenPaddle.physicsBody = SKPhysicsBody(rectangleOf: screamGreenPaddle.size)
            screamGreenPaddle.physicsBody?.isDynamic = false
            screamGreenPaddle.physicsBody?.friction = 0
            screamGreenPaddle.physicsBody?.restitution = 1
            //16:9
            screamGreenBall.size = CGSize(
                width: (screamGreenBall.size.width * (inThisScene.size.width / screamGreenBall.size.width)*(4.63/100)),
                height: (screamGreenBall.size.height * (inThisScene.size.height / screamGreenBall.size.height)*(2.6/100)))
            screamGreenBall.physicsBody = SKPhysicsBody(circleOfRadius: ( screamGreenBall.size.width / 2))
            screamGreenBall.physicsBody?.allowsRotation = false
            screamGreenBall.physicsBody?.affectedByGravity = true
            screamGreenBall.physicsBody?.friction = 0
            screamGreenBall.physicsBody?.restitution = 1
            screamGreenBall.physicsBody?.linearDamping = 0
            screamGreenBall.physicsBody?.angularDamping = 0
            screamGreenBall.physicsBody?.mass = 0.01
            //16:9
            screamGreenTimer.size = CGSize(
                width: (screamGreenTimer.size.width * (inThisScene.size.width / screamGreenTimer.size.width)*(22/100)),
                height: (screamGreenTimer.size.height * (inThisScene.size.height / screamGreenTimer.size.height)*(4/100)))
            //16:9
            screamGreenScore.size = CGSize(
                width: (screamGreenScore.size.width * (inThisScene.size.width / screamGreenScore.size.width)*(22.22/100)),
                height: (screamGreenScore.size.height * (inThisScene.size.height / screamGreenScore.size.height)*(4.17/100)))
            
        }else{
            /// Classic
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
            
            /// Retro Life Skin
            //4:3
            retroLifeSkinPaddle.size = CGSize(
                width: ((retroLifeSkinPaddle.size.width * (inThisScene.size.width / retroLifeSkinPaddle.size.width)*(24.41/100))),
                height: (retroLifeSkinPaddle.size.height * (inThisScene.size.height / retroLifeSkinPaddle.size.height)*(2.56/100)))
            retroLifeSkinPaddle.physicsBody = SKPhysicsBody(rectangleOf: retroLifeSkinPaddle.size)
            retroLifeSkinPaddle.physicsBody?.isDynamic = false
            retroLifeSkinPaddle.physicsBody?.friction = 0
            retroLifeSkinPaddle.physicsBody?.restitution = 1
            //4:3
            retroLifeSkinBall.size = CGSize(
                width: (retroLifeSkinBall.size.width * (inThisScene.size.width / retroLifeSkinBall.size.width)*(3.91/100)),
                height: (retroLifeSkinBall.size.height * (inThisScene.size.height / retroLifeSkinBall.size.height)*(2.93/100)))
            retroLifeSkinBall.physicsBody = SKPhysicsBody(circleOfRadius: (retroLifeSkinBall.size.width / 2))
            retroLifeSkinBall.physicsBody?.allowsRotation = false
            retroLifeSkinBall.physicsBody?.affectedByGravity = true
            retroLifeSkinBall.physicsBody?.friction = 0
            retroLifeSkinBall.physicsBody?.restitution = 1
            retroLifeSkinBall.physicsBody?.linearDamping = 0
            retroLifeSkinBall.physicsBody?.angularDamping = 0
            retroLifeSkinBall.physicsBody?.mass = 0.01
            //4:3
            retroLifeSkinTimer.size = CGSize(
                width: (retroLifeSkinTimer.size.width * (inThisScene.size.width / retroLifeSkinTimer.size.width)*(17.57/100)),
                height: (retroLifeSkinTimer.size.height * (inThisScene.size.height / retroLifeSkinTimer.size.height)*(4.49/100)))
            //4:3
            retroLifeSkinScore.size = CGSize(
                width: (retroLifeSkinScore.size.width * (inThisScene.size.width / retroLifeSkinScore.size.width)*(17.57/100)),
                height: (retroLifeSkinScore.size.height * (inThisScene.size.height / retroLifeSkinScore.size.height)*(4.49/100)))
            
            /// Rainbow Skin
            //4:3
            rainbowPaddle.size = CGSize(
                width: ((rainbowPaddle.size.width * (inThisScene.size.width / rainbowPaddle.size.width)*(24.41/100))),
                height: (rainbowPaddle.size.height * (inThisScene.size.height / rainbowPaddle.size.height)*(2.56/100)))
            rainbowPaddle.physicsBody = SKPhysicsBody(rectangleOf: rainbowPaddle.size)
            rainbowPaddle.physicsBody?.isDynamic = false
            rainbowPaddle.physicsBody?.friction = 0
            rainbowPaddle.physicsBody?.restitution = 1
            //4:3
            rainbowBall.size = CGSize(
                width: (rainbowBall.size.width * (inThisScene.size.width / rainbowBall.size.width)*(3.91/100)),
                height: (rainbowBall.size.height * (inThisScene.size.height / rainbowBall.size.height)*(2.93/100)))
            rainbowBall.physicsBody = SKPhysicsBody(circleOfRadius: (rainbowBall.size.width / 2))
            rainbowBall.physicsBody?.allowsRotation = false
            rainbowBall.physicsBody?.affectedByGravity = true
            rainbowBall.physicsBody?.friction = 0
            rainbowBall.physicsBody?.restitution = 1
            rainbowBall.physicsBody?.linearDamping = 0
            rainbowBall.physicsBody?.angularDamping = 0
            rainbowBall.physicsBody?.mass = 0.01
            //4:3
            rainbowTimer.size = CGSize(
                width: (rainbowTimer.size.width * (inThisScene.size.width / rainbowTimer.size.width)*(17.57/100)),
                height: (rainbowTimer.size.height * (inThisScene.size.height / rainbowTimer.size.height)*(4.49/100)))
            //4:3
            rainbowScore.size = CGSize(
                width: (rainbowScore.size.width * (inThisScene.size.width / rainbowScore.size.width)*(17.57/100)),
                height: (rainbowScore.size.height * (inThisScene.size.height / rainbowScore.size.height)*(4.49/100)))
            
            /// Light Skin
            //4:3
            lightPaddle.size = CGSize(
                width: ((lightPaddle.size.width * (inThisScene.size.width / lightPaddle.size.width)*(24.41/100))),
                height: (lightPaddle.size.height * (inThisScene.size.height / lightPaddle.size.height)*(2.56/100)))
            lightPaddle.physicsBody = SKPhysicsBody(rectangleOf: rainbowPaddle.size)
            lightPaddle.physicsBody?.isDynamic = false
            lightPaddle.physicsBody?.friction = 0
            lightPaddle.physicsBody?.restitution = 1
            //4:3
            lightBall.size = CGSize(
                width: (lightBall.size.width * (inThisScene.size.width / lightBall.size.width)*(3.91/100)),
                height: (lightBall.size.height * (inThisScene.size.height / lightBall.size.height)*(2.93/100)))
            lightBall.physicsBody = SKPhysicsBody(circleOfRadius: (lightBall.size.width / 2))
            lightBall.physicsBody?.allowsRotation = false
            lightBall.physicsBody?.affectedByGravity = true
            lightBall.physicsBody?.friction = 0
            lightBall.physicsBody?.restitution = 1
            lightBall.physicsBody?.linearDamping = 0
            lightBall.physicsBody?.angularDamping = 0
            lightBall.physicsBody?.mass = 0.01
            //4:3
            lightTimer.size = CGSize(
                width: (lightTimer.size.width * (inThisScene.size.width / lightTimer.size.width)*(17.57/100)),
                height: (lightTimer.size.height * (inThisScene.size.height / lightTimer.size.height)*(4.49/100)))
            //4:3
            lightScore.size = CGSize(
                width: (lightScore.size.width * (inThisScene.size.width / lightScore.size.width)*(17.57/100)),
                height: (lightScore.size.height * (inThisScene.size.height / lightScore.size.height)*(4.49/100)))
            
            /// Soccer Skin
            //4:3
            soccerPaddle.size = CGSize(
                width: ((soccerPaddle.size.width * (inThisScene.size.width / soccerPaddle.size.width)*(24.41/100))),
                height: (soccerPaddle.size.height * (inThisScene.size.height / soccerPaddle.size.height)*(2.56/100)))
            soccerPaddle.physicsBody = SKPhysicsBody(rectangleOf: soccerPaddle.size)
            soccerPaddle.physicsBody?.isDynamic = false
            soccerPaddle.physicsBody?.friction = 0
            soccerPaddle.physicsBody?.restitution = 1
            //4:3
            soccerBall.size = CGSize(
                width: (soccerBall.size.width * (inThisScene.size.width / soccerBall.size.width)*(3.91/100)),
                height: (soccerBall.size.height * (inThisScene.size.height / soccerBall.size.height)*(2.93/100)))
            soccerBall.physicsBody = SKPhysicsBody(circleOfRadius: (soccerBall.size.width / 2))
            soccerBall.physicsBody?.allowsRotation = false
            soccerBall.physicsBody?.affectedByGravity = true
            soccerBall.physicsBody?.friction = 0
            soccerBall.physicsBody?.restitution = 1
            soccerBall.physicsBody?.linearDamping = 0
            soccerBall.physicsBody?.angularDamping = 0
            soccerBall.physicsBody?.mass = 0.01
            //4:3
            soccerTimer.size = CGSize(
                width: (soccerTimer.size.width * (inThisScene.size.width / soccerTimer.size.width)*(17.57/100)),
                height: (soccerTimer.size.height * (inThisScene.size.height / soccerTimer.size.height)*(4.49/100)))
            //4:3
            soccerScore.size = CGSize(
                width: (soccerScore.size.width * (inThisScene.size.width / soccerScore.size.width)*(17.57/100)),
                height: (soccerScore.size.height * (inThisScene.size.height / soccerScore.size.height)*(4.49/100)))
            
            
            /// Space Dust Skin
            //4:3
            spaceDustPaddle.size = CGSize(
                width: ((spaceDustPaddle.size.width * (inThisScene.size.width / spaceDustPaddle.size.width)*(24.41/100))),
                height: (spaceDustPaddle.size.height * (inThisScene.size.height / spaceDustPaddle.size.height)*(2.56/100)))
            spaceDustPaddle.physicsBody = SKPhysicsBody(rectangleOf: spaceDustPaddle.size)
            spaceDustPaddle.physicsBody?.isDynamic = false
            spaceDustPaddle.physicsBody?.friction = 0
            spaceDustPaddle.physicsBody?.restitution = 1
            //4:3
            spaceDustBall.size = CGSize(
                width: (spaceDustBall.size.width * (inThisScene.size.width / spaceDustBall.size.width)*(3.91/100)),
                height: (spaceDustBall.size.height * (inThisScene.size.height / spaceDustBall.size.height)*(2.93/100)))
            spaceDustBall.physicsBody = SKPhysicsBody(circleOfRadius: (spaceDustBall.size.width / 2))
            spaceDustBall.physicsBody?.allowsRotation = false
            spaceDustBall.physicsBody?.affectedByGravity = true
            spaceDustBall.physicsBody?.friction = 0
            spaceDustBall.physicsBody?.restitution = 1
            spaceDustBall.physicsBody?.linearDamping = 0
            spaceDustBall.physicsBody?.angularDamping = 0
            spaceDustBall.physicsBody?.mass = 0.01
            //4:3
            spaceDustTimer.size = CGSize(
                width: (spaceDustTimer.size.width * (inThisScene.size.width / spaceDustTimer.size.width)*(17.57/100)),
                height: (spaceDustTimer.size.height * (inThisScene.size.height / spaceDustTimer.size.height)*(4.49/100)))
            //4:3
            spaceDustScore.size = CGSize(
                width: (spaceDustScore.size.width * (inThisScene.size.width / spaceDustScore.size.width)*(17.57/100)),
                height: (spaceDustScore.size.height * (inThisScene.size.height / spaceDustScore.size.height)*(4.49/100)))
            
            /// Acid Rain Skin
            //4:3
            acidRainPaddle.size = CGSize(
                width: ((acidRainPaddle.size.width * (inThisScene.size.width / acidRainPaddle.size.width)*(24.41/100))),
                height: (acidRainPaddle.size.height * (inThisScene.size.height / acidRainPaddle.size.height)*(2.56/100)))
            acidRainPaddle.physicsBody = SKPhysicsBody(rectangleOf: acidRainPaddle.size)
            acidRainPaddle.physicsBody?.isDynamic = false
            acidRainPaddle.physicsBody?.friction = 0
            acidRainPaddle.physicsBody?.restitution = 1
            //4:3
            acidRainBall.size = CGSize(
                width: (acidRainBall.size.width * (inThisScene.size.width / acidRainBall.size.width)*(3.91/100)),
                height: (acidRainBall.size.height * (inThisScene.size.height / acidRainBall.size.height)*(2.93/100)))
            acidRainBall.physicsBody = SKPhysicsBody(circleOfRadius: (acidRainBall.size.width / 2))
            acidRainBall.physicsBody?.allowsRotation = false
            acidRainBall.physicsBody?.affectedByGravity = true
            acidRainBall.physicsBody?.friction = 0
            acidRainBall.physicsBody?.restitution = 1
            acidRainBall.physicsBody?.linearDamping = 0
            acidRainBall.physicsBody?.angularDamping = 0
            acidRainBall.physicsBody?.mass = 0.01
            //4:3
            acidRainTimer.size = CGSize(
                width: (acidRainTimer.size.width * (inThisScene.size.width / acidRainTimer.size.width)*(17.57/100)),
                height: (acidRainTimer.size.height * (inThisScene.size.height / acidRainTimer.size.height)*(4.49/100)))
            //4:3
            acidRainScore.size = CGSize(
                width: (acidRainScore.size.width * (inThisScene.size.width / acidRainScore.size.width)*(17.57/100)),
                height: (acidRainScore.size.height * (inThisScene.size.height / acidRainScore.size.height)*(4.49/100)))
            
            /// End Times Skin
            //4:3
            endTimesPaddle.size = CGSize(
                width: ((endTimesPaddle.size.width * (inThisScene.size.width / endTimesPaddle.size.width)*(24.41/100))),
                height: (endTimesPaddle.size.height * (inThisScene.size.height / endTimesPaddle.size.height)*(2.56/100)))
            endTimesPaddle.physicsBody = SKPhysicsBody(rectangleOf: endTimesPaddle.size)
            endTimesPaddle.physicsBody?.isDynamic = false
            endTimesPaddle.physicsBody?.friction = 0
            endTimesPaddle.physicsBody?.restitution = 1
            //4:3
            endTimesBall.size = CGSize(
                width: (endTimesBall.size.width * (inThisScene.size.width / endTimesBall.size.width)*(3.91/100)),
                height: (endTimesBall.size.height * (inThisScene.size.height / endTimesBall.size.height)*(2.93/100)))
            endTimesBall.physicsBody = SKPhysicsBody(circleOfRadius: (endTimesBall.size.width / 2))
            endTimesBall.physicsBody?.allowsRotation = false
            endTimesBall.physicsBody?.affectedByGravity = true
            endTimesBall.physicsBody?.friction = 0
            endTimesBall.physicsBody?.restitution = 1
            endTimesBall.physicsBody?.linearDamping = 0
            endTimesBall.physicsBody?.angularDamping = 0
            endTimesBall.physicsBody?.mass = 0.01
            //4:3
            endTimesTimer.size = CGSize(
                width: (endTimesTimer.size.width * (inThisScene.size.width / endTimesTimer.size.width)*(17.57/100)),
                height: (endTimesTimer.size.height * (inThisScene.size.height / endTimesTimer.size.height)*(4.49/100)))
            //4:3
            endTimesScore.size = CGSize(
                width: (endTimesScore.size.width * (inThisScene.size.width / endTimesScore.size.width)*(17.57/100)),
                height: (endTimesScore.size.height * (inThisScene.size.height / endTimesScore.size.height)*(4.49/100)))
            
            /// Pumpkin Skin
            //4:3
            pumpkinPaddle.size = CGSize(
                width: ((pumpkinPaddle.size.width * (inThisScene.size.width / pumpkinPaddle.size.width)*(24.41/100))),
                height: (pumpkinPaddle.size.height * (inThisScene.size.height / pumpkinPaddle.size.height)*(2.56/100)))
            pumpkinPaddle.physicsBody = SKPhysicsBody(rectangleOf: pumpkinPaddle.size)
            pumpkinPaddle.physicsBody?.isDynamic = false
            pumpkinPaddle.physicsBody?.friction = 0
            pumpkinPaddle.physicsBody?.restitution = 1
            //4:3
            pumpkinBall.size = CGSize(
                width: (pumpkinBall.size.width * (inThisScene.size.width / pumpkinBall.size.width)*(3.91/100)),
                height: (pumpkinBall.size.height * (inThisScene.size.height / pumpkinBall.size.height)*(2.93/100)))
            pumpkinBall.physicsBody = SKPhysicsBody(circleOfRadius: (pumpkinBall.size.width / 2))
            pumpkinBall.physicsBody?.allowsRotation = false
            pumpkinBall.physicsBody?.affectedByGravity = true
            pumpkinBall.physicsBody?.friction = 0
            pumpkinBall.physicsBody?.restitution = 1
            pumpkinBall.physicsBody?.linearDamping = 0
            pumpkinBall.physicsBody?.angularDamping = 0
            pumpkinBall.physicsBody?.mass = 0.01
            //4:3
            pumpkinTimer.size = CGSize(
                width: (pumpkinTimer.size.width * (inThisScene.size.width / pumpkinTimer.size.width)*(17.57/100)),
                height: (pumpkinTimer.size.height * (inThisScene.size.height / pumpkinTimer.size.height)*(4.49/100)))
            //4:3
            pumpkinScore.size = CGSize(
                width: (pumpkinScore.size.width * (inThisScene.size.width / pumpkinScore.size.width)*(17.57/100)),
                height: (pumpkinScore.size.height * (inThisScene.size.height / pumpkinScore.size.height)*(4.49/100)))
            
            /// Scream Red Skin
            //4:3
            screamRedPaddle.size = CGSize(
                width: ((screamRedPaddle.size.width * (inThisScene.size.width / screamRedPaddle.size.width)*(24.41/100))),
                height: (screamRedPaddle.size.height * (inThisScene.size.height / screamRedPaddle.size.height)*(2.56/100)))
            screamRedPaddle.physicsBody = SKPhysicsBody(rectangleOf: screamRedPaddle.size)
            screamRedPaddle.physicsBody?.isDynamic = false
            screamRedPaddle.physicsBody?.friction = 0
            screamRedPaddle.physicsBody?.restitution = 1
            //4:3
            screamRedBall.size = CGSize(
                width: (screamRedBall.size.width * (inThisScene.size.width / screamRedBall.size.width)*(3.91/100)),
                height: (screamRedBall.size.height * (inThisScene.size.height / screamRedBall.size.height)*(2.93/100)))
            screamRedBall.physicsBody = SKPhysicsBody(circleOfRadius: (screamRedBall.size.width / 2))
            screamRedBall.physicsBody?.allowsRotation = false
            screamRedBall.physicsBody?.affectedByGravity = true
            screamRedBall.physicsBody?.friction = 0
            screamRedBall.physicsBody?.restitution = 1
            screamRedBall.physicsBody?.linearDamping = 0
            screamRedBall.physicsBody?.angularDamping = 0
            screamRedBall.physicsBody?.mass = 0.01
            //4:3
            screamRedTimer.size = CGSize(
                width: (screamRedTimer.size.width * (inThisScene.size.width / screamRedTimer.size.width)*(17.57/100)),
                height: (screamRedTimer.size.height * (inThisScene.size.height / screamRedTimer.size.height)*(4.49/100)))
            //4:3
            screamRedScore.size = CGSize(
                width: (screamRedScore.size.width * (inThisScene.size.width / screamRedScore.size.width)*(17.57/100)),
                height: (screamRedScore.size.height * (inThisScene.size.height / screamRedScore.size.height)*(4.49/100)))
            
            /// Scream Green Skin
            //4:3
            screamGreenPaddle.size = CGSize(
                width: ((screamGreenPaddle.size.width * (inThisScene.size.width / screamGreenPaddle.size.width)*(24.41/100))),
                height: (screamGreenPaddle.size.height * (inThisScene.size.height / screamGreenPaddle.size.height)*(2.56/100)))
            screamGreenPaddle.physicsBody = SKPhysicsBody(rectangleOf: screamGreenPaddle.size)
            screamGreenPaddle.physicsBody?.isDynamic = false
            screamGreenPaddle.physicsBody?.friction = 0
            screamGreenPaddle.physicsBody?.restitution = 1
            //4:3
            screamGreenBall.size = CGSize(
                width: (screamGreenBall.size.width * (inThisScene.size.width / screamGreenBall.size.width)*(3.91/100)),
                height: (screamGreenBall.size.height * (inThisScene.size.height / screamGreenBall.size.height)*(2.93/100)))
            screamGreenBall.physicsBody = SKPhysicsBody(circleOfRadius: (screamGreenBall.size.width / 2))
            screamGreenBall.physicsBody?.allowsRotation = false
            screamGreenBall.physicsBody?.affectedByGravity = true
            screamGreenBall.physicsBody?.friction = 0
            screamGreenBall.physicsBody?.restitution = 1
            screamGreenBall.physicsBody?.linearDamping = 0
            screamGreenBall.physicsBody?.angularDamping = 0
            screamGreenBall.physicsBody?.mass = 0.01
            //4:3
            screamGreenTimer.size = CGSize(
                width: (screamGreenTimer.size.width * (inThisScene.size.width / screamGreenTimer.size.width)*(17.57/100)),
                height: (screamGreenTimer.size.height * (inThisScene.size.height / screamGreenTimer.size.height)*(4.49/100)))
            //4:3
            screamGreenScore.size = CGSize(
                width: (screamGreenScore.size.width * (inThisScene.size.width / screamGreenScore.size.width)*(17.57/100)),
                height: (screamGreenScore.size.height * (inThisScene.size.height / screamGreenScore.size.height)*(4.49/100)))
            
            
        }//End else
    }//END Init
}//END Struct
