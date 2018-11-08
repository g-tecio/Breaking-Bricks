//
//  StoreControls.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Cartwheel Galaxy Inc. All rights reserved.
//

import SpriteKit
import Device_swift

struct StoreControls {
    
    //Coin Icon
    let coin: SKSpriteNode
    //Coin label
    let coinLabel: SKLabelNode
    
    let deviceType = UIDevice.current.deviceType
    
    /// Classic
    //backgrounds
    let classicBackground: SKSpriteNode
    /// Menu Button
    let menuclassic: SKSpriteNode
    ///Current
    let currentclassic: SKSpriteNode
    
    /// Retro Life Skin
    let retroLifeSkinBackground: SKSpriteNode
    let retroLifeSkinMenu: SKSpriteNode
    let retroLifeSkinCurrent: SKSpriteNode
    
    /// Rainbown Skin
    let rainbowBackground: SKSpriteNode
    let rainbowMenu: SKSpriteNode
    let rainbowCurrent: SKSpriteNode
    
    /// Light Skin
    let lightBackground: SKSpriteNode
    let lightCurrent: SKSpriteNode
    let lightMenu: SKSpriteNode
    
    /// Soccer Skin
    let soccerMenu: SKSpriteNode
    let soccerBackground: SKSpriteNode
    let soccerCurrent: SKSpriteNode
    
    /// Dust Skin
    let spaceDustMenu: SKSpriteNode
    let spaceDustBackground: SKSpriteNode
    let spaceDustCurrent: SKSpriteNode
    
    /// Acid Rain Skin
    let acidRainMenu: SKSpriteNode
    let acidRainBackground: SKSpriteNode
    let acidRainCurrent: SKSpriteNode
    
    /// End Times Skin
    let endTimesMenu: SKSpriteNode
    let endTimesBackground: SKSpriteNode
    let endTimesCurrent: SKSpriteNode
    
    /// Pumpkin Skin
    let pumpkinMenu: SKSpriteNode
    let pumpkinBackground: SKSpriteNode
    let pumpkinCurrent: SKSpriteNode
    
    /// Scream Red Skin
    let screamRedMenu: SKSpriteNode
    let screamRedBackground: SKSpriteNode
    let screamRedCurrent: SKSpriteNode
    
    /// Scream Red Skin
    let screamGreenMenu: SKSpriteNode
    let screamGreenBackground: SKSpriteNode
    let screamGreenCurrent: SKSpriteNode
    
    /// Dessert Skin
    let dessertMenu: SKSpriteNode
    let dessertBackground: SKSpriteNode
    let dessertCurrent: SKSpriteNode
    
    /// Classy Skin
    let classyMenu: SKSpriteNode
    let classyBackground: SKSpriteNode
    let classyCurrent: SKSpriteNode
    
    /// Urbanic Skin
    let urbanicMenu: SKSpriteNode
    let urbanicBackground: SKSpriteNode
    let urbanicCurrent: SKSpriteNode
    
    /// Autumn Skin
    let autumnMenu: SKSpriteNode
    let autumnBackground: SKSpriteNode
    let autumnCurrent: SKSpriteNode
    
    /// Ocher Skin
    let ocherMenu: SKSpriteNode
    let ocherBackground: SKSpriteNode
    let ocherCurrent: SKSpriteNode
    
