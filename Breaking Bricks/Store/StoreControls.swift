//
//  StoreControls.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Luis Reyes. All rights reserved.
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
            
        }//End else
        
    }//END Init
    
}//END Struct
