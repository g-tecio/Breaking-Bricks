//
//  GameControls.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Cartwheel Galaxy Inc. All rights reserved.
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
    var bgclassic: SKSpriteNode
    // Paddles
    var paddleclassic: SKSpriteNode
    // Balls
    var ballclassic: SKSpriteNode
    //Timer
    var timerBrick: SKSpriteNode
    //Score
    var scoreBrick: SKSpriteNode
    
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
        timerLabel.zPosition = 8
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
        scoreLabel.zPosition = 8
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

        //Balls
        ballclassic = SKSpriteNode.init(imageNamed: "Ball Classic")
        ballclassic.name = "ball"
        ballclassic.zPosition = 2

        //Timer Brick
        timerBrick = SKSpriteNode.init(imageNamed: "Timer_score Classic")
        timerBrick.zPosition = 7
        
        //Score Brick
        scoreBrick = SKSpriteNode.init(imageNamed: "Timer_score Classic")
        scoreBrick.zPosition = 7
        
         
        if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone ){
            
            let screenSize = UIScreen.main.bounds
            let screenWidth = screenSize.width
            let screenHeight = screenSize.height
            print(screenSize)
            print("Width: \(screenWidth)")
            print("Height: \(screenHeight)")
            
            if (screenSize == CGRect(x: 0.0, y: 0.0, width: 375.0, height: 812.0)) {
                print("iphoneX y XS EXAMPLE")
                
                timerLabel.position = CGPoint(
                    x: (inThisScene.size.width * (((765 + (timerBrick.size.width / 2)) / 1125 ) * 100) / 100),
                    y: (inThisScene.size.height * (((2186 + (timerBrick.size.height / 2)) / 2436 ) * 100) / 100)
                )
                scoreLabel.position = CGPoint(
                    x: (inThisScene.size.width * (((120 + (scoreBrick.size.width / 2)) / 1125 ) * 100) / 100),
                    y: (inThisScene.size.height * (((2186 + (scoreBrick.size.height / 2)) / 2436 ) * 100) / 100)
                )
                
                paddleclassic.position = CGPoint(
                    x: (inThisScene.size.width / 2 ),
                    y: (inThisScene.size.height * (((300 + (paddleclassic.size.height / 2)) / 2436 ) * 100) / 100))
                
                ballclassic.position =  CGPoint(
                    x: (inThisScene.size.width / 2 ),
                    y: (inThisScene.size.height * (((440 + (paddleclassic.size.height / 2)) / 2436 ) * 100) / 100))
                
                
                timerBrick.position = CGPoint(
                    x: (inThisScene.size.width * (((765 + (timerBrick.size.width / 2)) / 1125 ) * 100) / 100),
                    y: (inThisScene.size.height * (((2186 + (timerBrick.size.height / 2)) / 2436 ) * 100) / 100)
                )
                scoreBrick.position = CGPoint(
                    x: (inThisScene.size.width * (((120 + (scoreBrick.size.width / 2)) / 1125 ) * 100) / 100),
                    y: (inThisScene.size.height * (((2186 + (scoreBrick.size.height / 2)) / 2436 ) * 100) / 100)
                )
                
                /// Classic
                paddleclassic.size = CGSize(
                    width: (paddleclassic.size.width * (inThisScene.size.width / paddleclassic.size.width)*(((paddleclassic.size.width/1125)*100)/100)),
                    height: (paddleclassic.size.height * (inThisScene.size.height / paddleclassic.size.height)*(((paddleclassic.size.height/2436 )*100)/100))
                )
               
                ballclassic.size = CGSize(
                    width: (ballclassic.size.width * (inThisScene.size.width / ballclassic.size.width)*(((ballclassic.size.width/1125)*100)/100)),
                    height: (ballclassic.size.height * (inThisScene.size.height / ballclassic.size.height)*(((ballclassic.size.height/2436 )*100)/100))
                )
                
                timerBrick.size = CGSize(
                    width: (timerBrick.size.width * (inThisScene.size.width / timerBrick.size.width)*(((timerBrick.size.width/1125)*100)/100)),
                    height: (timerBrick.size.height * (inThisScene.size.height / timerBrick.size.height)*(((timerBrick.size.height/2436 )*100)/100))
                )
                
                scoreBrick.size = CGSize(
                    width: (scoreBrick.size.width * (inThisScene.size.width / scoreBrick.size.width)*(((scoreBrick.size.width/1125)*100)/100)),
                    height: (scoreBrick.size.height * (inThisScene.size.height / scoreBrick.size.height)*(((scoreBrick.size.height/2436 )*100)/100))
                )
                
            }// END iphoneX y XS EXAMPLE
            
            if (screenSize == CGRect(x: 0.0, y: 0.0, width: 414.0, height: 896.0)) {
                print("iphoneXR y MAX")

                timerLabel.position = CGPoint(
                    x: (inThisScene.size.width * (((842 + (270 / 2)) / 1242 ) * 100) / 100),
                    y: (inThisScene.size.height * (((2413 + (90 / 2)) / 2688 ) * 100) / 100)
                )
                scoreLabel.position = CGPoint(
                    x: (inThisScene.size.width * (((130 + (270 / 2)) / 1242 ) * 100) / 100),
                    y: (inThisScene.size.height * (((2413 + (90 / 2)) / 2688 ) * 100) / 100)
                )
                
                paddleclassic.position = CGPoint(
                    x: (inThisScene.size.width / 2 ),
                    y: (inThisScene.size.height * (((330 + (40 / 2)) / 2688 ) * 100) / 100))
                
                ballclassic.position =  CGPoint(
                    x: (inThisScene.size.width / 2 ),
                    y: (inThisScene.size.height * (((480 + (60 / 2)) / 2688 ) * 100) / 100))
                
                
                timerBrick.position = CGPoint(
                    x: (inThisScene.size.width * (((842 + (270 / 2)) / 1242 ) * 100) / 100),
                    y: (inThisScene.size.height * (((2413 + (90 / 2)) / 2688 ) * 100) / 100)
                )
                scoreBrick.position = CGPoint(
                    x: (inThisScene.size.width * (((130 + (270 / 2)) / 1242 ) * 100) / 100),
                    y: (inThisScene.size.height * (((2413 + (90 / 2)) / 2688 ) * 100) / 100)
                )
                
                /// Classic
                paddleclassic.size = CGSize(
                    width: (300 * (inThisScene.size.width / 300)*(((300/1242)*100)/100)),
                    height: (40 * (inThisScene.size.height / 40)*(((40/2688 )*100)/100))
                )
                
                ballclassic.size = CGSize(
                    width: (60 * (inThisScene.size.width / 60)*(((60/1242)*100)/100)),
                    height: (60 * (inThisScene.size.height / 60)*(((60/2688 )*100)/100))
                )
                
                timerBrick.size = CGSize(
                    width: (270 * (inThisScene.size.width / 270)*(((270/1242)*100)/100)),
                    height: (90 * (inThisScene.size.height / 90)*(((90/2688 )*100)/100))
                )
                
                scoreBrick.size = CGSize(
                    width: (270 * (inThisScene.size.width / 270)*(((270/1242)*100)/100)),
                    height: (90 * (inThisScene.size.height / 90)*(((90/2688 )*100)/100))
                )
                
            }// END iphoneXR y MAX
            
            if (screenSize == CGRect(x: 0.0, y: 0.0, width: 320.0, height: 568.0)) || (screenSize == CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0)) || (screenSize == CGRect(x: 0.0, y: 0.0, width: 414.0, height: 736.0)) {
                
                timerLabel.position = CGPoint(x: inThisScene.size.width*(79.73/100), y: inThisScene.size.height * (95.31/100))
                scoreLabel.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
                paddleclassic.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100) )
                ballclassic.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
                timerBrick.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
                scoreBrick.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
                
                /// Classic
                //16:9
                paddleclassic.size = CGSize(
                    width: ((paddleclassic.size.width * (inThisScene.size.width / paddleclassic.size.width)*(25/100))),
                    height: (paddleclassic.size.height * (inThisScene.size.height / paddleclassic.size.height)*(1.56/100)))
                //16:9
                ballclassic.size = CGSize(
                    width: (ballclassic.size.width * (inThisScene.size.width / ballclassic.size.width)*(4.63/100)),
                    height: (ballclassic.size.height * (inThisScene.size.height / ballclassic.size.height)*(2.6/100)))
                //16:9
                timerBrick.size = CGSize(
                    width: (timerBrick.size.width * (inThisScene.size.width / timerBrick.size.width)*(22/100)),
                    height: (timerBrick.size.height * (inThisScene.size.height / timerBrick.size.height)*(4/100)))
                //16:9
                scoreBrick.size = CGSize(
                    width: (scoreBrick.size.width * (inThisScene.size.width / scoreBrick.size.width)*(22.22/100)),
                    height: (scoreBrick.size.height * (inThisScene.size.height / scoreBrick.size.height)*(4.17/100)))
                
            }// END 16:9
 
        }else{
            
            timerLabel.position = CGPoint(x: inThisScene.size.width*(79.73/100), y: inThisScene.size.height * (95.31/100))
            scoreLabel.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
            paddleclassic.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (12.29/100) )
            ballclassic.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height * (18.54/100))
            timerBrick.position = CGPoint(x: inThisScene.size.width*(79.63/100), y: inThisScene.size.height * (95.31/100))
            scoreBrick.position = CGPoint(x: inThisScene.size.width*(20.37/100), y: inThisScene.size.height * (95.31/100))
            
            /// Classic
            //4:3
            paddleclassic.size = CGSize(
                width: ((paddleclassic.size.width * (inThisScene.size.width / paddleclassic.size.width)*(24.41/100))),
                height: (paddleclassic.size.height * (inThisScene.size.height / paddleclassic.size.height)*(2.56/100)))
            //4:3
            ballclassic.size = CGSize(
                width: (ballclassic.size.width * (inThisScene.size.width / ballclassic.size.width)*(3.91/100)),
                height: (ballclassic.size.height * (inThisScene.size.height / ballclassic.size.height)*(2.93/100)))

            //4:3
            timerBrick.size = CGSize(
                width: (timerBrick.size.width * (inThisScene.size.width / timerBrick.size.width)*(17.57/100)),
                height: (timerBrick.size.height * (inThisScene.size.height / timerBrick.size.height)*(4.49/100)))
            //4:3
            scoreBrick.size = CGSize(
                width: (scoreBrick.size.width * (inThisScene.size.width / scoreBrick.size.width)*(17.57/100)),
                height: (scoreBrick.size.height * (inThisScene.size.height / scoreBrick.size.height)*(4.49/100)))

        }//End else
        
        
        paddleclassic.physicsBody = SKPhysicsBody(rectangleOf: paddleclassic.size)
        paddleclassic.physicsBody?.isDynamic = false
        paddleclassic.physicsBody?.friction = 0
        paddleclassic.physicsBody?.restitution = 1
        
        ballclassic.physicsBody = SKPhysicsBody(circleOfRadius: (ballclassic.size.width / 2))
        ballclassic.physicsBody?.allowsRotation = false
        ballclassic.physicsBody?.affectedByGravity = true
        ballclassic.physicsBody?.friction = 0
        ballclassic.physicsBody?.restitution = 1
        ballclassic.physicsBody?.linearDamping = 0
        ballclassic.physicsBody?.angularDamping = 0
        ballclassic.physicsBody?.mass = 0.01
        
    }//END Init
}//END Struct
