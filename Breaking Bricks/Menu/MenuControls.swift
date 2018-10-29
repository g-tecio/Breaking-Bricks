//
//  MenuControls.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Luis Reyes. All rights reserved.
//

import SpriteKit
import Device_swift

struct MenuControls {
    
    
    let deviceType = UIDevice.current.deviceType
    
    /// Classic
    // Background
    let bgclassic:SKSpriteNode
    /// Game Button
    let playclassic: SKSpriteNode
    /// Store Button
    let storeclassic:SKSpriteNode
    /// Score Button
    let scoreclassic:SKSpriteNode
    
    /// Retro Life Skin
    // Background
    let retroLifeSkinBackground:SKSpriteNode
    /// Game Button
    let retroLifeSkinPlay: SKSpriteNode
    /// Store Button
    let retroLifeSkinStore:SKSpriteNode
    /// Score Button
    let retroLifeSkinScore:SKSpriteNode
    
    /// Rainbow Skin
    // Background
    let rainbowBackground:SKSpriteNode
    /// Game Button
    let rainbowPlay: SKSpriteNode
    /// Store Button
    let rainbowStore:SKSpriteNode
    /// Score Button
    let rainbowScore:SKSpriteNode
    
    /// Light Skin
    // Background
    let lightBackground:SKSpriteNode
    /// Game Button
    let lightPlay: SKSpriteNode
    /// Store Button
    let lightStore:SKSpriteNode
    /// Score Button
    let lightScore:SKSpriteNode
    
    /// Soccer Skin
    // Background
    let soccerBackground:SKSpriteNode
    /// Game Button
    let soccerPlay: SKSpriteNode
    /// Store Button
    let soccerStore:SKSpriteNode
    /// Score Button
    let soccerScore:SKSpriteNode
    
    /// spaceDust Skin
    // Background
    let spaceDustBackground:SKSpriteNode
    /// Game Button
    let spaceDustPlay: SKSpriteNode
    /// Store Button
    let spaceDustStore:SKSpriteNode
    /// Score Button
    let spaceDustScore:SKSpriteNode
    
    /// AcidRain Skin
    // Background
    let acidRainBackground:SKSpriteNode
    /// Game Button
    let acidRainPlay: SKSpriteNode
    /// Store Button
    let acidRainStore:SKSpriteNode
    /// Score Button
    let acidRainScore:SKSpriteNode
    
    /// End Times Skin
    // Background
    let endTimesBackground:SKSpriteNode
    /// Game Button
    let endTimesPlay: SKSpriteNode
    /// Store Button
    let endTimesStore:SKSpriteNode
    /// Score Button
    let endTimesScore:SKSpriteNode

    /// Pumpkin Skin
    // Background
    let pumpkinBackground:SKSpriteNode
    /// Game Button
    let pumpkinPlay: SKSpriteNode
    /// Store Button
    let pumpkinStore:SKSpriteNode
    /// Score Button
    let pumpkinScore:SKSpriteNode
    
    /// Scream Red Skin
    // Background
    let screamRedBackground:SKSpriteNode
    /// Game Button
    let screamRedPlay: SKSpriteNode
    /// Store Button
    let screamRedStore:SKSpriteNode
    /// Score Button
    let screamRedScore:SKSpriteNode
    
    /// Scream Green Skin
    // Background
    let screamGreenBackground:SKSpriteNode
    /// Game Button
    let screamGreenPlay: SKSpriteNode
    /// Store Button
    let screamGreenStore:SKSpriteNode
    /// Score Button
    let screamGreenScore:SKSpriteNode
    
    /// Dessert Skin
    // Background
    let dessertBackground:SKSpriteNode
    /// Game Button
    let dessertPlay: SKSpriteNode
    /// Store Button
    let dessertStore:SKSpriteNode
    /// Score Button
    let dessertScore:SKSpriteNode
    
    /// Classy Skin
    // Background
    let classyBackground:SKSpriteNode
    /// Game Button
    let classyPlay: SKSpriteNode
    /// Store Button
    let classyStore:SKSpriteNode
    /// Score Button
    let classyScore:SKSpriteNode
    
    /// Urbanic Skin
    // Background
    let urbanicBackground:SKSpriteNode
    /// Game Button
    let urbanicPlay: SKSpriteNode
    /// Store Button
    let urbanicStore:SKSpriteNode
    /// Score Button
    let urbanicScore:SKSpriteNode

    /// Autumn Skin
    // Background
    let autumnBackground:SKSpriteNode
    /// Game Button
    let autumnPlay: SKSpriteNode
    /// Store Button
    let autumnStore:SKSpriteNode
    /// Score Button
    let autumnScore:SKSpriteNode
    
    /// Ocher Skin
    // Background
    let ocherBackground:SKSpriteNode
    /// Game Button
    let ocherPlay: SKSpriteNode
    /// Store Button
    let ocherStore:SKSpriteNode
    /// Score Button
    let ocherScore:SKSpriteNode
    
