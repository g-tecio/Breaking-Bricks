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
    
    //Coin Icon
    let coin: SKSpriteNode
    
    //Coin label
    let coinLabel: SKLabelNode
    
    let deviceType = UIDevice.current.deviceType
    
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
            
        }//End else
 
    }//END Init
    
}//END Struct
