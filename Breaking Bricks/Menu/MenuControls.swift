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
    
    /// Classic
    // Background
    let bgclassic:SKSpriteNode
    /// Game Button
    let playclassic: SKSpriteNode
    /// Score Button
    let scoreclassic:SKSpriteNode
    /// Store Button
    let storeclassic:SKSpriteNode
    
    //    /// Retro Life Skin
    //    // Background
    //    let retroLifeSkinBackground:SKSpriteNode
    //    /// Game Button
    //    let retroLifeSkinPlay: SKSpriteNode
    //    /// Score Button
    //    let retroLifeSkinScore:SKSpriteNode
    //    /// Store Button
    //    let retroLifeSkinStore:SKSpriteNode
    //
    //    /// Rainbow Skin
    //    // Background
    //    let rainbowBackground:SKSpriteNode
    //    /// Game Button
    //    let rainbowPlay: SKSpriteNode
    //    /// Score Button
    //    let rainbowScore:SKSpriteNode
    //    /// Store Button
    //    let rainbowStore:SKSpriteNode
    //
    //    /// Light Skin
    //    // Background
    //    let lightBackground:SKSpriteNode
    //    /// Game Button
    //    let lightPlay: SKSpriteNode
    //    /// Score Button
    //    let lightScore:SKSpriteNode
    //    /// Store Button
    //    let lightStore:SKSpriteNode
    //
    //    /// Soccer Skin
    //    // Background
    //    let soccerBackground:SKSpriteNode
    //    /// Game Button
    //    let soccerPlay: SKSpriteNode
    //    /// Score Button
    //    let soccerScore:SKSpriteNode
    //    /// Store Button
    //    let soccerStore:SKSpriteNode
    
    let deviceType = UIDevice.current.deviceType
    
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
        
        if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone ){
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
        }else{
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
        }//End else
        
        //        // Retro Life Skin
        //        /// background
        //        retroLifeSkinBackground = SKSpriteNode.init(imageNamed: "Background Retro")
        //        retroLifeSkinBackground.name = "background"
        //        retroLifeSkinBackground.zPosition = 1
        //        retroLifeSkinBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        //        retroLifeSkinBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //
        //        /// Play Button
        //        retroLifeSkinPlay = SKSpriteNode.init(imageNamed: "Play Retro")
        //        retroLifeSkinPlay.name = "buttonSprite-Play"
        //        retroLifeSkinPlay.zPosition = 2
        //        retroLifeSkinPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        //        retroLifeSkinPlay.size  = CGSize(
        //            width: (retroLifeSkinPlay.size.width * (inThisScene.size.width / retroLifeSkinPlay.size.width)*(37.04/100)),
        //            height: (retroLifeSkinPlay.size.height * (inThisScene.size.height / retroLifeSkinPlay.size.height)*(10.42/100)))
        //
        //        /// Store Button
        //        retroLifeSkinStore = SKSpriteNode.init(imageNamed: "Store Retro")
        //        retroLifeSkinStore.name = "buttonSprite-Store"
        //        retroLifeSkinStore.zPosition = 2
        //        retroLifeSkinStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        //        retroLifeSkinStore.size = CGSize(
        //            width: (retroLifeSkinStore.size.width * (inThisScene.size.width / retroLifeSkinStore.size.width)*(37.04/100)),
        //            height: (retroLifeSkinStore.size.height * (inThisScene.size.height / retroLifeSkinStore.size.height)*(10.42/100)))
        //
        //        /// Score Button
        //        retroLifeSkinScore = SKSpriteNode.init(imageNamed: "Score Retro")
        //        retroLifeSkinScore.name = "buttonSprite-Score"
        //        retroLifeSkinScore.zPosition = 2
        //        retroLifeSkinScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        //        retroLifeSkinScore.size = CGSize(
        //            width: (retroLifeSkinScore.size.width * (inThisScene.size.width / retroLifeSkinScore.size.width)*(37.04/100)),
        //            height: (retroLifeSkinScore.size.height * (inThisScene.size.height / retroLifeSkinScore.size.height)*(10.42/100)))
        //
        //        // Rainbow Skin
        //        /// background
        //        rainbowBackground = SKSpriteNode.init(imageNamed: "Background Rainbow")
        //        rainbowBackground.name = "background"
        //        rainbowBackground.zPosition = 1
        //        rainbowBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        //        rainbowBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //
        //        /// Play Button
        //        rainbowPlay = SKSpriteNode.init(imageNamed: "Play Rainbow")
        //        rainbowPlay.name = "buttonSprite-Play"
        //        rainbowPlay.zPosition = 2
        //        rainbowPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        //        rainbowPlay.size  = CGSize(
        //            width: (rainbowPlay.size.width * (inThisScene.size.width / rainbowPlay.size.width)*(37.04/100)),
        //            height: (rainbowPlay.size.height * (inThisScene.size.height / rainbowPlay.size.height)*(10.42/100)))
        //
        //        /// Store Button
        //        rainbowStore = SKSpriteNode.init(imageNamed: "Store Rainbow")
        //        rainbowStore.name = "buttonSprite-Store"
        //        rainbowStore.zPosition = 2
        //        rainbowStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        //        rainbowStore.size = CGSize(
        //            width: (rainbowStore.size.width * (inThisScene.size.width / rainbowStore.size.width)*(37.04/100)),
        //            height: (rainbowStore.size.height * (inThisScene.size.height / rainbowStore.size.height)*(10.42/100)))
        //
        //        /// Score Button
        //        rainbowScore = SKSpriteNode.init(imageNamed: "Score Rainbow")
        //        rainbowScore.name = "buttonSprite-Score"
        //        rainbowScore.zPosition = 2
        //        rainbowScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        //        rainbowScore.size = CGSize(
        //            width: (rainbowScore.size.width * (inThisScene.size.width / rainbowScore.size.width)*(37.04/100)),
        //            height: (rainbowScore.size.height * (inThisScene.size.height / rainbowScore.size.height)*(10.42/100)))
        //
        //        // Light Skin
        //        /// background
        //        lightBackground = SKSpriteNode.init(imageNamed: "Background Light")
        //        lightBackground.name = "background"
        //        lightBackground.zPosition = 1
        //        lightBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        //        lightBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //
        //        /// Play Button
        //        lightPlay = SKSpriteNode.init(imageNamed: "Play Light")
        //        lightPlay.name = "buttonSprite-Play"
        //        lightPlay.zPosition = 2
        //        lightPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        //        lightPlay.size  = CGSize(
        //            width: (lightPlay.size.width * (inThisScene.size.width / lightPlay.size.width)*(37.04/100)),
        //            height: (lightPlay.size.height * (inThisScene.size.height / lightPlay.size.height)*(10.42/100)))
        //
        //        /// Store Button
        //        lightStore = SKSpriteNode.init(imageNamed: "Store Light")
        //        lightStore.name = "buttonSprite-Store"
        //        lightStore.zPosition = 2
        //        lightStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        //        lightStore.size = CGSize(
        //            width: (lightStore.size.width * (inThisScene.size.width / lightStore.size.width)*(37.04/100)),
        //            height: (lightStore.size.height * (inThisScene.size.height / lightStore.size.height)*(10.42/100)))
        //
        //        /// Score Button
        //        lightScore = SKSpriteNode.init(imageNamed: "Score Light")
        //        lightScore.name = "buttonSprite-Score"
        //        lightScore.zPosition = 2
        //        lightScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        //        lightScore.size = CGSize(
        //            width: (lightScore.size.width * (inThisScene.size.width / lightScore.size.width)*(37.04/100)),
        //            height: (lightScore.size.height * (inThisScene.size.height / lightScore.size.height)*(10.42/100)))
        //
        //        // Soccer Skin
        //        /// background
        //        soccerBackground = SKSpriteNode.init(imageNamed: "Background Soccer")
        //        soccerBackground.name = "background"
        //        soccerBackground.zPosition = 1
        //        soccerBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        //        soccerBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //
        //        /// Play Button
        //        soccerPlay = SKSpriteNode.init(imageNamed: "Play Soccer")
        //        soccerPlay.name = "buttonSprite-Play"
        //        soccerPlay.zPosition = 2
        //        soccerPlay.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
        //        soccerPlay.size  = CGSize(
        //            width: (soccerPlay.size.width * (inThisScene.size.width / soccerPlay.size.width)*(37.04/100)),
        //            height: (soccerPlay.size.height * (inThisScene.size.height / soccerPlay.size.height)*(10.42/100)))
        //
        //        /// Store Button
        //        soccerStore = SKSpriteNode.init(imageNamed: "Store Soccer")
        //        soccerStore.name = "buttonSprite-Store"
        //        soccerStore.zPosition = 2
        //        soccerStore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
        //        soccerStore.size = CGSize(
        //            width: (soccerStore.size.width * (inThisScene.size.width / soccerStore.size.width)*(37.04/100)),
        //            height: (soccerStore.size.height * (inThisScene.size.height / soccerStore.size.height)*(10.42/100)))
        //
        //        /// Score Button
        //        soccerScore = SKSpriteNode.init(imageNamed: "Score Soccer")
        //        soccerScore.name = "buttonSprite-Score"
        //        soccerScore.zPosition = 2
        //        soccerScore.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
        //        soccerScore.size = CGSize(
        //            width: (soccerScore.size.width * (inThisScene.size.width / soccerScore.size.width)*(37.04/100)),
        //            height: (soccerScore.size.height * (inThisScene.size.height / soccerScore.size.height)*(10.42/100)))
        
    }//END init
}//END Struct
