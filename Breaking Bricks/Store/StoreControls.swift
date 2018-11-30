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
    var classicBackground: SKSpriteNode
    /// Menu Button
    var menuclassic: SKSpriteNode
    ///Current
    var currentclassic: SKSpriteNode

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
            
        }//End else
    }//END Init
}//END Struct
