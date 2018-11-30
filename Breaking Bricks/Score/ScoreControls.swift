//
//  ScoreControls.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Cartwheel Galaxy Inc. All rights reserved.
//

import SpriteKit
import Device_swift

struct ScoreControls {
    
    let deviceType = UIDevice.current.deviceType
    
    // Labels
    let scoreWinLabel: SKLabelNode
    let scoreLoseLabel: SKLabelNode
    let scoreTimeLabel: SKLabelNode
    
    /// Classic
    // Backgrounds
    var bgclassic: SKSpriteNode
    // Menu Buttons
    var menuclassic: SKSpriteNode
    // Win, Lose and Time
    var winclassic: SKSpriteNode
    var winclassiclabel: SKSpriteNode
    var loseclassic: SKSpriteNode
    var loseclassiclabel: SKSpriteNode
    var timeclassic: SKSpriteNode
    var timeclassiclabel: SKSpriteNode

    init(inThisScene: ScoreScene) {
        
        /// Score Win Label
        scoreWinLabel = SKLabelNode.init(text: "10")
        scoreWinLabel.name = "titleLabel-Menu"
        scoreWinLabel.fontName = "Roboto-Regular"
        scoreWinLabel.horizontalAlignmentMode = .center
        scoreWinLabel.verticalAlignmentMode = .center
        scoreWinLabel.fontColor = .white
        scoreWinLabel.fontSize = 32
        scoreWinLabel.zPosition = 3
        
        /// Score Lose Label
        scoreLoseLabel = SKLabelNode.init(text: "10")
        scoreLoseLabel.name = "titleLabel-Menu"
        scoreLoseLabel.fontName = "Roboto-Regular"
        scoreLoseLabel.horizontalAlignmentMode = .center
        scoreLoseLabel.verticalAlignmentMode = .center
        scoreLoseLabel.fontColor = .white
        scoreLoseLabel.fontSize = 32
        scoreLoseLabel.zPosition = 3
        
        /// Score Time Label
        scoreTimeLabel = SKLabelNode.init(text: "10")
        scoreTimeLabel.name = "titleLabel-Menu"
        scoreTimeLabel.fontName = "Roboto-Regular"
        scoreTimeLabel.horizontalAlignmentMode = .center
        scoreTimeLabel.verticalAlignmentMode = .center
        scoreTimeLabel.fontColor = .white
        scoreTimeLabel.fontSize = 32
        scoreTimeLabel.zPosition = 3
        
        ///Resizing Font, if we need
        let resizeFactorFont:CGFloat = inThisScene.size.width / 407.0
        scoreWinLabel.fontSize *= resizeFactorFont
        scoreLoseLabel.fontSize *= resizeFactorFont
        scoreTimeLabel.fontSize *= resizeFactorFont
        
        //Classic
        /// Backgrounds
        bgclassic = SKSpriteNode.init(imageNamed: "Background Classic")
        bgclassic.name = "background"
        bgclassic.zPosition = 1
        bgclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        bgclassic.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Win
        winclassic = SKSpriteNode.init(imageNamed: "Wins Classic")
        winclassic.name = "image-Win"
        winclassic.zPosition = 2
        /// Win Label
        winclassiclabel = SKSpriteNode.init(imageNamed: "Multipurpose Classic")
        winclassiclabel.name = "Label-Win"
        winclassiclabel.zPosition = 2
        /// Lose
        loseclassic = SKSpriteNode.init(imageNamed: "Lose Classic")
        loseclassic.name = "image-Lose"
        loseclassic.zPosition = 2
        /// Lose label
        loseclassiclabel = SKSpriteNode.init(imageNamed: "Multipurpose Classic")
        loseclassiclabel.name = "Label-Lose"
        loseclassiclabel.zPosition = 2
        /// Time
        timeclassic = SKSpriteNode.init(imageNamed: "Time Classic")
        timeclassic.name = "image-Time"
        timeclassic.zPosition = 2
        /// Timelabel
        timeclassiclabel = SKSpriteNode.init(imageNamed: "Multipurpose Classic")
        timeclassiclabel.name = "Label-Time"
        timeclassiclabel.zPosition = 2
        /// Menu Button
        menuclassic = SKSpriteNode.init(imageNamed: "MENU Classic")
        menuclassic.name = "buttonSprite-Menu"
        menuclassic.zPosition = 2
        menuclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(16.15/100)))
        
        if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone){
            //16:9
            scoreWinLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(73.44/100)))
            //16:4
            scoreLoseLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            scoreTimeLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(36.15/100)))
            
            /// Classic
            //16:9
            winclassic.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(73.44/100)))
            //16:9
            winclassic.size = CGSize(
                width: (winclassic.size.width * (inThisScene.size.width / winclassic.size.width)*(37.04/100)),
                height: (winclassic.size.height * (inThisScene.size.height / winclassic.size.height)*(10.42/100)))
            //16:9
            winclassiclabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(73.44/100)))
            //16:9
            winclassiclabel.size = CGSize(
                width: (winclassiclabel.size.width * (inThisScene.size.width / winclassiclabel.size.width)*(37.04/100)),
                height: (winclassiclabel.size.height * (inThisScene.size.height / winclassiclabel.size.height)*(10.42/100))
            )
            //16:9
            loseclassic.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            loseclassic.size = CGSize(
                width: (loseclassic.size.width * (inThisScene.size.width / loseclassic.size.width)*(37.04/100)),
                height: (loseclassic.size.height * (inThisScene.size.height / loseclassic.size.height)*(10.42/100)))
            //16:9
            loseclassiclabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            loseclassiclabel.size = CGSize(
                width: (loseclassiclabel.size.width * (inThisScene.size.width / loseclassiclabel.size.width)*(37.04/100)),
                height: (loseclassiclabel.size.height * (inThisScene.size.height / loseclassiclabel.size.height)*(10.42/100))
            )
            //16:9
            timeclassic.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(36.15/100)))
            //16:9
            timeclassic.size = CGSize(
                width: (timeclassic.size.width * (inThisScene.size.width / timeclassic.size.width)*(37.04/100)),
                height: (timeclassic.size.height * (inThisScene.size.height / timeclassic.size.height)*(10.42/100))
            )
            //16:9
            timeclassiclabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(36.15/100)))
            //16:9
            timeclassiclabel.size = CGSize(
                width: (timeclassiclabel.size.width * (inThisScene.size.width / timeclassiclabel.size.width)*(37.04/100)),
                height: (timeclassiclabel.size.height * (inThisScene.size.height / timeclassiclabel.size.height)*(10.42/100))
            )
            //16:9
            menuclassic.size = CGSize(
                width: (menuclassic.size.width * (inThisScene.size.width / menuclassic.size.width)*(37.04/100)),
                height: (menuclassic.size.height * (inThisScene.size.height / menuclassic.size.height)*(10.42/100))
            )
        }else{
            //4:3
            scoreWinLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            scoreLoseLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            scoreTimeLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(36.15/100)))
            
            /// Classic
            //4:3
            winclassic.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            winclassic.size  = CGSize(
                width: (winclassic.size.width * (inThisScene.size.width / winclassic.size.width)*(29.3/100)),
                height: (winclassic.size.height * (inThisScene.size.height / winclassic.size.height)*(11/100)))
            //4:3
            winclassiclabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            winclassiclabel.size  = CGSize(
                width: (winclassiclabel.size.width * (inThisScene.size.width / winclassiclabel.size.width)*(29.3/100)),
                height: (winclassiclabel.size.height * (inThisScene.size.height / winclassiclabel.size.height)*(11/100)))
            //4:3
            loseclassic.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            loseclassic.size  = CGSize(
                width: (loseclassic.size.width * (inThisScene.size.width / loseclassic.size.width)*(29.3/100)),
                height: (loseclassic.size.height * (inThisScene.size.height / loseclassic.size.height)*(11/100)))
            //4:3
            loseclassiclabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            loseclassiclabel.size  = CGSize(
                width: (loseclassiclabel.size.width * (inThisScene.size.width / loseclassiclabel.size.width)*(29.3/100)),
                height: (loseclassiclabel.size.height * (inThisScene.size.height / loseclassiclabel.size.height)*(11/100)))
            //4:3
            timeclassic.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(36.15/100)))
            //4:3
            timeclassic.size  = CGSize(
                width: (timeclassic.size.width * (inThisScene.size.width / timeclassic.size.width)*(29.3/100)),
                height: (timeclassic.size.height * (inThisScene.size.height / timeclassic.size.height)*(11/100)))
            //4:3
            timeclassiclabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(36.15/100)))
            //4:3
            timeclassiclabel.size  = CGSize(
                width: (timeclassiclabel.size.width * (inThisScene.size.width / timeclassiclabel.size.width)*(29.3/100)),
                height: (timeclassiclabel.size.height * (inThisScene.size.height / timeclassiclabel.size.height)*(11/100)))
            //4:3
            menuclassic.size  = CGSize(
                width: (menuclassic.size.width * (inThisScene.size.width / menuclassic.size.width)*(29.3/100)),
                height: (menuclassic.size.height * (inThisScene.size.height / menuclassic.size.height)*(11/100))
            )
        }// END Else
    }//END Init
}//END Struct
