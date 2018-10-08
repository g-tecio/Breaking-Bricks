//
//  ScoreControls.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Luis Reyes. All rights reserved.
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
    let bgclassic: SKSpriteNode
    // Menu Buttons
    let menuclassic: SKSpriteNode
    // Win, Lose and Time
    let winclassic: SKSpriteNode
    let winclassiclabel: SKSpriteNode
    let loseclassic: SKSpriteNode
    let loseclassiclabel: SKSpriteNode
    let timeclassic: SKSpriteNode
    let timeclassiclabel: SKSpriteNode
    
    /// Retro Life Skin
    // Backgrounds
    let retroLifeSkinBackground: SKSpriteNode
    // Menu Buttons
    let retroLifeSkinMenu: SKSpriteNode
    // Win, Lose and Time
    let retroLifeSkinWin: SKSpriteNode
    let retroLifeSkinWinLabel: SKSpriteNode
    let retroLifeSkinLose: SKSpriteNode
    let retroLifeSkinLoseLabel: SKSpriteNode
    let retroLifeSkinTime: SKSpriteNode
    let retroLifeSkinTimeLabel: SKSpriteNode
    
    /// Rainbow Skin
    // Backgrounds
    let rainbowBackground: SKSpriteNode
    // Menu Buttons
    let rainbowMenu: SKSpriteNode
    // Win, Lose and Time
    let rainbowWin: SKSpriteNode
    let rainbowWinLabel: SKSpriteNode
    let rainbowLose: SKSpriteNode
    let rainbowLoseLabel: SKSpriteNode
    let rainbowTime: SKSpriteNode
    let rainbowTimeLabel: SKSpriteNode
    
    /// Light Skin
    // Backgrounds
    let lightBackground: SKSpriteNode
    // Menu Buttons
    let lightMenu: SKSpriteNode
    // Win, Lose and Time
    let lightWin: SKSpriteNode
    let lightWinLabel: SKSpriteNode
    let lightLose: SKSpriteNode
    let lightLoseLabel: SKSpriteNode
    let lightTime: SKSpriteNode
    let lightTimeLabel: SKSpriteNode
    
    /// Soccer Skin
    // Backgrounds
    let soccerBackground: SKSpriteNode
    // Menu Buttons
    let soccerMenu: SKSpriteNode
    // Win, Lose and Time
    let soccerWin: SKSpriteNode
    let soccerWinLabel: SKSpriteNode
    let soccerLose: SKSpriteNode
    let soccerLoseLabel: SKSpriteNode
    let soccerTime: SKSpriteNode
    let soccerTimeLabel: SKSpriteNode
    
    /// Soccer Skin
    // Backgrounds
    let spaceDustBackground: SKSpriteNode
    // Menu Buttons
    let spaceDustMenu: SKSpriteNode
    // Win, Lose and Time
    let spaceDustWin: SKSpriteNode
    let spaceDustWinLabel: SKSpriteNode
    let spaceDustLose: SKSpriteNode
    let spaceDustLoseLabel: SKSpriteNode
    let spaceDustTime: SKSpriteNode
    let spaceDustTimeLabel: SKSpriteNode
    
    /// Acid Rain Skin
    // Backgrounds
    let acidRainBackground: SKSpriteNode
    // Menu Buttons
    let acidRainMenu: SKSpriteNode
    // Win, Lose and Time
    let acidRainWin: SKSpriteNode
    let acidRainWinLabel: SKSpriteNode
    let acidRainLose: SKSpriteNode
    let acidRainLoseLabel: SKSpriteNode
    let acidRainTime: SKSpriteNode
    let acidRainTimeLabel: SKSpriteNode
    
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
        
        // Retro Life Skin
        /// Backgrounds
        retroLifeSkinBackground = SKSpriteNode.init(imageNamed: "Background Retro")
        retroLifeSkinBackground.name = "background"
        retroLifeSkinBackground.zPosition = 1
        retroLifeSkinBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        retroLifeSkinBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Win
        retroLifeSkinWin = SKSpriteNode.init(imageNamed: "Wins Retro")
        retroLifeSkinWin.name = "image-Win"
        retroLifeSkinWin.zPosition = 2
        /// WinLabel
        retroLifeSkinWinLabel = SKSpriteNode.init(imageNamed: "Multipurpose Retro")
        retroLifeSkinWinLabel.name = "Label-Win"
        retroLifeSkinWinLabel.zPosition = 2
        /// Lose
        retroLifeSkinLose = SKSpriteNode.init(imageNamed: "Lose Retro")
        retroLifeSkinLose.name = "image-Lose"
        retroLifeSkinLose.zPosition = 2
        /// Loselabel
        retroLifeSkinLoseLabel = SKSpriteNode.init(imageNamed: "Multipurpose Retro")
        retroLifeSkinLoseLabel.name = "Label-Lose"
        retroLifeSkinLoseLabel.zPosition = 2
        /// Time
        retroLifeSkinTime = SKSpriteNode.init(imageNamed: "Time Retro")
        retroLifeSkinTime.name = "image-Time"
        retroLifeSkinTime.zPosition = 2
        /// Timelabel
        retroLifeSkinTimeLabel = SKSpriteNode.init(imageNamed: "Multipurpose Retro")
        retroLifeSkinTimeLabel.name = "Label-Time"
        retroLifeSkinTimeLabel.zPosition = 2
        /// Menu Button
        retroLifeSkinMenu = SKSpriteNode.init(imageNamed: "MENU Retro")
        retroLifeSkinMenu.name = "buttonSprite-Menu"
        retroLifeSkinMenu.zPosition = 2
        retroLifeSkinMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(16.15/100)))
        
        // Rainbow Skin
        /// Backgrounds
        rainbowBackground = SKSpriteNode.init(imageNamed: "Background Rainbow")
        rainbowBackground.name = "background"
        rainbowBackground.zPosition = 1
        rainbowBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        rainbowBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Win
        rainbowWin = SKSpriteNode.init(imageNamed: "Wins Rainbow")
        rainbowWin.name = "image-Win"
        rainbowWin.zPosition = 2
        /// WinLabel
        rainbowWinLabel = SKSpriteNode.init(imageNamed: "Empty 1 Rainbow")
        rainbowWinLabel.name = "Label-Win"
        rainbowWinLabel.zPosition = 2
        /// Lose
        rainbowLose = SKSpriteNode.init(imageNamed: "Lose Rainbow")
        rainbowLose.name = "image-Lose"
        rainbowLose.zPosition = 2
        /// Loselabel
        rainbowLoseLabel = SKSpriteNode.init(imageNamed: "Empty 2 Rainbow")
        rainbowLoseLabel.name = "Label-Lose"
        rainbowLoseLabel.zPosition = 2
        /// Time
        rainbowTime = SKSpriteNode.init(imageNamed: "Time Rainbow")
        rainbowTime.name = "image-Time"
        rainbowTime.zPosition = 2
        /// Timelabel
        rainbowTimeLabel = SKSpriteNode.init(imageNamed: "Empty 3 Rainbow")
        rainbowTimeLabel.name = "Label-Time"
        rainbowTimeLabel.zPosition = 2
        /// Menu Button
        rainbowMenu = SKSpriteNode.init(imageNamed: "Menu Rainbow")
        rainbowMenu.name = "buttonSprite-Menu"
        rainbowMenu.zPosition = 2
        rainbowMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(16.15/100)))
        
        // Light Skin
        /// Backgrounds
        lightBackground = SKSpriteNode.init(imageNamed: "Background Light")
        lightBackground.name = "background"
        lightBackground.zPosition = 1
        lightBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        lightBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Win
        lightWin = SKSpriteNode.init(imageNamed: "Wins Light")
        lightWin.name = "image-Win"
        lightWin.zPosition = 2
        /// WinLabel
        lightWinLabel = SKSpriteNode.init(imageNamed: "Mutipurpose Light")
        lightWinLabel.name = "Label-Win"
        lightWinLabel.zPosition = 2
        /// Lose
        lightLose = SKSpriteNode.init(imageNamed: "Lose Light")
        lightLose.name = "image-Lose"
        lightLose.zPosition = 2
        /// Loselabel
        lightLoseLabel = SKSpriteNode.init(imageNamed: "Mutipurpose Light")
        lightLoseLabel.name = "Label-Lose"
        lightLoseLabel.zPosition = 2
        /// Time
        lightTime = SKSpriteNode.init(imageNamed: "Time Light")
        lightTime.name = "image-Time"
        lightTime.zPosition = 2
        /// Timelabel
        lightTimeLabel = SKSpriteNode.init(imageNamed: "Mutipurpose Light")
        lightTimeLabel.name = "Label-Time"
        lightTimeLabel.zPosition = 2
        /// Menu Button
        lightMenu = SKSpriteNode.init(imageNamed: "MENU Light")
        lightMenu.name = "buttonSprite-Menu"
        lightMenu.zPosition = 2
        lightMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(16.15/100)))
        
        // Soccer Skin
        /// Backgrounds
        soccerBackground = SKSpriteNode.init(imageNamed: "Background Soccer")
        soccerBackground.name = "background"
        soccerBackground.zPosition = 1
        soccerBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        soccerBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Win
        soccerWin = SKSpriteNode.init(imageNamed: "Wins Soccer")
        soccerWin.name = "image-Win"
        soccerWin.zPosition = 2
        /// WinLabel
        soccerWinLabel = SKSpriteNode.init(imageNamed: "Multipurpose Soccer")
        soccerWinLabel.name = "Label-Win"
        soccerWinLabel.zPosition = 2
        /// Lose
        soccerLose = SKSpriteNode.init(imageNamed: "Lose Soccer")
        soccerLose.name = "image-Lose"
        soccerLose.zPosition = 2
        /// Loselabel
        soccerLoseLabel = SKSpriteNode.init(imageNamed: "Multipurpose Soccer")
        soccerLoseLabel.name = "Label-Lose"
        soccerLoseLabel.zPosition = 2
        /// Time
        soccerTime = SKSpriteNode.init(imageNamed: "Time Soccer")
        soccerTime.name = "image-Time"
        soccerTime.zPosition = 2
        /// Timelabel
        soccerTimeLabel = SKSpriteNode.init(imageNamed: "Multipurpose Soccer")
        soccerTimeLabel.name = "Label-Time"
        soccerTimeLabel.zPosition = 2
        /// Menu Button
        soccerMenu = SKSpriteNode.init(imageNamed: "MENU Soccer")
        soccerMenu.name = "buttonSprite-Menu"
        soccerMenu.zPosition = 2
        soccerMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(16.15/100)))
        
        
        // Space Dust Skin
        /// Backgrounds
        spaceDustBackground = SKSpriteNode.init(imageNamed: "Background Dust")
        spaceDustBackground.name = "background"
        spaceDustBackground.zPosition = 1
        spaceDustBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        spaceDustBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Win
        spaceDustWin = SKSpriteNode.init(imageNamed: "Wins Dust")
        spaceDustWin.name = "image-Win"
        spaceDustWin.zPosition = 2
        /// WinLabel
        spaceDustWinLabel = SKSpriteNode.init(imageNamed: "Multipurpose Dust")
        spaceDustWinLabel.name = "Label-Win"
        spaceDustWinLabel.zPosition = 2
        /// Lose
        spaceDustLose = SKSpriteNode.init(imageNamed: "Lose Dust")
        spaceDustLose.name = "image-Lose"
        spaceDustLose.zPosition = 2
        /// Loselabel
        spaceDustLoseLabel = SKSpriteNode.init(imageNamed: "Multipurpose Dust")
        spaceDustLoseLabel.name = "Label-Lose"
        spaceDustLoseLabel.zPosition = 2
        /// Time
        spaceDustTime = SKSpriteNode.init(imageNamed: "Time Dust")
        spaceDustTime.name = "image-Time"
        spaceDustTime.zPosition = 2
        /// Timelabel
        spaceDustTimeLabel = SKSpriteNode.init(imageNamed: "Multipurpose Dust")
        spaceDustTimeLabel.name = "Label-Time"
        spaceDustTimeLabel.zPosition = 2
        /// Menu Button
        spaceDustMenu = SKSpriteNode.init(imageNamed: "MENU Dust")
        spaceDustMenu.name = "buttonSprite-Menu"
        spaceDustMenu.zPosition = 2
        spaceDustMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(16.15/100)))
        
        // Acid Rain Skin
        /// Backgrounds
        acidRainBackground = SKSpriteNode.init(imageNamed: "Background Toxic")
        acidRainBackground.name = "background"
        acidRainBackground.zPosition = 1
        acidRainBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        acidRainBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Win
        acidRainWin = SKSpriteNode.init(imageNamed: "Wins Toxic")
        acidRainWin.name = "image-Win"
        acidRainWin.zPosition = 2
        /// WinLabel
        acidRainWinLabel = SKSpriteNode.init(imageNamed: "Mutipurpose Toxic")
        acidRainWinLabel.name = "Label-Win"
        acidRainWinLabel.zPosition = 2
        /// Lose
        acidRainLose = SKSpriteNode.init(imageNamed: "Lose Toxic")
        acidRainLose.name = "image-Lose"
        acidRainLose.zPosition = 2
        /// Loselabel
        acidRainLoseLabel = SKSpriteNode.init(imageNamed: "Mutipurpose Toxic")
        acidRainLoseLabel.name = "Label-Lose"
        acidRainLoseLabel.zPosition = 2
        /// Time
        acidRainTime = SKSpriteNode.init(imageNamed: "Time Toxic")
        acidRainTime.name = "image-Time"
        acidRainTime.zPosition = 2
        /// Timelabel
        acidRainTimeLabel = SKSpriteNode.init(imageNamed: "Mutipurpose Toxic")
        acidRainTimeLabel.name = "Label-Time"
        acidRainTimeLabel.zPosition = 2
        /// Menu Button
        acidRainMenu = SKSpriteNode.init(imageNamed: "MENU Toxic")
        acidRainMenu.name = "buttonSprite-Menu"
        acidRainMenu.zPosition = 2
        acidRainMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(16.15/100)))
        
        
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
            
            /// Retro Life Skin
            //16:9
            retroLifeSkinWin.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(73.44/100)))
            //16:9
            retroLifeSkinWin.size = CGSize(
                width: (retroLifeSkinWin.size.width * (inThisScene.size.width / retroLifeSkinWin.size.width)*(37.04/100)),
                height: (retroLifeSkinWin.size.height * (inThisScene.size.height / retroLifeSkinWin.size.height)*(10.42/100)))
            //16:9
            retroLifeSkinWinLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(73.44/100)))
            //16:9
            retroLifeSkinWinLabel.size = CGSize(
                width: (retroLifeSkinWinLabel.size.width * (inThisScene.size.width / retroLifeSkinWinLabel.size.width)*(37.04/100)),
                height: (retroLifeSkinWinLabel.size.height * (inThisScene.size.height / retroLifeSkinWinLabel.size.height)*(10.42/100))
            )
            //16:9
            retroLifeSkinLose.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            retroLifeSkinLose.size = CGSize(
                width: (retroLifeSkinLose.size.width * (inThisScene.size.width / retroLifeSkinLose.size.width)*(37.04/100)),
                height: (retroLifeSkinLose.size.height * (inThisScene.size.height / retroLifeSkinLose.size.height)*(10.42/100)))
            //16:9
            retroLifeSkinLoseLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            retroLifeSkinLoseLabel.size = CGSize(
                width: (retroLifeSkinLoseLabel.size.width * (inThisScene.size.width / retroLifeSkinLoseLabel.size.width)*(37.04/100)),
                height: (retroLifeSkinLoseLabel.size.height * (inThisScene.size.height / retroLifeSkinLoseLabel.size.height)*(10.42/100))
            )
            //16:9
            retroLifeSkinTime.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(36.15/100)))
            //16:9
            retroLifeSkinTime.size = CGSize(
                width: (retroLifeSkinTime.size.width * (inThisScene.size.width / retroLifeSkinTime.size.width)*(37.04/100)),
                height: (retroLifeSkinTime.size.height * (inThisScene.size.height / retroLifeSkinTime.size.height)*(10.42/100))
            )
            //16:9
            retroLifeSkinTimeLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(36.15/100)))
            //16:9
            retroLifeSkinTimeLabel.size = CGSize(
                width: (retroLifeSkinTimeLabel.size.width * (inThisScene.size.width / retroLifeSkinTimeLabel.size.width)*(37.04/100)),
                height: (retroLifeSkinTimeLabel.size.height * (inThisScene.size.height / retroLifeSkinTimeLabel.size.height)*(10.42/100))
            )
            //16:9
            retroLifeSkinMenu.size = CGSize(
                width: (retroLifeSkinMenu.size.width * (inThisScene.size.width / retroLifeSkinMenu.size.width)*(37.04/100)),
                height: (retroLifeSkinMenu.size.height * (inThisScene.size.height / retroLifeSkinMenu.size.height)*(10.42/100))
            )
            
            /// Rainbow Skin
            //16:9
            rainbowWin.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(73.44/100)))
            //16:9
            rainbowWin.size = CGSize(
                width: (rainbowWin.size.width * (inThisScene.size.width / rainbowWin.size.width)*(37.04/100)),
                height: (rainbowWin.size.height * (inThisScene.size.height / rainbowWin.size.height)*(10.42/100)))
            //16:9
            rainbowWinLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(73.44/100)))
            //16:9
            rainbowWinLabel.size = CGSize(
                width: (rainbowWinLabel.size.width * (inThisScene.size.width / rainbowWinLabel.size.width)*(37.04/100)),
                height: (rainbowWinLabel.size.height * (inThisScene.size.height / rainbowWinLabel.size.height)*(10.42/100))
            )
            //16:9
            rainbowLose.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            rainbowLose.size = CGSize(
                width: (rainbowLose.size.width * (inThisScene.size.width / rainbowLose.size.width)*(37.04/100)),
                height: (rainbowLose.size.height * (inThisScene.size.height / rainbowLose.size.height)*(10.42/100)))
            //16:9
            rainbowLoseLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            rainbowLoseLabel.size = CGSize(
                width: (rainbowLoseLabel.size.width * (inThisScene.size.width / rainbowLoseLabel.size.width)*(37.04/100)),
                height: (rainbowLoseLabel.size.height * (inThisScene.size.height / rainbowLoseLabel.size.height)*(10.42/100))
            )
            //16:9
            rainbowTime.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(36.15/100)))
            //16:9
            rainbowTime.size = CGSize(
                width: (rainbowTime.size.width * (inThisScene.size.width / rainbowTime.size.width)*(37.04/100)),
                height: (rainbowTime.size.height * (inThisScene.size.height / rainbowTime.size.height)*(10.42/100))
            )
            //16:9
            rainbowTimeLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(36.15/100)))
            //16:9
            rainbowTimeLabel.size = CGSize(
                width: (rainbowTimeLabel.size.width * (inThisScene.size.width / rainbowTimeLabel.size.width)*(37.04/100)),
                height: (rainbowTimeLabel.size.height * (inThisScene.size.height / rainbowTimeLabel.size.height)*(10.42/100))
            )
            //16:9
            rainbowMenu.size = CGSize(
                width: (rainbowMenu.size.width * (inThisScene.size.width / rainbowMenu.size.width)*(37.04/100)),
                height: (rainbowMenu.size.height * (inThisScene.size.height / rainbowMenu.size.height)*(10.42/100))
            )
            
            /// Light Skin
            //16:9
            lightWin.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(73.44/100)))
            //16:9
            lightWin.size = CGSize(
                width: (lightWin.size.width * (inThisScene.size.width / lightWin.size.width)*(37.04/100)),
                height: (lightWin.size.height * (inThisScene.size.height / lightWin.size.height)*(10.42/100)))
            //16:9
            lightWinLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(73.44/100)))
            //16:9
            lightWinLabel.size = CGSize(
                width: (lightWinLabel.size.width * (inThisScene.size.width / lightWinLabel.size.width)*(37.04/100)),
                height: (lightWinLabel.size.height * (inThisScene.size.height / lightWinLabel.size.height)*(10.42/100))
            )
            //16:9
            lightLose.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            lightLose.size = CGSize(
                width: (lightLose.size.width * (inThisScene.size.width / lightLose.size.width)*(37.04/100)),
                height: (lightLose.size.height * (inThisScene.size.height / lightLose.size.height)*(10.42/100)))
            //16:9
            lightLoseLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            lightLoseLabel.size = CGSize(
                width: (lightLoseLabel.size.width * (inThisScene.size.width / lightLoseLabel.size.width)*(37.04/100)),
                height: (lightLoseLabel.size.height * (inThisScene.size.height / lightLoseLabel.size.height)*(10.42/100))
            )
            //16:9
            lightTime.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(36.15/100)))
            //16:9
            lightTime.size = CGSize(
                width: (lightTime.size.width * (inThisScene.size.width / lightTime.size.width)*(37.04/100)),
                height: (lightTime.size.height * (inThisScene.size.height / lightTime.size.height)*(10.42/100))
            )
            //16:9
            lightTimeLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(36.15/100)))
            //16:9
            lightTimeLabel.size = CGSize(
                width: (lightTimeLabel.size.width * (inThisScene.size.width / lightTimeLabel.size.width)*(37.04/100)),
                height: (lightTimeLabel.size.height * (inThisScene.size.height / lightTimeLabel.size.height)*(10.42/100))
            )
            //16:9
            lightMenu.size = CGSize(
                width: (lightMenu.size.width * (inThisScene.size.width / lightMenu.size.width)*(37.04/100)),
                height: (lightMenu.size.height * (inThisScene.size.height / lightMenu.size.height)*(10.42/100))
            )
            
            
            /// Soccer Skin
            //16:9
            soccerWin.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(73.44/100)))
            //16:9
            soccerWin.size = CGSize(
                width: (soccerWin.size.width * (inThisScene.size.width / soccerWin.size.width)*(37.04/100)),
                height: (soccerWin.size.height * (inThisScene.size.height / soccerWin.size.height)*(10.42/100)))
            //16:9
            soccerWinLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(73.44/100)))
            //16:9
            soccerWinLabel.size = CGSize(
                width: (soccerWinLabel.size.width * (inThisScene.size.width / soccerWinLabel.size.width)*(37.04/100)),
                height: (soccerWinLabel.size.height * (inThisScene.size.height / soccerWinLabel.size.height)*(10.42/100))
            )
            //16:9
            soccerLose.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            soccerLose.size = CGSize(
                width: (soccerLose.size.width * (inThisScene.size.width / soccerLose.size.width)*(37.04/100)),
                height: (soccerLose.size.height * (inThisScene.size.height / soccerLose.size.height)*(10.42/100)))
            //16:9
            soccerLoseLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            soccerLoseLabel.size = CGSize(
                width: (soccerLoseLabel.size.width * (inThisScene.size.width / soccerLoseLabel.size.width)*(37.04/100)),
                height: (soccerLoseLabel.size.height * (inThisScene.size.height / soccerLoseLabel.size.height)*(10.42/100))
            )
            //16:9
            soccerTime.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(36.15/100)))
            //16:9
            soccerTime.size = CGSize(
                width: (soccerTime.size.width * (inThisScene.size.width / soccerTime.size.width)*(37.04/100)),
                height: (soccerTime.size.height * (inThisScene.size.height / soccerTime.size.height)*(10.42/100))
            )
            //16:9
            soccerTimeLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(36.15/100)))
            //16:9
            soccerTimeLabel.size = CGSize(
                width: (soccerTimeLabel.size.width * (inThisScene.size.width / soccerTimeLabel.size.width)*(37.04/100)),
                height: (soccerTimeLabel.size.height * (inThisScene.size.height / soccerTimeLabel.size.height)*(10.42/100))
            )
            //16:9
            soccerMenu.size = CGSize(
                width: (soccerMenu.size.width * (inThisScene.size.width / soccerMenu.size.width)*(37.04/100)),
                height: (soccerMenu.size.height * (inThisScene.size.height / soccerMenu.size.height)*(10.42/100))
            )
            
            
            /// Dust Skin
            //16:9
            spaceDustWin.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(73.44/100)))
            //16:9
            spaceDustWin.size = CGSize(
                width: (spaceDustWin.size.width * (inThisScene.size.width / spaceDustWin.size.width)*(37.04/100)),
                height: (spaceDustWin.size.height * (inThisScene.size.height / spaceDustWin.size.height)*(10.42/100)))
            //16:9
            spaceDustWinLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(73.44/100)))
            //16:9
            spaceDustWinLabel.size = CGSize(
                width: (spaceDustWinLabel.size.width * (inThisScene.size.width / spaceDustWinLabel.size.width)*(37.04/100)),
                height: (spaceDustWinLabel.size.height * (inThisScene.size.height / spaceDustWinLabel.size.height)*(10.42/100))
            )
            //16:9
            spaceDustLose.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            spaceDustLose.size = CGSize(
                width: (spaceDustLose.size.width * (inThisScene.size.width / spaceDustLose.size.width)*(37.04/100)),
                height: (spaceDustLose.size.height * (inThisScene.size.height / spaceDustLose.size.height)*(10.42/100)))
            //16:9
            spaceDustLoseLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            spaceDustLoseLabel.size = CGSize(
                width: (spaceDustLoseLabel.size.width * (inThisScene.size.width / spaceDustLoseLabel.size.width)*(37.04/100)),
                height: (spaceDustLoseLabel.size.height * (inThisScene.size.height / spaceDustLoseLabel.size.height)*(10.42/100))
            )
            //16:9
            spaceDustTime.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(36.15/100)))
            //16:9
            spaceDustTime.size = CGSize(
                width: (spaceDustTime.size.width * (inThisScene.size.width / spaceDustTime.size.width)*(37.04/100)),
                height: (spaceDustTime.size.height * (inThisScene.size.height / spaceDustTime.size.height)*(10.42/100))
            )
            //16:9
            spaceDustTimeLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(36.15/100)))
            //16:9
            spaceDustTimeLabel.size = CGSize(
                width: (spaceDustTimeLabel.size.width * (inThisScene.size.width / spaceDustTimeLabel.size.width)*(37.04/100)),
                height: (spaceDustTimeLabel.size.height * (inThisScene.size.height / spaceDustTimeLabel.size.height)*(10.42/100))
            )
            //16:9
            spaceDustMenu.size = CGSize(
                width: (spaceDustMenu.size.width * (inThisScene.size.width / spaceDustMenu.size.width)*(37.04/100)),
                height: (spaceDustMenu.size.height * (inThisScene.size.height / spaceDustMenu.size.height)*(10.42/100))
            )
            
            
            /// Acid Rain Skin
            //16:9
            acidRainWin.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(73.44/100)))
            //16:9
            acidRainWin.size = CGSize(
                width: (acidRainWin.size.width * (inThisScene.size.width / acidRainWin.size.width)*(37.04/100)),
                height: (acidRainWin.size.height * (inThisScene.size.height / acidRainWin.size.height)*(10.42/100)))
            //16:9
            acidRainWinLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(73.44/100)))
            //16:9
            acidRainWinLabel.size = CGSize(
                width: (acidRainWinLabel.size.width * (inThisScene.size.width / acidRainWinLabel.size.width)*(37.04/100)),
                height: (acidRainWinLabel.size.height * (inThisScene.size.height / acidRainWinLabel.size.height)*(10.42/100))
            )
            //16:9
            acidRainLose.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            acidRainLose.size = CGSize(
                width: (acidRainLose.size.width * (inThisScene.size.width / acidRainLose.size.width)*(37.04/100)),
                height: (acidRainLose.size.height * (inThisScene.size.height / acidRainLose.size.height)*(10.42/100)))
            //16:9
            acidRainLoseLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(54.79/100)))
            //16:9
            acidRainLoseLabel.size = CGSize(
                width: (acidRainLoseLabel.size.width * (inThisScene.size.width / acidRainLoseLabel.size.width)*(37.04/100)),
                height: (acidRainLoseLabel.size.height * (inThisScene.size.height / acidRainLoseLabel.size.height)*(10.42/100))
            )
            //16:9
            acidRainTime.position = CGPoint(x: inThisScene.size.width*(29.63/100), y: (inThisScene.size.height*(36.15/100)))
            //16:9
            acidRainTime.size = CGSize(
                width: (acidRainTime.size.width * (inThisScene.size.width / acidRainTime.size.width)*(37.04/100)),
                height: (acidRainTime.size.height * (inThisScene.size.height / acidRainTime.size.height)*(10.42/100))
            )
            //16:9
            acidRainTimeLabel.position = CGPoint(x: inThisScene.size.width*(70.37/100), y: (inThisScene.size.height*(36.15/100)))
            //16:9
            acidRainTimeLabel.size = CGSize(
                width: (acidRainTimeLabel.size.width * (inThisScene.size.width / acidRainTimeLabel.size.width)*(37.04/100)),
                height: (acidRainTimeLabel.size.height * (inThisScene.size.height / acidRainTimeLabel.size.height)*(10.42/100))
            )
            //16:9
            acidRainMenu.size = CGSize(
                width: (acidRainMenu.size.width * (inThisScene.size.width / acidRainMenu.size.width)*(37.04/100)),
                height: (acidRainMenu.size.height * (inThisScene.size.height / acidRainMenu.size.height)*(10.42/100))
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
                height: (menuclassic.size.height * (inThisScene.size.height / menuclassic.size.height)*(11/100)))
            
            /// Retro Life Skin
            //4:3
            retroLifeSkinWin.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            retroLifeSkinWin.size  = CGSize(
                width: (retroLifeSkinWin.size.width * (inThisScene.size.width / retroLifeSkinWin.size.width)*(29.3/100)),
                height: (retroLifeSkinWin.size.height * (inThisScene.size.height / retroLifeSkinWin.size.height)*(11/100)))
            //4:3
            retroLifeSkinWinLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            retroLifeSkinWinLabel.size  = CGSize(
                width: (retroLifeSkinWinLabel.size.width * (inThisScene.size.width / retroLifeSkinWinLabel.size.width)*(29.3/100)),
                height: (retroLifeSkinWinLabel.size.height * (inThisScene.size.height / retroLifeSkinWinLabel.size.height)*(11/100)))
            //4:3
            retroLifeSkinLose.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            retroLifeSkinLose.size  = CGSize(
                width: (retroLifeSkinLose.size.width * (inThisScene.size.width / retroLifeSkinLose.size.width)*(29.3/100)),
                height: (retroLifeSkinLose.size.height * (inThisScene.size.height / retroLifeSkinLose.size.height)*(11/100)))
            //4:3
            retroLifeSkinLoseLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            retroLifeSkinLoseLabel.size  = CGSize(
                width: (retroLifeSkinLoseLabel.size.width * (inThisScene.size.width / retroLifeSkinLoseLabel.size.width)*(29.3/100)),
                height: (retroLifeSkinLoseLabel.size.height * (inThisScene.size.height / retroLifeSkinLoseLabel.size.height)*(11/100)))
            //4:3
            retroLifeSkinTime.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(36.15/100)))
            //4:3
            retroLifeSkinTime.size  = CGSize(
                width: (retroLifeSkinTime.size.width * (inThisScene.size.width / retroLifeSkinTime.size.width)*(29.3/100)),
                height: (retroLifeSkinTime.size.height * (inThisScene.size.height / retroLifeSkinTime.size.height)*(11/100)))
            //4:3
            retroLifeSkinTimeLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(36.15/100)))
            //4:3
            retroLifeSkinTimeLabel.size  = CGSize(
                width: (retroLifeSkinTimeLabel.size.width * (inThisScene.size.width / retroLifeSkinTimeLabel.size.width)*(29.3/100)),
                height: (retroLifeSkinTimeLabel.size.height * (inThisScene.size.height / retroLifeSkinTimeLabel.size.height)*(11/100)))
            //4:3
            retroLifeSkinMenu.size  = CGSize(
                width: (retroLifeSkinMenu.size.width * (inThisScene.size.width / retroLifeSkinMenu.size.width)*(29.3/100)),
                height: (retroLifeSkinMenu.size.height * (inThisScene.size.height / retroLifeSkinMenu.size.height)*(11/100)))
            
            /// Rainbow Skin
            //4:3
            rainbowWin.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            rainbowWin.size  = CGSize(
                width: (rainbowWin.size.width * (inThisScene.size.width / rainbowWin.size.width)*(29.3/100)),
                height: (rainbowWin.size.height * (inThisScene.size.height / rainbowWin.size.height)*(11/100)))
            //4:3
            rainbowWinLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            rainbowWinLabel.size  = CGSize(
                width: (rainbowWinLabel.size.width * (inThisScene.size.width / rainbowWinLabel.size.width)*(29.3/100)),
                height: (rainbowWinLabel.size.height * (inThisScene.size.height / rainbowWinLabel.size.height)*(11/100)))
            //4:3
            rainbowLose.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            rainbowLose.size  = CGSize(
                width: (rainbowLose.size.width * (inThisScene.size.width / rainbowLose.size.width)*(29.3/100)),
                height: (rainbowLose.size.height * (inThisScene.size.height / rainbowLose.size.height)*(11/100)))
            //4:3
            rainbowLoseLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            rainbowLoseLabel.size  = CGSize(
                width: (rainbowLoseLabel.size.width * (inThisScene.size.width / rainbowLoseLabel.size.width)*(29.3/100)),
                height: (rainbowLoseLabel.size.height * (inThisScene.size.height / rainbowLoseLabel.size.height)*(11/100)))
            //4:3
            rainbowTime.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(36.15/100)))
            //4:3
            rainbowTime.size  = CGSize(
                width: (rainbowTime.size.width * (inThisScene.size.width / rainbowTime.size.width)*(29.3/100)),
                height: (rainbowTime.size.height * (inThisScene.size.height / rainbowTime.size.height)*(11/100)))
            //4:3
            rainbowTimeLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(36.15/100)))
            //4:3
            rainbowTimeLabel.size  = CGSize(
                width: (rainbowTimeLabel.size.width * (inThisScene.size.width / rainbowTimeLabel.size.width)*(29.3/100)),
                height: (rainbowTimeLabel.size.height * (inThisScene.size.height / rainbowTimeLabel.size.height)*(11/100)))
            //4:3
            rainbowMenu.size  = CGSize(
                width: (rainbowMenu.size.width * (inThisScene.size.width / rainbowMenu.size.width)*(29.3/100)),
                height: (rainbowMenu.size.height * (inThisScene.size.height / rainbowMenu.size.height)*(11/100)))
            
            /// Light Skin
            //4:3
            lightWin.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            lightWin.size  = CGSize(
                width: (lightWin.size.width * (inThisScene.size.width / lightWin.size.width)*(29.3/100)),
                height: (lightWin.size.height * (inThisScene.size.height / lightWin.size.height)*(11/100)))
            //4:3
            lightWinLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            lightWinLabel.size  = CGSize(
                width: (lightWinLabel.size.width * (inThisScene.size.width / lightWinLabel.size.width)*(29.3/100)),
                height: (lightWinLabel.size.height * (inThisScene.size.height / lightWinLabel.size.height)*(11/100)))
            //4:3
            lightLose.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            lightLose.size  = CGSize(
                width: (lightLose.size.width * (inThisScene.size.width / lightLose.size.width)*(29.3/100)),
                height: (lightLose.size.height * (inThisScene.size.height / lightLose.size.height)*(11/100)))
            //4:3
            lightLoseLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            lightLoseLabel.size  = CGSize(
                width: (lightLoseLabel.size.width * (inThisScene.size.width / lightLoseLabel.size.width)*(29.3/100)),
                height: (lightLoseLabel.size.height * (inThisScene.size.height / lightLoseLabel.size.height)*(11/100)))
            //4:3
            lightTime.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(36.15/100)))
            //4:3
            lightTime.size  = CGSize(
                width: (lightTime.size.width * (inThisScene.size.width / lightTime.size.width)*(29.3/100)),
                height: (lightTime.size.height * (inThisScene.size.height / lightTime.size.height)*(11/100)))
            //4:3
            lightTimeLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(36.15/100)))
            //4:3
            lightTimeLabel.size  = CGSize(
                width: (lightTimeLabel.size.width * (inThisScene.size.width / lightTimeLabel.size.width)*(29.3/100)),
                height: (lightTimeLabel.size.height * (inThisScene.size.height / lightTimeLabel.size.height)*(11/100)))
            //4:3
            lightMenu.size  = CGSize(
                width: (lightMenu.size.width * (inThisScene.size.width / lightMenu.size.width)*(29.3/100)),
                height: (lightMenu.size.height * (inThisScene.size.height / lightMenu.size.height)*(11/100)))
            
            /// Soccer Skin
            //4:3
            soccerWin.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            soccerWin.size  = CGSize(
                width: (soccerWin.size.width * (inThisScene.size.width / soccerWin.size.width)*(29.3/100)),
                height: (soccerWin.size.height * (inThisScene.size.height / soccerWin.size.height)*(11/100)))
            //4:3
            soccerWinLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            soccerWinLabel.size  = CGSize(
                width: (soccerWinLabel.size.width * (inThisScene.size.width / soccerWinLabel.size.width)*(29.3/100)),
                height: (soccerWinLabel.size.height * (inThisScene.size.height / soccerWinLabel.size.height)*(11/100)))
            //4:3
            soccerLose.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            soccerLose.size  = CGSize(
                width: (soccerLose.size.width * (inThisScene.size.width / soccerLose.size.width)*(29.3/100)),
                height: (soccerLose.size.height * (inThisScene.size.height / soccerLose.size.height)*(11/100)))
            //4:3
            soccerLoseLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            soccerLoseLabel.size  = CGSize(
                width: (soccerLoseLabel.size.width * (inThisScene.size.width / soccerLoseLabel.size.width)*(29.3/100)),
                height: (soccerLoseLabel.size.height * (inThisScene.size.height / soccerLoseLabel.size.height)*(11/100)))
            //4:3
            soccerTime.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(36.15/100)))
            //4:3
            soccerTime.size  = CGSize(
                width: (soccerTime.size.width * (inThisScene.size.width / soccerTime.size.width)*(29.3/100)),
                height: (soccerTime.size.height * (inThisScene.size.height / soccerTime.size.height)*(11/100)))
            //4:3
            soccerTimeLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(36.15/100)))
            //4:3
            soccerTimeLabel.size  = CGSize(
                width: (soccerTimeLabel.size.width * (inThisScene.size.width / soccerTimeLabel.size.width)*(29.3/100)),
                height: (soccerTimeLabel.size.height * (inThisScene.size.height / soccerTimeLabel.size.height)*(11/100)))
            //4:3
            soccerMenu.size  = CGSize(
                width: (soccerMenu.size.width * (inThisScene.size.width / soccerMenu.size.width)*(29.3/100)),
                height: (soccerMenu.size.height * (inThisScene.size.height / soccerMenu.size.height)*(11/100)))
            
            /// Dust Skin
            //4:3
            spaceDustWin.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            spaceDustWin.size  = CGSize(
                width: (spaceDustWin.size.width * (inThisScene.size.width / spaceDustWin.size.width)*(29.3/100)),
                height: (spaceDustWin.size.height * (inThisScene.size.height / spaceDustWin.size.height)*(11/100)))
            //4:3
            spaceDustWinLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            spaceDustWinLabel.size  = CGSize(
                width: (spaceDustWinLabel.size.width * (inThisScene.size.width / spaceDustWinLabel.size.width)*(29.3/100)),
                height: (spaceDustWinLabel.size.height * (inThisScene.size.height / spaceDustWinLabel.size.height)*(11/100)))
            //4:3
            spaceDustLose.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            spaceDustLose.size  = CGSize(
                width: (spaceDustLose.size.width * (inThisScene.size.width / spaceDustLose.size.width)*(29.3/100)),
                height: (spaceDustLose.size.height * (inThisScene.size.height / spaceDustLose.size.height)*(11/100)))
            //4:3
            spaceDustLoseLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            spaceDustLoseLabel.size  = CGSize(
                width: (spaceDustLoseLabel.size.width * (inThisScene.size.width / spaceDustLoseLabel.size.width)*(29.3/100)),
                height: (spaceDustLoseLabel.size.height * (inThisScene.size.height / spaceDustLoseLabel.size.height)*(11/100)))
            //4:3
            spaceDustTime.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(36.15/100)))
            //4:3
            spaceDustTime.size  = CGSize(
                width: (spaceDustTime.size.width * (inThisScene.size.width / spaceDustTime.size.width)*(29.3/100)),
                height: (spaceDustTime.size.height * (inThisScene.size.height / spaceDustTime.size.height)*(11/100)))
            //4:3
            spaceDustTimeLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(36.15/100)))
            //4:3
            spaceDustTimeLabel.size  = CGSize(
                width: (spaceDustTimeLabel.size.width * (inThisScene.size.width / spaceDustTimeLabel.size.width)*(29.3/100)),
                height: (spaceDustTimeLabel.size.height * (inThisScene.size.height / spaceDustTimeLabel.size.height)*(11/100)))
            //4:3
            spaceDustMenu.size  = CGSize(
                width: (spaceDustMenu.size.width * (inThisScene.size.width / spaceDustMenu.size.width)*(29.3/100)),
                height: (spaceDustMenu.size.height * (inThisScene.size.height / spaceDustMenu.size.height)*(11/100)))
            
            /// Acid Rain Skin
            //4:3
            acidRainWin.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            acidRainWin.size  = CGSize(
                width: (acidRainWin.size.width * (inThisScene.size.width / acidRainWin.size.width)*(29.3/100)),
                height: (acidRainWin.size.height * (inThisScene.size.height / acidRainWin.size.height)*(11/100)))
            //4:3
            acidRainWinLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(73.44/100)))
            //4:3
            acidRainWinLabel.size  = CGSize(
                width: (acidRainWinLabel.size.width * (inThisScene.size.width / acidRainWinLabel.size.width)*(29.3/100)),
                height: (acidRainWinLabel.size.height * (inThisScene.size.height / acidRainWinLabel.size.height)*(11/100)))
            //4:3
            acidRainLose.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            acidRainLose.size  = CGSize(
                width: (acidRainLose.size.width * (inThisScene.size.width / acidRainLose.size.width)*(29.3/100)),
                height: (acidRainLose.size.height * (inThisScene.size.height / acidRainLose.size.height)*(11/100)))
            //4:3
            acidRainLoseLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(54.79/100)))
            //4:3
            acidRainLoseLabel.size  = CGSize(
                width: (acidRainLoseLabel.size.width * (inThisScene.size.width / acidRainLoseLabel.size.width)*(29.3/100)),
                height: (acidRainLoseLabel.size.height * (inThisScene.size.height / acidRainLoseLabel.size.height)*(11/100)))
            //4:3
            acidRainTime.position = CGPoint(x: inThisScene.size.width*(32.91/100), y: (inThisScene.size.height*(36.15/100)))
            //4:3
            acidRainTime.size  = CGSize(
                width: (acidRainTime.size.width * (inThisScene.size.width / acidRainTime.size.width)*(29.3/100)),
                height: (acidRainTime.size.height * (inThisScene.size.height / acidRainTime.size.height)*(11/100)))
            //4:3
            acidRainTimeLabel.position = CGPoint(x: inThisScene.size.width*(67.09/100), y: (inThisScene.size.height*(36.15/100)))
            //4:3
            acidRainTimeLabel.size  = CGSize(
                width: (acidRainTimeLabel.size.width * (inThisScene.size.width / acidRainTimeLabel.size.width)*(29.3/100)),
                height: (acidRainTimeLabel.size.height * (inThisScene.size.height / acidRainTimeLabel.size.height)*(11/100)))
            //4:3
            acidRainMenu.size  = CGSize(
                width: (acidRainMenu.size.width * (inThisScene.size.width / acidRainMenu.size.width)*(29.3/100)),
                height: (acidRainMenu.size.height * (inThisScene.size.height / acidRainMenu.size.height)*(11/100)))
            
        }// END Else
        
    }//END Init
    
}//END Struct
