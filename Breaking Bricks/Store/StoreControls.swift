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
    
    //backgrounds
    let classicBackground: SKSpriteNode
    //    let retroLifeSkinBackground: SKSpriteNode
    //    let rainbowBackground: SKSpriteNode
    //    let lightBackground: SKSpriteNode
    //    let soccerBackground: SKSpriteNode
    
    /// Menu Button
    let menuclassic: SKSpriteNode
    //    let retroLifeSkinMenu: SKSpriteNode
    //    let rainbowMenu: SKSpriteNode
    //    let lightMenu: SKSpriteNode
    //    let soccerMenu: SKSpriteNode
    
    ///Current
    let currentclassic: SKSpriteNode
    //    let retroLifeSkinCurrent: SKSpriteNode
    //    let rainbowCurrent: SKSpriteNode
    //    let lightCurrent: SKSpriteNode
    //    let soccerCurrent: SKSpriteNode
    
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
        //Background
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

        // Classic
        currentclassic = SKSpriteNode.init(imageNamed: "Multipurpose Classic")
        currentclassic.zPosition = 2
        currentclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))

        
        
        if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone  ){
            //16:9
            coin.size = CGSize(
                width: (coin.size.width * (inThisScene.size.width / coin.size.width)*(((coin.size.width/1080)*100)/100)),
                height: (coin.size.height * (inThisScene.size.height / coin.size.height)*(((coin.size.height/1920)*100)/100))
            )
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
            
        }else{
            //4:3
            coin.size = CGSize(
                width: (coin.size.width * (inThisScene.size.width / coin.size.width)*((((coin.size.width/2048)*100)*1.5)/100)),
                height: (coin.size.height * (inThisScene.size.height / coin.size.height)*((((coin.size.height/2732)*100)*1.5)/100))
            )
            //4:3
            menuclassic.size  = CGSize(
                width: (menuclassic.size.width * (inThisScene.size.width / menuclassic.size.width)*(29.3/100)),
                height: (menuclassic.size.height * (inThisScene.size.height / menuclassic.size.height)*(11/100))
            )
            //4:3
            currentclassic.size  = CGSize(
                width: (currentclassic.size.width * (inThisScene.size.width / currentclassic.size.width)*(29.3/100)),
                height: (currentclassic.size.height * (inThisScene.size.height / currentclassic.size.height)*(11/100)))
            
        }//End else


        

        //          //Background
        //        // Retro life skin
        //        retroLifeSkinBackground = SKSpriteNode.init(imageNamed: "Background Retro")
        //        retroLifeSkinBackground.name = "backgroundRetroLifeSkin"
        //        retroLifeSkinBackground.zPosition = 1
        //        retroLifeSkinBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        //        retroLifeSkinBackground.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //
        //        // Rainbow skin
        //        rainbowBackground = SKSpriteNode.init(imageNamed: "Background Rainbow")
        //        rainbowBackground.name = "backgroundRainbowSkin"
        //        rainbowBackground.zPosition = 1
        //        rainbowBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        //        rainbowBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //
        //        // Light skin
        //        lightBackground = SKSpriteNode.init(imageNamed: "Background Light")
        //        lightBackground.name = "backgroundLightSkin"
        //        lightBackground.zPosition = 1
        //        lightBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        //        lightBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        //
        //        // Soccer skin
        //        soccerBackground = SKSpriteNode.init(imageNamed: "Background Soccer")
        //        soccerBackground.name = "backgroundLightSkin"
        //        soccerBackground.zPosition = 1
        //        soccerBackground.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        //        soccerBackground.size  = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        
        

        //        //Menu
        //        // Retro Life Skin
        //        retroLifeSkinMenu = SKSpriteNode.init(imageNamed: "MENU Retro")
        //        retroLifeSkinMenu.name = "buttonSprite-Menu"
        //        retroLifeSkinMenu.zPosition = 2
        //        retroLifeSkinMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //        retroLifeSkinMenu.size = CGSize(
        //            width: (retroLifeSkinMenu.size.width * (inThisScene.size.width / retroLifeSkinMenu.size.width)*(37.04/100)),
        //            height: (retroLifeSkinMenu.size.height * (inThisScene.size.height / retroLifeSkinMenu.size.height)*(10.42/100))
        //        )
        //
        //        // Rainbow Skin
        //        rainbowMenu = SKSpriteNode.init(imageNamed: "Menu Rainbow")
        //        rainbowMenu.name = "buttonSprite-Menu"
        //        rainbowMenu.zPosition = 2
        //        rainbowMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //        rainbowMenu.size = CGSize(
        //            width: (rainbowMenu.size.width * (inThisScene.size.width / rainbowMenu.size.width)*(37.04/100)),
        //            height: (rainbowMenu.size.height * (inThisScene.size.height / rainbowMenu.size.height)*(10.42/100))
        //        )
        //
        //        // Light Skin
        //        lightMenu = SKSpriteNode.init(imageNamed: "MENU Light")
        //        lightMenu.name = "buttonSprite-Menu"
        //        lightMenu.zPosition = 2
        //        lightMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //        lightMenu.size = CGSize(
        //            width: (lightMenu.size.width * (inThisScene.size.width / lightMenu.size.width)*(37.04/100)),
        //            height: (lightMenu.size.height * (inThisScene.size.height / lightMenu.size.height)*(10.42/100))
        //        )
        //
        //        // Soccer Skin
        //        soccerMenu = SKSpriteNode.init(imageNamed: "MENU Soccer")
        //        soccerMenu.name = "buttonSprite-Menu"
        //        soccerMenu.zPosition = 2
        //        soccerMenu.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((16.15/100))))
        //        soccerMenu.size = CGSize(
        //            width: (soccerMenu.size.width * (inThisScene.size.width / soccerMenu.size.width)*(37.04/100)),
        //            height: (soccerMenu.size.height * (inThisScene.size.height / soccerMenu.size.height)*(10.42/100))
        //        )
        
        /// Current
        //        // Retro Life Skin
        //        retroLifeSkinCurrent = SKSpriteNode.init(imageNamed: "Multipurpose Retro")
        //        retroLifeSkinCurrent.zPosition = 2
        //        retroLifeSkinCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        //        retroLifeSkinCurrent.size = CGSize(
        //            width: (retroLifeSkinCurrent.size.width * (inThisScene.size.width / retroLifeSkinCurrent.size.width)*(37.04/100)),
        //            height: (retroLifeSkinCurrent.size.height * (inThisScene.size.height / retroLifeSkinCurrent.size.height)*(10.42/100))
        //        )
        //
        //        // Rainbow Skin
        //        rainbowCurrent = SKSpriteNode.init(imageNamed: "Empty 1 Rainbow")
        //        rainbowCurrent.zPosition = 2
        //        rainbowCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        //        rainbowCurrent.size = CGSize(
        //            width: (rainbowCurrent.size.width * (inThisScene.size.width / rainbowCurrent.size.width)*(37.04/100)),
        //            height: (rainbowCurrent.size.height * (inThisScene.size.height / rainbowCurrent.size.height)*(10.42/100))
        //        )
        //
        //        // Light Skin
        //        lightCurrent = SKSpriteNode.init(imageNamed: "Mutipurpose Light")
        //        lightCurrent.zPosition = 2
        //        lightCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        //        lightCurrent.size = CGSize(
        //            width: (lightCurrent.size.width * (inThisScene.size.width / lightCurrent.size.width)*(37.04/100)),
        //            height: (lightCurrent.size.height * (inThisScene.size.height / lightCurrent.size.height)*(10.42/100))
        //        )
        //
        //        // Soccer Skin
        //        soccerCurrent = SKSpriteNode.init(imageNamed: "Multipurpose Soccer")
        //        soccerCurrent.zPosition = 2
        //        soccerCurrent.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*((83.85/100))))
        //        soccerCurrent.size = CGSize(
        //            width: (soccerCurrent.size.width * (inThisScene.size.width / soccerCurrent.size.width)*(37.04/100)),
        //            height: (soccerCurrent.size.height * (inThisScene.size.height / soccerCurrent.size.height)*(10.42/100))
        //        )
        
        
    }//END Init
    
}//END Struct
