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
    /// Score Button
    let scoreclassic:SKSpriteNode
    /// Store Button
    let storeclassic:SKSpriteNode
    
    /// Retro Life Skin
    // Background
    let retroLifeSkinBackground:SKSpriteNode
    /// Game Button
    let retroLifeSkinPlay: SKSpriteNode
    /// Score Button
    let retroLifeSkinScore:SKSpriteNode
    /// Store Button
    let retroLifeSkinStore:SKSpriteNode
    
    /// Rainbow Skin
    // Background
    let rainbowBackground:SKSpriteNode
    /// Game Button
    let rainbowPlay: SKSpriteNode
    /// Score Button
    let rainbowScore:SKSpriteNode
    /// Store Button
    let rainbowStore:SKSpriteNode
    
    /// Light Skin
    // Background
    let lightBackground:SKSpriteNode
    /// Game Button
    let lightPlay: SKSpriteNode
    /// Score Button
    let lightScore:SKSpriteNode
    /// Store Button
    let lightStore:SKSpriteNode
    
    /// Soccer Skin
    // Background
    let soccerBackground:SKSpriteNode
    /// Game Button
    let soccerPlay: SKSpriteNode
    /// Score Button
    let soccerScore:SKSpriteNode
    /// Store Button
    let soccerStore:SKSpriteNode
    
    /// spaceDust Skin
    // Background
    let spaceDustBackground:SKSpriteNode
    /// Game Button
    let spaceDustPlay: SKSpriteNode
    /// Score Button
    let spaceDustScore:SKSpriteNode
    /// Store Button
    let spaceDustStore:SKSpriteNode
    
    /// AcidRain Skin
    // Background
    let acidRainBackground:SKSpriteNode
    /// Game Button
    let acidRainPlay: SKSpriteNode
    /// Score Button
    let acidRainScore:SKSpriteNode
    /// Store Button
    let acidRainStore:SKSpriteNode
    
    
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
            
        }//End else
        
        
    }//END init
}//END Struct