    init(inThisScene: StoreScene) {
        
        //Coin
        coin = SKSpriteNode.init(imageNamed: "coin")
        coin.name = "coin"
        coin.zPosition = 4
        coin.position = CGPoint(x: inThisScene.size.width*4.2/10, y: (inThisScene.size.height*8.4/10))
        
        //Label
        coinLabel = SKLabelNode.init(text: "0")
        coinLabel.name = "CurrencyLabel-Game"
        coinLabel.fontName = "Roboto-Regular"
        coinLabel.horizontalAlignmentMode = .center
        coinLabel.verticalAlignmentMode = .center
        coinLabel.fontColor = .white
        coinLabel.fontSize = 30
        coinLabel.zPosition = 4
        coinLabel.position = CGPoint(x: inThisScene.size.width*(5.7/10), y: inThisScene.size.height * (8.4/10))
        let resizeFactorFont:CGFloat = inThisScene.size.width / 407.0
        coinLabel.fontSize *= resizeFactorFont
        
        /// Classic
        // Background
        classicBackground = SKSpriteNode.init(imageNamed: "Background Classic")
        classicBackground.name = "background"
        classicBackground.zPosition = 1
        classicBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        classicBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        /// Menu Buttons
        menuclassic = SKSpriteNode.init(imageNamed: "MENU Classic")
        menuclassic.name = "buttonSprite-Menu"
        menuclassic.zPosition = 2
        menuclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        // Current
        currentclassic = SKSpriteNode.init(imageNamed: "Multipurpose Classic")
        currentclassic.zPosition = 2
        currentclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        // Retro Life
        // Background
        retroLifeSkinBackground = SKSpriteNode.init(imageNamed: "Background Retro")
        retroLifeSkinBackground.name = "backgroundRetroLifeSkin"
        retroLifeSkinBackground.zPosition = 1
        retroLifeSkinBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        retroLifeSkinBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        // Menu
        retroLifeSkinMenu = SKSpriteNode.init(imageNamed: "MENU Retro")
        retroLifeSkinMenu.name = "buttonSprite-Menu"
        retroLifeSkinMenu.zPosition = 2
        retroLifeSkinMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        // Current
        retroLifeSkinCurrent = SKSpriteNode.init(imageNamed: "Multipurpose Retro")
        retroLifeSkinCurrent.zPosition = 2
        retroLifeSkinCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        // Rainbow skin
        rainbowBackground = SKSpriteNode.init(imageNamed: "Background Rainbow")
        rainbowBackground.name = "backgroundRainbowSkin"
        rainbowBackground.zPosition = 1
        rainbowBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        rainbowBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        // Menu
        rainbowMenu = SKSpriteNode.init(imageNamed: "Menu Rainbow")
        rainbowMenu.name = "buttonSprite-Menu"
        rainbowMenu.zPosition = 2
        rainbowMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        // Current
        rainbowCurrent = SKSpriteNode.init(imageNamed: "Empty 1 Rainbow")
        rainbowCurrent.zPosition = 2
        rainbowCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        // Light Skin
        lightBackground = SKSpriteNode.init(imageNamed: "Background Light")
        lightBackground.name = "backgroundLightSkin"
        lightBackground.zPosition = 1
        lightBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        lightBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        // Menu
        lightMenu = SKSpriteNode.init(imageNamed: "MENU Light")
        lightMenu.name = "buttonSprite-Menu"
        lightMenu.zPosition = 2
        lightMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        // Current
        lightCurrent = SKSpriteNode.init(imageNamed: "Mutipurpose Light")
        lightCurrent.zPosition = 2
        lightCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        // Soccer skin
        soccerBackground = SKSpriteNode.init(imageNamed: "Background Soccer")
        soccerBackground.name = "backgroundLightSkin"
        soccerBackground.zPosition = 1
        soccerBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        soccerBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //Menu
        soccerMenu = SKSpriteNode.init(imageNamed: "MENU Soccer")
        soccerMenu.name = "buttonSprite-Menu"
        soccerMenu.zPosition = 2
        soccerMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //Current
        soccerCurrent = SKSpriteNode.init(imageNamed: "Multipurpose Soccer")
        soccerCurrent.zPosition = 2
        soccerCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        // Dust skin
        spaceDustBackground = SKSpriteNode.init(imageNamed: "Background Dust")
        spaceDustBackground.name = "backgroundLightSkin"
        spaceDustBackground.zPosition = 1
        spaceDustBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        spaceDustBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //Menu
        spaceDustMenu = SKSpriteNode.init(imageNamed: "MENU Dust")
        spaceDustMenu.name = "buttonSprite-Menu"
        spaceDustMenu.zPosition = 2
        spaceDustMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //Current
        spaceDustCurrent = SKSpriteNode.init(imageNamed: "Multipurpose Dust")
        spaceDustCurrent.zPosition = 2
        spaceDustCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        
        // AcidRain skin
        acidRainBackground = SKSpriteNode.init(imageNamed: "Background Toxic")
        acidRainBackground.name = "backgroundLightSkin"
        acidRainBackground.zPosition = 1
        acidRainBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        acidRainBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //Menu
        acidRainMenu = SKSpriteNode.init(imageNamed: "MENU Toxic")
        acidRainMenu.name = "buttonSprite-Menu"
        acidRainMenu.zPosition = 2
        acidRainMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //Current
        acidRainCurrent = SKSpriteNode.init(imageNamed: "Mutipurpose Toxic")
        acidRainCurrent.zPosition = 2
        acidRainCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        // End Times skin
        endTimesBackground = SKSpriteNode.init(imageNamed: "Background End_Times")
        endTimesBackground.name = "backgroundLightSkin"
        endTimesBackground.zPosition = 1
        endTimesBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        endTimesBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //Menu
        endTimesMenu = SKSpriteNode.init(imageNamed: "MENU End_Times")
        endTimesMenu.name = "buttonSprite-Menu"
        endTimesMenu.zPosition = 2
        endTimesMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //Current
        endTimesCurrent = SKSpriteNode.init(imageNamed: "Multipurpose End_Times")
        endTimesCurrent.zPosition = 2
        endTimesCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        // Pumpkin skin
        pumpkinBackground = SKSpriteNode.init(imageNamed: "Background Pumpkin")
        pumpkinBackground.name = "backgroundLightSkin"
        pumpkinBackground.zPosition = 1
        pumpkinBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        pumpkinBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //Menu
        pumpkinMenu = SKSpriteNode.init(imageNamed: "MENU Pumpkin")
        pumpkinMenu.name = "buttonSprite-Menu"
        pumpkinMenu.zPosition = 2
        pumpkinMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //Current
        pumpkinCurrent = SKSpriteNode.init(imageNamed: "Multipurpose Pumpkin")
        pumpkinCurrent.zPosition = 2
        pumpkinCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))

        // Scream Red skin
        screamRedBackground = SKSpriteNode.init(imageNamed: "Background Scream_Red")
        screamRedBackground.name = "backgroundLightSkin"
        screamRedBackground.zPosition = 1
        screamRedBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        screamRedBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //Menu
        screamRedMenu = SKSpriteNode.init(imageNamed: "Menu Scream_Red")
        screamRedMenu.name = "buttonSprite-Menu"
        screamRedMenu.zPosition = 2
        screamRedMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //Current
        screamRedCurrent = SKSpriteNode.init(imageNamed: "Multipurpose Scream_Red")
        screamRedCurrent.zPosition = 2
        screamRedCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        
        // Scream Gren skin
        screamGreenBackground = SKSpriteNode.init(imageNamed: "Background Scream_Green")
        screamGreenBackground.name = "backgroundLightSkin"
        screamGreenBackground.zPosition = 1
        screamGreenBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        screamGreenBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //Menu
        screamGreenMenu = SKSpriteNode.init(imageNamed: "Menu Scream_Green")
        screamGreenMenu.name = "buttonSprite-Menu"
        screamGreenMenu.zPosition = 2
        screamGreenMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //Current
        screamGreenCurrent = SKSpriteNode.init(imageNamed: "Multipurpose Scream_Green")
        screamGreenCurrent.zPosition = 2
        screamGreenCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        // Dessert skin
        dessertBackground = SKSpriteNode.init(imageNamed: "Background Dessert")
        dessertBackground.name = "backgroundLightSkin"
        dessertBackground.zPosition = 1
        dessertBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        dessertBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //Menu
        dessertMenu = SKSpriteNode.init(imageNamed: "MENU Dessert")
        dessertMenu.name = "buttonSprite-Menu"
        dessertMenu.zPosition = 2
        dessertMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //Current
        dessertCurrent = SKSpriteNode.init(imageNamed: "Multipourpose Dessert")
        dessertCurrent.zPosition = 2
        dessertCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        // Classy skin
        classyBackground = SKSpriteNode.init(imageNamed: "Background Classy")
        classyBackground.name = "backgroundLightSkin"
        classyBackground.zPosition = 1
        classyBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        classyBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //Menu
        classyMenu = SKSpriteNode.init(imageNamed: "MENU Classy")
        classyMenu.name = "buttonSprite-Menu"
        classyMenu.zPosition = 2
        classyMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //Current
        classyCurrent = SKSpriteNode.init(imageNamed: "Multipurpose Classy")
        classyCurrent.zPosition = 2
        classyCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        // Urbanic skin
        urbanicBackground = SKSpriteNode.init(imageNamed: "Background Urbanic")
        urbanicBackground.name = "backgroundLightSkin"
        urbanicBackground.zPosition = 1
        urbanicBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        urbanicBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //Menu
        urbanicMenu = SKSpriteNode.init(imageNamed: "MENU Urbanic")
        urbanicMenu.name = "buttonSprite-Menu"
        urbanicMenu.zPosition = 2
        urbanicMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //Current
        urbanicCurrent = SKSpriteNode.init(imageNamed: "Multipurpose Urbanic")
        urbanicCurrent.zPosition = 2
        urbanicCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        // Autumn skin
        autumnBackground = SKSpriteNode.init(imageNamed: "Background Autumn")
        autumnBackground.name = "backgroundLightSkin"
        autumnBackground.zPosition = 1
        autumnBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        autumnBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //Menu
        autumnMenu = SKSpriteNode.init(imageNamed: "Menu Autumn")
        autumnMenu.name = "buttonSprite-Menu"
        autumnMenu.zPosition = 2
        autumnMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //Current
        autumnCurrent = SKSpriteNode.init(imageNamed: "Multipurpose Autumn")
        autumnCurrent.zPosition = 2
        autumnCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        // Ocher skin
        ocherBackground = SKSpriteNode.init(imageNamed: "Background Ocher")
        ocherBackground.name = "backgroundLightSkin"
        ocherBackground.zPosition = 1
        ocherBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        ocherBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //Menu
        ocherMenu = SKSpriteNode.init(imageNamed: "Menu Ocher")
        ocherMenu.name = "buttonSprite-Menu"
        ocherMenu.zPosition = 2
        ocherMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //Current
        ocherCurrent = SKSpriteNode.init(imageNamed: "Multipurpose Ocher")
        ocherCurrent.zPosition = 2
        ocherCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        
        if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone  ){
            //16:9
            coin.size = CGSize(
                width: (coin.size.width * (inThisScene.size.width / coin.size.width)*(((coin.size.width/1080)*100)/100)),
                height: (coin.size.height * (inThisScene.size.height / coin.size.height)*(((coin.size.height/1920)*100)/100))
            )
            
            /// Classic
            //16:9
            menuclassic.size = CGSize(
                width: (menuclassic.size.width * (inThisScene.size.width / menuclassic.size.width)*(37.04/100)),
                height: (menuclassic.size.height * (inThisScene.size.height / menuclassic.size.height)*(10.42/100))
            )
            //16:9
            currentclassic.size = CGSize(
                width: (menuclassic.size.width * (inThisScene.size.width / menuclassic.size.width)*(37.04/100)),
                height: (menuclassic.size.height * (inThisScene.size.height / menuclassic.size.height)*(10.42/100))
            )
            
            /// Retro Life Skin
            //16:9
            retroLifeSkinMenu.size = CGSize(
                width: (retroLifeSkinMenu.size.width * (inThisScene.size.width / retroLifeSkinMenu.size.width)*(37.04/100)),
                height: (retroLifeSkinMenu.size.height * (inThisScene.size.height / retroLifeSkinMenu.size.height)*(10.42/100))
            )
            //16:9
            retroLifeSkinCurrent.size = CGSize(
                width: (retroLifeSkinCurrent.size.width * (inThisScene.size.width / retroLifeSkinCurrent.size.width)*(37.04/100)),
                height: (retroLifeSkinCurrent.size.height * (inThisScene.size.height / retroLifeSkinCurrent.size.height)*(10.42/100))
            )
            
            /// Rainbow Skin
            //16:9
            rainbowMenu.size = CGSize(
                width: (rainbowMenu.size.width * (inThisScene.size.width / rainbowMenu.size.width)*(37.04/100)),
                height: (rainbowMenu.size.height * (inThisScene.size.height / rainbowMenu.size.height)*(10.42/100))
            )
            //16:9
            rainbowCurrent.size = CGSize(
                width: (rainbowCurrent.size.width * (inThisScene.size.width / rainbowCurrent.size.width)*(37.04/100)),
                height: (rainbowCurrent.size.height * (inThisScene.size.height / rainbowCurrent.size.height)*(10.42/100))
            )
            
            /// Light Skin
            //16:9
            lightMenu.size = CGSize(
                width: (lightMenu.size.width * (inThisScene.size.width / lightMenu.size.width)*(37.04/100)),
                height: (lightMenu.size.height * (inThisScene.size.height / lightMenu.size.height)*(10.42/100))
            )
            //16:9
            lightCurrent.size = CGSize(
                width: (lightCurrent.size.width * (inThisScene.size.width / lightCurrent.size.width)*(37.04/100)),
                height: (lightCurrent.size.height * (inThisScene.size.height / lightCurrent.size.height)*(10.42/100))
            )
            
            /// Soccer Skin
            //16:9
            soccerMenu.size = CGSize(
                width: (soccerMenu.size.width * (inThisScene.size.width / soccerMenu.size.width)*(37.04/100)),
                height: (soccerMenu.size.height * (inThisScene.size.height / soccerMenu.size.height)*(10.42/100))
            )
            //16:9
            soccerCurrent.size = CGSize(
                width: (soccerCurrent.size.width * (inThisScene.size.width / soccerCurrent.size.width)*(37.04/100)),
                height: (soccerCurrent.size.height * (inThisScene.size.height / soccerCurrent.size.height)*(10.42/100))
            )
            
            /// Dust Skin
            //16:9
            spaceDustMenu.size = CGSize(
                width: (spaceDustMenu.size.width * (inThisScene.size.width / spaceDustMenu.size.width)*(37.04/100)),
                height: (spaceDustMenu.size.height * (inThisScene.size.height / spaceDustMenu.size.height)*(10.42/100))
            )
            //16:9
            spaceDustCurrent.size = CGSize(
                width: (spaceDustCurrent.size.width * (inThisScene.size.width / spaceDustCurrent.size.width)*(37.04/100)),
                height: (spaceDustCurrent.size.height * (inThisScene.size.height / spaceDustCurrent.size.height)*(10.42/100))
            )
            
            /// AcidRain Skin
            //16:9
            acidRainMenu.size = CGSize(
                width: (acidRainMenu.size.width * (inThisScene.size.width / acidRainMenu.size.width)*(37.04/100)),
                height: (acidRainMenu.size.height * (inThisScene.size.height / acidRainMenu.size.height)*(10.42/100))
            )
            //16:9
            acidRainCurrent.size = CGSize(
                width: (acidRainCurrent.size.width * (inThisScene.size.width / acidRainCurrent.size.width)*(37.04/100)),
                height: (acidRainCurrent.size.height * (inThisScene.size.height / acidRainCurrent.size.height)*(10.42/100))
            )
            
            /// End Times Skin
            //16:9
            endTimesMenu.size = CGSize(
                width: (endTimesMenu.size.width * (inThisScene.size.width / endTimesMenu.size.width)*(37.04/100)),
                height: (endTimesMenu.size.height * (inThisScene.size.height / endTimesMenu.size.height)*(10.42/100))
            )
            //16:9
            endTimesCurrent.size = CGSize(
                width: (endTimesCurrent.size.width * (inThisScene.size.width / endTimesCurrent.size.width)*(37.04/100)),
                height: (endTimesCurrent.size.height * (inThisScene.size.height / endTimesCurrent.size.height)*(10.42/100))
            )
            
            /// Pumpkin Skin
            //16:9
            pumpkinMenu.size = CGSize(
                width: (pumpkinMenu.size.width * (inThisScene.size.width / pumpkinMenu.size.width)*(37.04/100)),
                height: (pumpkinMenu.size.height * (inThisScene.size.height / pumpkinMenu.size.height)*(10.42/100))
            )
            //16:9
            pumpkinCurrent.size = CGSize(
                width: (pumpkinCurrent.size.width * (inThisScene.size.width / pumpkinCurrent.size.width)*(37.04/100)),
                height: (pumpkinCurrent.size.height * (inThisScene.size.height / pumpkinCurrent.size.height)*(10.42/100))
            )
            
            /// Scream Red Skin
            //16:9
            screamRedMenu.size = CGSize(
                width: (screamRedMenu.size.width * (inThisScene.size.width / screamRedMenu.size.width)*(37.04/100)),
                height: (screamRedMenu.size.height * (inThisScene.size.height / screamRedMenu.size.height)*(10.42/100))
            )
            //16:9
            screamRedCurrent.size = CGSize(
                width: (screamRedCurrent.size.width * (inThisScene.size.width / screamRedCurrent.size.width)*(37.04/100)),
                height: (screamRedCurrent.size.height * (inThisScene.size.height / screamRedCurrent.size.height)*(10.42/100))
            )
            
            /// Scream Green Skin
            //16:9
            screamGreenMenu.size = CGSize(
                width: (screamGreenMenu.size.width * (inThisScene.size.width / screamGreenMenu.size.width)*(37.04/100)),
                height: (screamGreenMenu.size.height * (inThisScene.size.height / screamGreenMenu.size.height)*(10.42/100))
            )
            //16:9
            screamGreenCurrent.size = CGSize(
                width: (screamGreenCurrent.size.width * (inThisScene.size.width / screamGreenCurrent.size.width)*(37.04/100)),
                height: (screamGreenCurrent.size.height * (inThisScene.size.height / screamGreenCurrent.size.height)*(10.42/100))
            )
            /// Dessert Skin
            //16:9
            dessertMenu.size = CGSize(
                width: (dessertMenu.size.width * (inThisScene.size.width / dessertMenu.size.width)*(37.04/100)),
                height: (dessertMenu.size.height * (inThisScene.size.height / dessertMenu.size.height)*(10.42/100))
            )
            //16:9
            dessertCurrent.size = CGSize(
                width: (dessertCurrent.size.width * (inThisScene.size.width / dessertCurrent.size.width)*(37.04/100)),
                height: (dessertCurrent.size.height * (inThisScene.size.height / dessertCurrent.size.height)*(10.42/100))
            )
            /// classy Skin
            //16:9
            classyMenu.size = CGSize(
                width: (classyMenu.size.width * (inThisScene.size.width / classyMenu.size.width)*(37.04/100)),
                height: (classyMenu.size.height * (inThisScene.size.height / classyMenu.size.height)*(10.42/100))
            )
            //16:9
            classyCurrent.size = CGSize(
                width: (classyCurrent.size.width * (inThisScene.size.width / classyCurrent.size.width)*(37.04/100)),
                height: (classyCurrent.size.height * (inThisScene.size.height / classyCurrent.size.height)*(10.42/100))
            )
            
            /// Urbanic Skin
            //16:9
            urbanicMenu.size = CGSize(
                width: (urbanicMenu.size.width * (inThisScene.size.width / urbanicMenu.size.width)*(37.04/100)),
                height: (urbanicMenu.size.height * (inThisScene.size.height / urbanicMenu.size.height)*(10.42/100))
            )
            //16:9
            urbanicCurrent.size = CGSize(
                width: (urbanicCurrent.size.width * (inThisScene.size.width / urbanicCurrent.size.width)*(37.04/100)),
                height: (urbanicCurrent.size.height * (inThisScene.size.height / urbanicCurrent.size.height)*(10.42/100))
            )
            
            /// Autumn Skin
            //16:9
            autumnMenu.size = CGSize(
                width: (autumnMenu.size.width * (inThisScene.size.width / autumnMenu.size.width)*(37.04/100)),
                height: (autumnMenu.size.height * (inThisScene.size.height / autumnMenu.size.height)*(10.42/100))
            )
            //16:9
            autumnCurrent.size = CGSize(
                width: (autumnCurrent.size.width * (inThisScene.size.width / autumnCurrent.size.width)*(37.04/100)),
                height: (autumnCurrent.size.height * (inThisScene.size.height / autumnCurrent.size.height)*(10.42/100))
            )
            
            /// Ocher Skin
            //16:9
            ocherMenu.size = CGSize(
                width: (ocherMenu.size.width * (inThisScene.size.width / ocherMenu.size.width)*(37.04/100)),
                height: (ocherMenu.size.height * (inThisScene.size.height / ocherMenu.size.height)*(10.42/100))
            )
            //16:9
            ocherCurrent.size = CGSize(
                width: (ocherCurrent.size.width * (inThisScene.size.width / ocherCurrent.size.width)*(37.04/100)),
                height: (ocherCurrent.size.height * (inThisScene.size.height / ocherCurrent.size.height)*(10.42/100))
            )
            
        }else{
            //4:3
            coin.size = CGSize(
                width: (coin.size.width * (inThisScene.size.width / coin.size.width)*((((coin.size.width/2048)*100)*1.5)/100)),
                height: (coin.size.height * (inThisScene.size.height / coin.size.height)*((((coin.size.height/2732)*100)*1.5)/100))
            )
            
            /// Classic
            //4:3
            menuclassic.size  = CGSize(
                width: (menuclassic.size.width * (inThisScene.size.width / menuclassic.size.width)*(29.3/100)),
                height: (menuclassic.size.height * (inThisScene.size.height / menuclassic.size.height)*(11/100))
            )
            //4:3
            currentclassic.size  = CGSize(
                width: (currentclassic.size.width * (inThisScene.size.width / currentclassic.size.width)*(29.3/100)),
                height: (currentclassic.size.height * (inThisScene.size.height / currentclassic.size.height)*(11/100)))
            
            /// Retro Life Skin
            //4:3
            retroLifeSkinMenu.size  = CGSize(
                width: (retroLifeSkinMenu.size.width * (inThisScene.size.width / retroLifeSkinMenu.size.width)*(29.3/100)),
                height: (retroLifeSkinMenu.size.height * (inThisScene.size.height / retroLifeSkinMenu.size.height)*(11/100))
            )
            //4:3
            retroLifeSkinCurrent.size  = CGSize(
                width: (retroLifeSkinCurrent.size.width * (inThisScene.size.width / retroLifeSkinCurrent.size.width)*(29.3/100)),
                height: (retroLifeSkinCurrent.size.height * (inThisScene.size.height / retroLifeSkinCurrent.size.height)*(11/100)))
            
            /// Rainbow Skin
            //4:3
            rainbowMenu.size  = CGSize(
                width: (rainbowMenu.size.width * (inThisScene.size.width / rainbowMenu.size.width)*(29.3/100)),
                height: (rainbowMenu.size.height * (inThisScene.size.height / rainbowMenu.size.height)*(11/100))
            )
            //4:3
            rainbowCurrent.size  = CGSize(
                width: (rainbowCurrent.size.width * (inThisScene.size.width / rainbowCurrent.size.width)*(29.3/100)),
                height: (rainbowCurrent.size.height * (inThisScene.size.height / rainbowCurrent.size.height)*(11/100)))
            
            /// Light Skin
            //4:3
            lightMenu.size  = CGSize(
                width: (lightMenu.size.width * (inThisScene.size.width / lightMenu.size.width)*(29.3/100)),
                height: (lightMenu.size.height * (inThisScene.size.height / lightMenu.size.height)*(11/100))
            )
            //4:3
            lightCurrent.size  = CGSize(
                width: (lightCurrent.size.width * (inThisScene.size.width / lightCurrent.size.width)*(29.3/100)),
                height: (lightCurrent.size.height * (inThisScene.size.height / lightCurrent.size.height)*(11/100)))
            
            /// Soccer Skin
            //4:3
            soccerMenu.size  = CGSize(
                width: (soccerMenu.size.width * (inThisScene.size.width / soccerMenu.size.width)*(29.3/100)),
                height: (soccerMenu.size.height * (inThisScene.size.height / soccerMenu.size.height)*(11/100))
            )
            //4:3
            soccerCurrent.size  = CGSize(
                width: (soccerCurrent.size.width * (inThisScene.size.width / soccerCurrent.size.width)*(29.3/100)),
                height: (soccerCurrent.size.height * (inThisScene.size.height / soccerCurrent.size.height)*(11/100)))
            
            /// Dust Skin
            //4:3
            spaceDustMenu.size  = CGSize(
                width: (spaceDustMenu.size.width * (inThisScene.size.width / spaceDustMenu.size.width)*(29.3/100)),
                height: (spaceDustMenu.size.height * (inThisScene.size.height / spaceDustMenu.size.height)*(11/100))
            )
            //4:3
            spaceDustCurrent.size  = CGSize(
                width: (spaceDustCurrent.size.width * (inThisScene.size.width / spaceDustCurrent.size.width)*(29.3/100)),
                height: (spaceDustCurrent.size.height * (inThisScene.size.height / spaceDustCurrent.size.height)*(11/100)))
            
            /// AcidRain Skin
            //4:3
            acidRainMenu.size  = CGSize(
                width: (acidRainMenu.size.width * (inThisScene.size.width / acidRainMenu.size.width)*(29.3/100)),
                height: (acidRainMenu.size.height * (inThisScene.size.height / acidRainMenu.size.height)*(11/100))
            )
            //4:3
            acidRainCurrent.size  = CGSize(
                width: (acidRainCurrent.size.width * (inThisScene.size.width / acidRainCurrent.size.width)*(29.3/100)),
                height: (acidRainCurrent.size.height * (inThisScene.size.height / acidRainCurrent.size.height)*(11/100)))
            
            /// End Times Skin
            //4:3
            endTimesMenu.size  = CGSize(
                width: (endTimesMenu.size.width * (inThisScene.size.width / endTimesMenu.size.width)*(29.3/100)),
                height: (endTimesMenu.size.height * (inThisScene.size.height / endTimesMenu.size.height)*(11/100))
            )
            //4:3
            endTimesCurrent.size  = CGSize(
                width: (endTimesCurrent.size.width * (inThisScene.size.width / endTimesCurrent.size.width)*(29.3/100)),
                height: (endTimesCurrent.size.height * (inThisScene.size.height / endTimesCurrent.size.height)*(11/100)))
            
            /// Pumpkin Skin
            //4:3
            pumpkinMenu.size  = CGSize(
                width: (pumpkinMenu.size.width * (inThisScene.size.width / pumpkinMenu.size.width)*(29.3/100)),
                height: (pumpkinMenu.size.height * (inThisScene.size.height / pumpkinMenu.size.height)*(11/100))
            )
            //4:3
            pumpkinCurrent.size  = CGSize(
                width: (pumpkinCurrent.size.width * (inThisScene.size.width / pumpkinCurrent.size.width)*(29.3/100)),
                height: (pumpkinCurrent.size.height * (inThisScene.size.height / pumpkinCurrent.size.height)*(11/100)))
            
            /// Scream Red Skin
            //4:3
            screamRedMenu.size  = CGSize(
                width: (screamRedMenu.size.width * (inThisScene.size.width / screamRedMenu.size.width)*(29.3/100)),
                height: (screamRedMenu.size.height * (inThisScene.size.height / screamRedMenu.size.height)*(11/100))
            )
            //4:3
            screamRedCurrent.size  = CGSize(
                width: (screamRedCurrent.size.width * (inThisScene.size.width / screamRedCurrent.size.width)*(29.3/100)),
                height: (screamRedCurrent.size.height * (inThisScene.size.height / screamRedCurrent.size.height)*(11/100)))
            
            /// Scream Green Skin
            //4:3
            screamGreenMenu.size  = CGSize(
                width: (screamGreenMenu.size.width * (inThisScene.size.width / screamGreenMenu.size.width)*(29.3/100)),
                height: (screamGreenMenu.size.height * (inThisScene.size.height / screamGreenMenu.size.height)*(11/100))
            )
            //4:3
            screamGreenCurrent.size  = CGSize(
                width: (screamGreenCurrent.size.width * (inThisScene.size.width / screamGreenCurrent.size.width)*(29.3/100)),
                height: (screamGreenCurrent.size.height * (inThisScene.size.height / screamGreenCurrent.size.height)*(11/100)))
            
            /// Dessert Skin
            //4:3
            dessertMenu.size  = CGSize(
                width: (dessertMenu.size.width * (inThisScene.size.width / dessertMenu.size.width)*(29.3/100)),
                height: (dessertMenu.size.height * (inThisScene.size.height / dessertMenu.size.height)*(11/100))
            )
            //4:3
            dessertCurrent.size  = CGSize(
                width: (dessertCurrent.size.width * (inThisScene.size.width / dessertCurrent.size.width)*(29.3/100)),
                height: (dessertCurrent.size.height * (inThisScene.size.height / dessertCurrent.size.height)*(11/100)))
            
            /// Classy Skin
            //4:3
            classyMenu.size  = CGSize(
                width: (classyMenu.size.width * (inThisScene.size.width / classyMenu.size.width)*(29.3/100)),
                height: (classyMenu.size.height * (inThisScene.size.height / classyMenu.size.height)*(11/100))
            )
            //4:3
            classyCurrent.size  = CGSize(
                width: (classyCurrent.size.width * (inThisScene.size.width / classyCurrent.size.width)*(29.3/100)),
                height: (classyCurrent.size.height * (inThisScene.size.height / classyCurrent.size.height)*(11/100)))
            
            /// Urbanic Skin
            //4:3
            urbanicMenu.size  = CGSize(
                width: (urbanicMenu.size.width * (inThisScene.size.width / urbanicMenu.size.width)*(29.3/100)),
                height: (urbanicMenu.size.height * (inThisScene.size.height / urbanicMenu.size.height)*(11/100))
            )
            //4:3
            urbanicCurrent.size  = CGSize(
                width: (urbanicCurrent.size.width * (inThisScene.size.width / urbanicCurrent.size.width)*(29.3/100)),
                height: (urbanicCurrent.size.height * (inThisScene.size.height / urbanicCurrent.size.height)*(11/100)))
            
            /// Autumn Skin
            //4:3
            autumnMenu.size  = CGSize(
                width: (autumnMenu.size.width * (inThisScene.size.width / autumnMenu.size.width)*(29.3/100)),
                height: (autumnMenu.size.height * (inThisScene.size.height / autumnMenu.size.height)*(11/100))
            )
            //4:3
            autumnCurrent.size  = CGSize(
                width: (autumnCurrent.size.width * (inThisScene.size.width / autumnCurrent.size.width)*(29.3/100)),
                height: (autumnCurrent.size.height * (inThisScene.size.height / autumnCurrent.size.height)*(11/100)))
            
            /// Ocher Skin
            //4:3
            ocherMenu.size  = CGSize(
                width: (ocherMenu.size.width * (inThisScene.size.width / ocherMenu.size.width)*(29.3/100)),
                height: (ocherMenu.size.height * (inThisScene.size.height / ocherMenu.size.height)*(11/100))
            )
            //4:3
            ocherCurrent.size  = CGSize(
                width: (ocherCurrent.size.width * (inThisScene.size.width / ocherCurrent.size.width)*(29.3/100)),
                height: (ocherCurrent.size.height * (inThisScene.size.height / ocherCurrent.size.height)*(11/100)))
            
            
        }//End else
    }//END Init
}//END Struct