    init(inThisScene: MenuScene) {
        
        //Classic
        /// background
        bgclassic = SKSpriteNode.init(imageNamed: "Background Classic")
        bgclassic.name = "background"
        bgclassic.zPosition = 1
        bgclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        bgclassic.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        playclassic = SKSpriteNode.init(imageNamed: "Play Classic")
        playclassic.name = "buttonSprite-Play"
        playclassic.zPosition = 2
        playclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        storeclassic = SKSpriteNode.init(imageNamed: "Store Classic")
        storeclassic.name = "buttonSprite-Store"
        storeclassic.zPosition = 2
        storeclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        scoreclassic = SKSpriteNode.init(imageNamed: "Score Classic")
        scoreclassic.name = "buttonSprite-Score"
        scoreclassic.zPosition = 2
        scoreclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        // Retro Life Skin
        /// background
        retroLifeSkinBackground = SKSpriteNode.init(imageNamed: "Background Retro")
        retroLifeSkinBackground.name = "background"
        retroLifeSkinBackground.zPosition = 1
        retroLifeSkinBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        retroLifeSkinBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        retroLifeSkinPlay = SKSpriteNode.init(imageNamed: "Play Retro")
        retroLifeSkinPlay.name = "buttonSprite-Play"
        retroLifeSkinPlay.zPosition = 2
        retroLifeSkinPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        retroLifeSkinStore = SKSpriteNode.init(imageNamed: "Store Retro")
        retroLifeSkinStore.name = "buttonSprite-Store"
        retroLifeSkinStore.zPosition = 2
        retroLifeSkinStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        retroLifeSkinScore = SKSpriteNode.init(imageNamed: "Score Retro")
        retroLifeSkinScore.name = "buttonSprite-Score"
        retroLifeSkinScore.zPosition = 2
        retroLifeSkinScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        // Rainbow Skin
        /// background
        rainbowBackground = SKSpriteNode.init(imageNamed: "Background Rainbow")
        rainbowBackground.name = "background"
        rainbowBackground.zPosition = 1
        rainbowBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        rainbowBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        rainbowPlay = SKSpriteNode.init(imageNamed: "Play Rainbow")
        rainbowPlay.name = "buttonSprite-Play"
        rainbowPlay.zPosition = 2
        rainbowPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        rainbowStore = SKSpriteNode.init(imageNamed: "Store Rainbow")
        rainbowStore.name = "buttonSprite-Store"
        rainbowStore.zPosition = 2
        rainbowStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        rainbowScore = SKSpriteNode.init(imageNamed: "Score Rainbow")
        rainbowScore.name = "buttonSprite-Score"
        rainbowScore.zPosition = 2
        rainbowScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        // Light Skin
        /// background
        lightBackground = SKSpriteNode.init(imageNamed: "Background Light")
        lightBackground.name = "background"
        lightBackground.zPosition = 1
        lightBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        lightBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        lightPlay = SKSpriteNode.init(imageNamed: "Play Light")
        lightPlay.name = "buttonSprite-Play"
        lightPlay.zPosition = 2
        lightPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        lightStore = SKSpriteNode.init(imageNamed: "Store Light")
        lightStore.name = "buttonSprite-Store"
        lightStore.zPosition = 2
        lightStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        lightScore = SKSpriteNode.init(imageNamed: "Score Light")
        lightScore.name = "buttonSprite-Score"
        lightScore.zPosition = 2
        lightScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        // Soccer Skin
        /// background
        soccerBackground = SKSpriteNode.init(imageNamed: "Background Soccer")
        soccerBackground.name = "background"
        soccerBackground.zPosition = 1
        soccerBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        soccerBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        soccerPlay = SKSpriteNode.init(imageNamed: "Play Soccer")
        soccerPlay.name = "buttonSprite-Play"
        soccerPlay.zPosition = 2
        soccerPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        soccerStore = SKSpriteNode.init(imageNamed: "Store Soccer")
        soccerStore.name = "buttonSprite-Store"
        soccerStore.zPosition = 2
        soccerStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        soccerScore = SKSpriteNode.init(imageNamed: "Score Soccer")
        soccerScore.name = "buttonSprite-Score"
        soccerScore.zPosition = 2
        soccerScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        // Dust Skin
        /// background
        spaceDustBackground = SKSpriteNode.init(imageNamed: "Background Dust")
        spaceDustBackground.name = "background"
        spaceDustBackground.zPosition = 1
        spaceDustBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        spaceDustBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        spaceDustPlay = SKSpriteNode.init(imageNamed: "Play Dust")
        spaceDustPlay.name = "buttonSprite-Play"
        spaceDustPlay.zPosition = 2
        spaceDustPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        spaceDustStore = SKSpriteNode.init(imageNamed: "Store Dust")
        spaceDustStore.name = "buttonSprite-Store"
        spaceDustStore.zPosition = 2
        spaceDustStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        spaceDustScore = SKSpriteNode.init(imageNamed: "Score Dust")
        spaceDustScore.name = "buttonSprite-Score"
        spaceDustScore.zPosition = 2
        spaceDustScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        // AcidRain Skin
        /// background
        acidRainBackground = SKSpriteNode.init(imageNamed: "Background Toxic")
        acidRainBackground.name = "background"
        acidRainBackground.zPosition = 1
        acidRainBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        acidRainBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        acidRainPlay = SKSpriteNode.init(imageNamed: "Play Toxic")
        acidRainPlay.name = "buttonSprite-Play"
        acidRainPlay.zPosition = 2
        acidRainPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        acidRainStore = SKSpriteNode.init(imageNamed: "Store Toxic")
        acidRainStore.name = "buttonSprite-Store"
        acidRainStore.zPosition = 2
        acidRainStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        acidRainScore = SKSpriteNode.init(imageNamed: "Score Toxic")
        acidRainScore.name = "buttonSprite-Score"
        acidRainScore.zPosition = 2
        acidRainScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        // End Times Skin
        /// background
        endTimesBackground = SKSpriteNode.init(imageNamed: "Background End_Times")
        endTimesBackground.name = "background"
        endTimesBackground.zPosition = 1
        endTimesBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        endTimesBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        endTimesPlay = SKSpriteNode.init(imageNamed: "Play End_Times")
        endTimesPlay.name = "buttonSprite-Play"
        endTimesPlay.zPosition = 2
        endTimesPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        endTimesStore = SKSpriteNode.init(imageNamed: "Store End_Times")
        endTimesStore.name = "buttonSprite-Store"
        endTimesStore.zPosition = 2
        endTimesStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        endTimesScore = SKSpriteNode.init(imageNamed: "Score End_Times")
        endTimesScore.name = "buttonSprite-Score"
        endTimesScore.zPosition = 2
        endTimesScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        
        // Pumpkin
        /// background
        pumpkinBackground = SKSpriteNode.init(imageNamed: "Background Pumpkin")
        pumpkinBackground.name = "background"
        pumpkinBackground.zPosition = 1
        pumpkinBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        pumpkinBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        pumpkinPlay = SKSpriteNode.init(imageNamed: "Play Pumpkin")
        pumpkinPlay.name = "buttonSprite-Play"
        pumpkinPlay.zPosition = 2
        pumpkinPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        pumpkinStore = SKSpriteNode.init(imageNamed: "Store Pumpkin")
        pumpkinStore.name = "buttonSprite-Store"
        pumpkinStore.zPosition = 2
        pumpkinStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        pumpkinScore = SKSpriteNode.init(imageNamed: "Score Pumpkin")
        pumpkinScore.name = "buttonSprite-Score"
        pumpkinScore.zPosition = 2
        pumpkinScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        // Scream Red
        /// background
        screamRedBackground = SKSpriteNode.init(imageNamed: "Background Scream_Red")
        screamRedBackground.name = "background"
        screamRedBackground.zPosition = 1
        screamRedBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        screamRedBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        screamRedPlay = SKSpriteNode.init(imageNamed: "Play Scream_Red")
        screamRedPlay.name = "buttonSprite-Play"
        screamRedPlay.zPosition = 2
        screamRedPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        screamRedStore = SKSpriteNode.init(imageNamed: "Store Scream_Red")
        screamRedStore.name = "buttonSprite-Store"
        screamRedStore.zPosition = 2
        screamRedStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        screamRedScore = SKSpriteNode.init(imageNamed: "Score Scream_Red")
        screamRedScore.name = "buttonSprite-Score"
        screamRedScore.zPosition = 2
        screamRedScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        // Scream Green
        /// background
        screamGreenBackground = SKSpriteNode.init(imageNamed: "Background Scream_Green")
        screamGreenBackground.name = "background"
        screamGreenBackground.zPosition = 1
        screamGreenBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        screamGreenBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        screamGreenPlay = SKSpriteNode.init(imageNamed: "Play Scream_Green")
        screamGreenPlay.name = "buttonSprite-Play"
        screamGreenPlay.zPosition = 2
        screamGreenPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        screamGreenStore = SKSpriteNode.init(imageNamed: "Store Scream_Green")
        screamGreenStore.name = "buttonSprite-Store"
        screamGreenStore.zPosition = 2
        screamGreenStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        screamGreenScore = SKSpriteNode.init(imageNamed: "Score Scream_Green")
        screamGreenScore.name = "buttonSprite-Score"
        screamGreenScore.zPosition = 2
        screamGreenScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        // Dessert
        /// background
        dessertBackground = SKSpriteNode.init(imageNamed: "Background Dessert")
        dessertBackground.name = "background"
        dessertBackground.zPosition = 1
        dessertBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        dessertBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        dessertPlay = SKSpriteNode.init(imageNamed: "Play Dessert")
        dessertPlay.name = "buttonSprite-Play"
        dessertPlay.zPosition = 2
        dessertPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        dessertStore = SKSpriteNode.init(imageNamed: "Store Dessert")
        dessertStore.name = "buttonSprite-Store"
        dessertStore.zPosition = 2
        dessertStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        dessertScore = SKSpriteNode.init(imageNamed: "Score Dessert")
        dessertScore.name = "buttonSprite-Score"
        dessertScore.zPosition = 2
        dessertScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        // Classy
        /// background
        classyBackground = SKSpriteNode.init(imageNamed: "Background Classy")
        classyBackground.name = "background"
        classyBackground.zPosition = 1
        classyBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        classyBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        classyPlay = SKSpriteNode.init(imageNamed: "Play Classy")
        classyPlay.name = "buttonSprite-Play"
        classyPlay.zPosition = 2
        classyPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        classyStore = SKSpriteNode.init(imageNamed: "Store Classy")
        classyStore.name = "buttonSprite-Store"
        classyStore.zPosition = 2
        classyStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        classyScore = SKSpriteNode.init(imageNamed: "Score Classy")
        classyScore.name = "buttonSprite-Score"
        classyScore.zPosition = 2
        classyScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        // Urbanic
        /// background
        urbanicBackground = SKSpriteNode.init(imageNamed: "Background Urbanic")
        urbanicBackground.name = "background"
        urbanicBackground.zPosition = 1
        urbanicBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        urbanicBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        urbanicPlay = SKSpriteNode.init(imageNamed: "Play Urbanic")
        urbanicPlay.name = "buttonSprite-Play"
        urbanicPlay.zPosition = 2
        urbanicPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        urbanicStore = SKSpriteNode.init(imageNamed: "Store Urbanic")
        urbanicStore.name = "buttonSprite-Store"
        urbanicStore.zPosition = 2
        urbanicStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        urbanicScore = SKSpriteNode.init(imageNamed: "Score Urbanic")
        urbanicScore.name = "buttonSprite-Score"
        urbanicScore.zPosition = 2
        urbanicScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        // Autumn
        /// background
        autumnBackground = SKSpriteNode.init(imageNamed: "Background Autumn")
        autumnBackground.name = "background"
        autumnBackground.zPosition = 1
        autumnBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        autumnBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        autumnPlay = SKSpriteNode.init(imageNamed: "Play Autumn")
        autumnPlay.name = "buttonSprite-Play"
        autumnPlay.zPosition = 2
        autumnPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        autumnStore = SKSpriteNode.init(imageNamed: "Store Autumn")
        autumnStore.name = "buttonSprite-Store"
        autumnStore.zPosition = 2
        autumnStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        autumnScore = SKSpriteNode.init(imageNamed: "Score Autumn")
        autumnScore.name = "buttonSprite-Score"
        autumnScore.zPosition = 2
        autumnScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        // Ocher
        /// background
        ocherBackground = SKSpriteNode.init(imageNamed: "Background Ocher")
        ocherBackground.name = "background"
        ocherBackground.zPosition = 1
        ocherBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        ocherBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Play Button
        ocherPlay = SKSpriteNode.init(imageNamed: "Play Ocher")
        ocherPlay.name = "buttonSprite-Play"
        ocherPlay.zPosition = 2
        ocherPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        /// Store Button
        ocherStore = SKSpriteNode.init(imageNamed: "Store Ocher")
        ocherStore.name = "buttonSprite-Store"
        ocherStore.zPosition = 2
        ocherStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        /// Score Button
        ocherScore = SKSpriteNode.init(imageNamed: "Score Ocher")
        ocherScore.name = "buttonSprite-Score"
        ocherScore.zPosition = 2
        ocherScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        
        if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone ){
            /// Classic
            //16:9
            playclassic.size  = CGSize(
                width: (playclassic.size.width * (inThisScene.size.width / playclassic.size.width)*(37.04/100)),
                height: (playclassic.size.height * (inThisScene.size.height / playclassic.size.height)*(10.42/100)))
            //16:9
            storeclassic.size = CGSize(
                width: (storeclassic.size.width * (inThisScene.size.width / storeclassic.size.width)*(37.04/100)),
                height: (storeclassic.size.height * (inThisScene.size.height / storeclassic.size.height)*(10.42/100)))
            //16:9
            scoreclassic.size = CGSize(
                width: (scoreclassic.size.width * (inThisScene.size.width / scoreclassic.size.width)*(37.04/100)),
                height: (scoreclassic.size.height * (inThisScene.size.height / scoreclassic.size.height)*(10.42/100)))
            
            /// Retro Life Skin
            //16:9
            retroLifeSkinPlay.size  = CGSize(
                width: (retroLifeSkinPlay.size.width * (inThisScene.size.width / retroLifeSkinPlay.size.width)*(37.04/100)),
                height: (retroLifeSkinPlay.size.height * (inThisScene.size.height / retroLifeSkinPlay.size.height)*(10.42/100)))
            //16:9
            retroLifeSkinStore.size = CGSize(
                width: (retroLifeSkinStore.size.width * (inThisScene.size.width / retroLifeSkinStore.size.width)*(37.04/100)),
                height: (retroLifeSkinStore.size.height * (inThisScene.size.height / retroLifeSkinStore.size.height)*(10.42/100)))
            //16:9
            retroLifeSkinScore.size = CGSize(
                width: (retroLifeSkinScore.size.width * (inThisScene.size.width / retroLifeSkinScore.size.width)*(37.04/100)),
                height: (retroLifeSkinScore.size.height * (inThisScene.size.height / retroLifeSkinScore.size.height)*(10.42/100)))
            
            /// Rainbow Skin
            //16:9
            rainbowPlay.size  = CGSize(
                width: (rainbowPlay.size.width * (inThisScene.size.width / rainbowPlay.size.width)*(37.04/100)),
                height: (rainbowPlay.size.height * (inThisScene.size.height / rainbowPlay.size.height)*(10.42/100)))
            //16:9
            rainbowStore.size = CGSize(
                width: (rainbowStore.size.width * (inThisScene.size.width / rainbowStore.size.width)*(37.04/100)),
                height: (rainbowStore.size.height * (inThisScene.size.height / rainbowStore.size.height)*(10.42/100)))
            //16:9
            rainbowScore.size = CGSize(
                width: (rainbowScore.size.width * (inThisScene.size.width / rainbowScore.size.width)*(37.04/100)),
                height: (rainbowScore.size.height * (inThisScene.size.height / rainbowScore.size.height)*(10.42/100)))
            
            /// Light Skin
            //16:9
            lightPlay.size  = CGSize(
                width: (lightPlay.size.width * (inThisScene.size.width / lightPlay.size.width)*(37.04/100)),
                height: (lightPlay.size.height * (inThisScene.size.height / lightPlay.size.height)*(10.42/100)))
            //16:9
            lightStore.size = CGSize(
                width: (lightStore.size.width * (inThisScene.size.width / lightStore.size.width)*(37.04/100)),
                height: (lightStore.size.height * (inThisScene.size.height / lightStore.size.height)*(10.42/100)))
            //16:9
            lightScore.size = CGSize(
                width: (lightScore.size.width * (inThisScene.size.width / lightScore.size.width)*(37.04/100)),
                height: (lightScore.size.height * (inThisScene.size.height / lightScore.size.height)*(10.42/100)))
            
            /// Soccer Skin
            //16:9
            soccerPlay.size  = CGSize(
                width: (soccerPlay.size.width * (inThisScene.size.width / soccerPlay.size.width)*(37.04/100)),
                height: (soccerPlay.size.height * (inThisScene.size.height / soccerPlay.size.height)*(10.42/100)))
            //16:9
            soccerStore.size = CGSize(
                width: (soccerStore.size.width * (inThisScene.size.width / soccerStore.size.width)*(37.04/100)),
                height: (soccerStore.size.height * (inThisScene.size.height / soccerStore.size.height)*(10.42/100)))
            //16:9
            soccerScore.size = CGSize(
                width: (soccerScore.size.width * (inThisScene.size.width / soccerScore.size.width)*(37.04/100)),
                height: (soccerScore.size.height * (inThisScene.size.height / soccerScore.size.height)*(10.42/100)))
            
            /// Dust Skin
            //16:9
            spaceDustPlay.size  = CGSize(
                width: (spaceDustPlay.size.width * (inThisScene.size.width / spaceDustPlay.size.width)*(37.04/100)),
                height: (spaceDustPlay.size.height * (inThisScene.size.height / spaceDustPlay.size.height)*(10.42/100)))
            //16:9
            spaceDustStore.size = CGSize(
                width: (spaceDustStore.size.width * (inThisScene.size.width / spaceDustStore.size.width)*(37.04/100)),
                height: (spaceDustStore.size.height * (inThisScene.size.height / spaceDustStore.size.height)*(10.42/100)))
            //16:9
            spaceDustScore.size = CGSize(
                width: (spaceDustScore.size.width * (inThisScene.size.width / spaceDustScore.size.width)*(37.04/100)),
                height: (spaceDustScore.size.height * (inThisScene.size.height / spaceDustScore.size.height)*(10.42/100)))
            
            /// AcidRain Skin
            //16:9
            acidRainPlay.size  = CGSize(
                width: (acidRainPlay.size.width * (inThisScene.size.width / acidRainPlay.size.width)*(37.04/100)),
                height: (acidRainPlay.size.height * (inThisScene.size.height / acidRainPlay.size.height)*(10.42/100)))
            //16:9
            acidRainStore.size = CGSize(
                width: (acidRainStore.size.width * (inThisScene.size.width / acidRainStore.size.width)*(37.04/100)),
                height: (acidRainStore.size.height * (inThisScene.size.height / acidRainStore.size.height)*(10.42/100)))
            //16:9
            acidRainScore.size = CGSize(
                width: (acidRainScore.size.width * (inThisScene.size.width / acidRainScore.size.width)*(37.04/100)),
                height: (acidRainScore.size.height * (inThisScene.size.height / acidRainScore.size.height)*(10.42/100)))
            
            /// End Times Skin
            //16:9
            endTimesPlay.size  = CGSize(
                width: (endTimesPlay.size.width * (inThisScene.size.width / endTimesPlay.size.width)*(37.04/100)),
                height: (endTimesPlay.size.height * (inThisScene.size.height / endTimesPlay.size.height)*(10.42/100)))
            //16:9
            endTimesStore.size = CGSize(
                width: (endTimesStore.size.width * (inThisScene.size.width / endTimesStore.size.width)*(37.04/100)),
                height: (endTimesStore.size.height * (inThisScene.size.height / endTimesStore.size.height)*(10.42/100)))
            //16:9
            endTimesScore.size = CGSize(
                width: (endTimesScore.size.width * (inThisScene.size.width / endTimesScore.size.width)*(37.04/100)),
                height: (endTimesScore.size.height * (inThisScene.size.height / endTimesScore.size.height)*(10.42/100)))
            
            /// Pumpkin Skin
            //16:9
            pumpkinPlay.size  = CGSize(
                width: (pumpkinPlay.size.width * (inThisScene.size.width / pumpkinPlay.size.width)*(37.04/100)),
                height: (pumpkinPlay.size.height * (inThisScene.size.height / pumpkinPlay.size.height)*(10.42/100)))
            //16:9
            pumpkinStore.size = CGSize(
                width: (pumpkinStore.size.width * (inThisScene.size.width / pumpkinStore.size.width)*(37.04/100)),
                height: (pumpkinStore.size.height * (inThisScene.size.height / pumpkinStore.size.height)*(10.42/100)))
            //16:9
            pumpkinScore.size = CGSize(
                width: (pumpkinScore.size.width * (inThisScene.size.width / pumpkinScore.size.width)*(37.04/100)),
                height: (pumpkinScore.size.height * (inThisScene.size.height / pumpkinScore.size.height)*(10.42/100)))
            
            /// Scream Red  Skin
            //16:9
            screamRedPlay.size  = CGSize(
                width: (screamRedPlay.size.width * (inThisScene.size.width / screamRedPlay.size.width)*(37.04/100)),
                height: (screamRedPlay.size.height * (inThisScene.size.height / screamRedPlay.size.height)*(10.42/100)))
            //16:9
            screamRedStore.size = CGSize(
                width: (screamRedStore.size.width * (inThisScene.size.width / screamRedStore.size.width)*(37.04/100)),
                height: (screamRedStore.size.height * (inThisScene.size.height / screamRedStore.size.height)*(10.42/100)))
            //16:9
            screamRedScore.size = CGSize(
                width: (screamRedScore.size.width * (inThisScene.size.width / screamRedScore.size.width)*(37.04/100)),
                height: (screamRedScore.size.height * (inThisScene.size.height / screamRedScore.size.height)*(10.42/100)))
            
            /// Scream Green Skin
            //16:9
            screamGreenPlay.size  = CGSize(
                width: (screamGreenPlay.size.width * (inThisScene.size.width / screamGreenPlay.size.width)*(37.04/100)),
                height: (screamGreenPlay.size.height * (inThisScene.size.height / screamGreenPlay.size.height)*(10.42/100)))
            //16:9
            screamGreenStore.size = CGSize(
                width: (screamGreenStore.size.width * (inThisScene.size.width / screamGreenStore.size.width)*(37.04/100)),
                height: (screamGreenStore.size.height * (inThisScene.size.height / screamGreenStore.size.height)*(10.42/100)))
            //16:9
            screamGreenScore.size = CGSize(
                width: (screamGreenScore.size.width * (inThisScene.size.width / screamGreenScore.size.width)*(37.04/100)),
                height: (screamGreenScore.size.height * (inThisScene.size.height / screamGreenScore.size.height)*(10.42/100)))
            
            /// Dessert Skin
            //16:9
            dessertPlay.size  = CGSize(
                width: (dessertPlay.size.width * (inThisScene.size.width / dessertPlay.size.width)*(37.04/100)),
                height: (dessertPlay.size.height * (inThisScene.size.height / dessertPlay.size.height)*(10.42/100)))
            //16:9
            dessertStore.size = CGSize(
                width: (dessertStore.size.width * (inThisScene.size.width / dessertStore.size.width)*(37.04/100)),
                height: (dessertStore.size.height * (inThisScene.size.height / dessertStore.size.height)*(10.42/100)))
            //16:9
            dessertScore.size = CGSize(
                width: (dessertScore.size.width * (inThisScene.size.width / dessertScore.size.width)*(37.04/100)),
                height: (dessertScore.size.height * (inThisScene.size.height / dessertScore.size.height)*(10.42/100)))
            
            /// Classy Skin
            //16:9
            classyPlay.size  = CGSize(
                width: (classyPlay.size.width * (inThisScene.size.width / classyPlay.size.width)*(37.04/100)),
                height: (classyPlay.size.height * (inThisScene.size.height / classyPlay.size.height)*(10.42/100)))
            //16:9
            classyStore.size = CGSize(
                width: (classyStore.size.width * (inThisScene.size.width / classyStore.size.width)*(37.04/100)),
                height: (classyStore.size.height * (inThisScene.size.height / classyStore.size.height)*(10.42/100)))
            //16:9
            classyScore.size = CGSize(
                width: (classyScore.size.width * (inThisScene.size.width / classyScore.size.width)*(37.04/100)),
                height: (classyScore.size.height * (inThisScene.size.height / classyScore.size.height)*(10.42/100)))
            
            /// Urbanic Skin
            //16:9
            urbanicPlay.size  = CGSize(
                width: (urbanicPlay.size.width * (inThisScene.size.width / urbanicPlay.size.width)*(37.04/100)),
                height: (urbanicPlay.size.height * (inThisScene.size.height / urbanicPlay.size.height)*(10.42/100)))
            //16:9
            urbanicStore.size = CGSize(
                width: (urbanicStore.size.width * (inThisScene.size.width / urbanicStore.size.width)*(37.04/100)),
                height: (urbanicStore.size.height * (inThisScene.size.height / urbanicStore.size.height)*(10.42/100)))
            //16:9
            urbanicScore.size = CGSize(
                width: (urbanicScore.size.width * (inThisScene.size.width / urbanicScore.size.width)*(37.04/100)),
                height: (urbanicScore.size.height * (inThisScene.size.height / urbanicScore.size.height)*(10.42/100)))
            
            /// Autumn Skin
            //16:9
            autumnPlay.size  = CGSize(
                width: (autumnPlay.size.width * (inThisScene.size.width / autumnPlay.size.width)*(37.04/100)),
                height: (autumnPlay.size.height * (inThisScene.size.height / autumnPlay.size.height)*(10.42/100)))
            //16:9
            autumnStore.size = CGSize(
                width: (autumnStore.size.width * (inThisScene.size.width / autumnStore.size.width)*(37.04/100)),
                height: (autumnStore.size.height * (inThisScene.size.height / autumnStore.size.height)*(10.42/100)))
            //16:9
            autumnScore.size = CGSize(
                width: (autumnScore.size.width * (inThisScene.size.width / autumnScore.size.width)*(37.04/100)),
                height: (autumnScore.size.height * (inThisScene.size.height / autumnScore.size.height)*(10.42/100)))
            
            /// Ocher Skin
            //16:9
            ocherPlay.size  = CGSize(
                width: (ocherPlay.size.width * (inThisScene.size.width / ocherPlay.size.width)*(37.04/100)),
                height: (ocherPlay.size.height * (inThisScene.size.height / ocherPlay.size.height)*(10.42/100)))
            //16:9
            ocherStore.size = CGSize(
                width: (ocherStore.size.width * (inThisScene.size.width / ocherStore.size.width)*(37.04/100)),
                height: (ocherStore.size.height * (inThisScene.size.height / ocherStore.size.height)*(10.42/100)))
            //16:9
            ocherScore.size = CGSize(
                width: (ocherScore.size.width * (inThisScene.size.width / ocherScore.size.width)*(37.04/100)),
                height: (ocherScore.size.height * (inThisScene.size.height / ocherScore.size.height)*(10.42/100)))
            
        }else{
            /// Classic
            //4:3
            playclassic.size  = CGSize(
                width: (playclassic.size.width * (inThisScene.size.width / playclassic.size.width)*(29.3/100)),
                height: (playclassic.size.height * (inThisScene.size.height / playclassic.size.height)*(11/100)))
            //4:3
            storeclassic.size  = CGSize(
                width: (storeclassic.size.width * (inThisScene.size.width / storeclassic.size.width)*(29.3/100)),
                height: (storeclassic.size.height * (inThisScene.size.height / storeclassic.size.height)*(11/100)))
            //4:3
            scoreclassic.size  = CGSize(
                width: (scoreclassic.size.width * (inThisScene.size.width / scoreclassic.size.width)*(29.3/100)),
                height: (scoreclassic.size.height * (inThisScene.size.height / scoreclassic.size.height)*(11/100)))
            
            /// Retro Life Skin
            //4:3
            retroLifeSkinPlay.size  = CGSize(
                width: (retroLifeSkinPlay.size.width * (inThisScene.size.width / retroLifeSkinPlay.size.width)*(29.3/100)),
                height: (retroLifeSkinPlay.size.height * (inThisScene.size.height / retroLifeSkinPlay.size.height)*(11/100)))
            //4:3
            retroLifeSkinStore.size  = CGSize(
                width: (retroLifeSkinStore.size.width * (inThisScene.size.width / retroLifeSkinStore.size.width)*(29.3/100)),
                height: (retroLifeSkinStore.size.height * (inThisScene.size.height / retroLifeSkinStore.size.height)*(11/100)))
            //4:3
            retroLifeSkinScore.size  = CGSize(
                width: (retroLifeSkinScore.size.width * (inThisScene.size.width / retroLifeSkinScore.size.width)*(29.3/100)),
                height: (retroLifeSkinScore.size.height * (inThisScene.size.height / retroLifeSkinScore.size.height)*(11/100)))
            
            /// Rainbow Skin
            //4:3
            rainbowPlay.size  = CGSize(
                width: (rainbowPlay.size.width * (inThisScene.size.width / rainbowPlay.size.width)*(29.3/100)),
                height: (rainbowPlay.size.height * (inThisScene.size.height / rainbowPlay.size.height)*(11/100)))
            //4:3
            rainbowStore.size  = CGSize(
                width: (rainbowStore.size.width * (inThisScene.size.width / rainbowStore.size.width)*(29.3/100)),
                height: (rainbowStore.size.height * (inThisScene.size.height / rainbowStore.size.height)*(11/100)))
            //4:3
            rainbowScore.size  = CGSize(
                width: (rainbowScore.size.width * (inThisScene.size.width / rainbowScore.size.width)*(29.3/100)),
                height: (rainbowScore.size.height * (inThisScene.size.height / rainbowScore.size.height)*(11/100)))
            
            /// Light Skin
            //4:3
            lightPlay.size  = CGSize(
                width: (lightPlay.size.width * (inThisScene.size.width / lightPlay.size.width)*(29.3/100)),
                height: (lightPlay.size.height * (inThisScene.size.height / lightPlay.size.height)*(11/100)))
            //4:3
            lightStore.size  = CGSize(
                width: (lightStore.size.width * (inThisScene.size.width / lightStore.size.width)*(29.3/100)),
                height: (lightStore.size.height * (inThisScene.size.height / lightStore.size.height)*(11/100)))
            //4:3
            lightScore.size  = CGSize(
                width: (lightScore.size.width * (inThisScene.size.width / lightScore.size.width)*(29.3/100)),
                height: (lightScore.size.height * (inThisScene.size.height / lightScore.size.height)*(11/100)))
            
            /// Soccer Skin
            //4:3
            soccerPlay.size  = CGSize(
                width: (soccerPlay.size.width * (inThisScene.size.width / soccerPlay.size.width)*(29.3/100)),
                height: (soccerPlay.size.height * (inThisScene.size.height / soccerPlay.size.height)*(11/100)))
            //4:3
            soccerStore.size  = CGSize(
                width: (soccerStore.size.width * (inThisScene.size.width / soccerStore.size.width)*(29.3/100)),
                height: (soccerStore.size.height * (inThisScene.size.height / soccerStore.size.height)*(11/100)))
            //4:3
            soccerScore.size  = CGSize(
                width: (soccerScore.size.width * (inThisScene.size.width / soccerScore.size.width)*(29.3/100)),
                height: (soccerScore.size.height * (inThisScene.size.height / soccerScore.size.height)*(11/100)))
            
            /// Dust Skin
            //4:3
            spaceDustPlay.size  = CGSize(
                width: (spaceDustPlay.size.width * (inThisScene.size.width / spaceDustPlay.size.width)*(29.3/100)),
                height: (spaceDustPlay.size.height * (inThisScene.size.height / spaceDustPlay.size.height)*(11/100)))
            //4:3
            spaceDustStore.size  = CGSize(
                width: (spaceDustStore.size.width * (inThisScene.size.width / spaceDustStore.size.width)*(29.3/100)),
                height: (spaceDustStore.size.height * (inThisScene.size.height / spaceDustStore.size.height)*(11/100)))
            //4:3
            spaceDustScore.size  = CGSize(
                width: (spaceDustScore.size.width * (inThisScene.size.width / spaceDustScore.size.width)*(29.3/100)),
                height: (spaceDustScore.size.height * (inThisScene.size.height / spaceDustScore.size.height)*(11/100)))
            
            /// AcidRain Skin
            //4:3
            acidRainPlay.size  = CGSize(
                width: (acidRainPlay.size.width * (inThisScene.size.width / acidRainPlay.size.width)*(29.3/100)),
                height: (acidRainPlay.size.height * (inThisScene.size.height / acidRainPlay.size.height)*(11/100)))
            //4:3
            acidRainStore.size  = CGSize(
                width: (acidRainStore.size.width * (inThisScene.size.width / acidRainStore.size.width)*(29.3/100)),
                height: (acidRainStore.size.height * (inThisScene.size.height / acidRainStore.size.height)*(11/100)))
            //4:3
            acidRainScore.size  = CGSize(
                width: (acidRainScore.size.width * (inThisScene.size.width / acidRainScore.size.width)*(29.3/100)),
                height: (acidRainScore.size.height * (inThisScene.size.height / acidRainScore.size.height)*(11/100)))
            
            
            /// End Times Skin
            //4:3
            endTimesPlay.size  = CGSize(
                width: (endTimesPlay.size.width * (inThisScene.size.width / endTimesPlay.size.width)*(29.3/100)),
                height: (endTimesPlay.size.height * (inThisScene.size.height / endTimesPlay.size.height)*(11/100)))
            //4:3
            endTimesStore.size  = CGSize(
                width: (endTimesStore.size.width * (inThisScene.size.width / endTimesStore.size.width)*(29.3/100)),
                height: (endTimesStore.size.height * (inThisScene.size.height / endTimesStore.size.height)*(11/100)))
            //4:3
            endTimesScore.size  = CGSize(
                width: (endTimesScore.size.width * (inThisScene.size.width / endTimesScore.size.width)*(29.3/100)),
                height: (endTimesScore.size.height * (inThisScene.size.height / endTimesScore.size.height)*(11/100)))
            
            /// Pumpkin Skin
            //4:3
            pumpkinPlay.size  = CGSize(
                width: (pumpkinPlay.size.width * (inThisScene.size.width / pumpkinPlay.size.width)*(29.3/100)),
                height: (pumpkinPlay.size.height * (inThisScene.size.height / pumpkinPlay.size.height)*(11/100)))
            //4:3
            pumpkinStore.size  = CGSize(
                width: (pumpkinStore.size.width * (inThisScene.size.width / pumpkinStore.size.width)*(29.3/100)),
                height: (pumpkinStore.size.height * (inThisScene.size.height / pumpkinStore.size.height)*(11/100)))
            //4:3
            pumpkinScore.size  = CGSize(
                width: (pumpkinScore.size.width * (inThisScene.size.width / pumpkinScore.size.width)*(29.3/100)),
                height: (pumpkinScore.size.height * (inThisScene.size.height / pumpkinScore.size.height)*(11/100)))
            
            /// Scream Red Skin
            //4:3
            screamRedPlay.size  = CGSize(
                width: (screamRedPlay.size.width * (inThisScene.size.width / screamRedPlay.size.width)*(29.3/100)),
                height: (screamRedPlay.size.height * (inThisScene.size.height / screamRedPlay.size.height)*(11/100)))
            //4:3
            screamRedStore.size  = CGSize(
                width: (screamRedStore.size.width * (inThisScene.size.width / screamRedStore.size.width)*(29.3/100)),
                height: (screamRedStore.size.height * (inThisScene.size.height / screamRedStore.size.height)*(11/100)))
            //4:3
            screamRedScore.size  = CGSize(
                width: (screamRedScore.size.width * (inThisScene.size.width / screamRedScore.size.width)*(29.3/100)),
                height: (screamRedScore.size.height * (inThisScene.size.height / screamRedScore.size.height)*(11/100)))
            
            /// Scream Red Skin
            //4:3
            screamGreenPlay.size  = CGSize(
                width: (screamGreenPlay.size.width * (inThisScene.size.width / screamGreenPlay.size.width)*(29.3/100)),
                height: (screamGreenPlay.size.height * (inThisScene.size.height / screamGreenPlay.size.height)*(11/100)))
            //4:3
            screamGreenStore.size  = CGSize(
                width: (screamGreenStore.size.width * (inThisScene.size.width / screamGreenStore.size.width)*(29.3/100)),
                height: (screamGreenStore.size.height * (inThisScene.size.height / screamGreenStore.size.height)*(11/100)))
            //4:3
            screamGreenScore.size  = CGSize(
                width: (screamGreenScore.size.width * (inThisScene.size.width / screamGreenScore.size.width)*(29.3/100)),
                height: (screamGreenScore.size.height * (inThisScene.size.height / screamGreenScore.size.height)*(11/100)))
            
            /// Dessert Skin
            //4:3
            dessertPlay.size  = CGSize(
                width: (dessertPlay.size.width * (inThisScene.size.width / dessertPlay.size.width)*(29.3/100)),
                height: (dessertPlay.size.height * (inThisScene.size.height / dessertPlay.size.height)*(11/100)))
            //4:3
            dessertStore.size  = CGSize(
                width: (dessertStore.size.width * (inThisScene.size.width / dessertStore.size.width)*(29.3/100)),
                height: (dessertStore.size.height * (inThisScene.size.height / dessertStore.size.height)*(11/100)))
            //4:3
            dessertScore.size  = CGSize(
                width: (dessertScore.size.width * (inThisScene.size.width / dessertScore.size.width)*(29.3/100)),
                height: (dessertScore.size.height * (inThisScene.size.height / dessertScore.size.height)*(11/100)))
            
            /// Classy Skin
            //4:3
            classyPlay.size  = CGSize(
                width: (classyPlay.size.width * (inThisScene.size.width / classyPlay.size.width)*(29.3/100)),
                height: (classyPlay.size.height * (inThisScene.size.height / classyPlay.size.height)*(11/100)))
            //4:3
            classyStore.size  = CGSize(
                width: (classyStore.size.width * (inThisScene.size.width / classyStore.size.width)*(29.3/100)),
                height: (classyStore.size.height * (inThisScene.size.height / classyStore.size.height)*(11/100)))
            //4:3
            classyScore.size  = CGSize(
                width: (classyScore.size.width * (inThisScene.size.width / classyScore.size.width)*(29.3/100)),
                height: (classyScore.size.height * (inThisScene.size.height / classyScore.size.height)*(11/100)))
            
            /// Urbanic Skin
            //4:3
            urbanicPlay.size  = CGSize(
                width: (urbanicPlay.size.width * (inThisScene.size.width / urbanicPlay.size.width)*(29.3/100)),
                height: (urbanicPlay.size.height * (inThisScene.size.height / urbanicPlay.size.height)*(11/100)))
            //4:3
            urbanicStore.size  = CGSize(
                width: (urbanicStore.size.width * (inThisScene.size.width / urbanicStore.size.width)*(29.3/100)),
                height: (urbanicStore.size.height * (inThisScene.size.height / urbanicStore.size.height)*(11/100)))
            //4:3
            urbanicScore.size  = CGSize(
                width: (urbanicScore.size.width * (inThisScene.size.width / urbanicScore.size.width)*(29.3/100)),
                height: (urbanicScore.size.height * (inThisScene.size.height / urbanicScore.size.height)*(11/100)))
            
            /// Autumn Skin
            //4:3
            autumnPlay.size  = CGSize(
                width: (autumnPlay.size.width * (inThisScene.size.width / autumnPlay.size.width)*(29.3/100)),
                height: (autumnPlay.size.height * (inThisScene.size.height / autumnPlay.size.height)*(11/100)))
            //4:3
            autumnStore.size  = CGSize(
                width: (autumnStore.size.width * (inThisScene.size.width / autumnStore.size.width)*(29.3/100)),
                height: (autumnStore.size.height * (inThisScene.size.height / autumnStore.size.height)*(11/100)))
            //4:3
            autumnScore.size  = CGSize(
                width: (autumnScore.size.width * (inThisScene.size.width / autumnScore.size.width)*(29.3/100)),
                height: (autumnScore.size.height * (inThisScene.size.height / autumnScore.size.height)*(11/100)))

            /// Ocher Skin
            //4:3
            ocherPlay.size  = CGSize(
                width: (ocherPlay.size.width * (inThisScene.size.width / ocherPlay.size.width)*(29.3/100)),
                height: (ocherPlay.size.height * (inThisScene.size.height / ocherPlay.size.height)*(11/100)))
            //4:3
            ocherStore.size  = CGSize(
                width: (ocherStore.size.width * (inThisScene.size.width / ocherStore.size.width)*(29.3/100)),
                height: (ocherStore.size.height * (inThisScene.size.height / ocherStore.size.height)*(11/100)))
            //4:3
            ocherScore.size  = CGSize(
                width: (ocherScore.size.width * (inThisScene.size.width / ocherScore.size.width)*(29.3/100)),
                height: (ocherScore.size.height * (inThisScene.size.height / ocherScore.size.height)*(11/100)))
            
        }//End else
    }//END init
}//END Struct
