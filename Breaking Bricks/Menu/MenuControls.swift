//
//  MenuControls.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Cartwheel Galaxy Inc. All rights reserved.
//

import SpriteKit
import Device_swift

struct MenuControls {
    
    let deviceType = UIDevice.current.deviceType
    
    /// Classic
    // Background
    var bgclassic:SKSpriteNode
    /// Game Button
    var playclassic: SKSpriteNode
    /// Store Button
    var storeclassic:SKSpriteNode
    /// Score Button
    var scoreclassic:SKSpriteNode
    
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
        /// Store Button
        storeclassic = SKSpriteNode.init(imageNamed: "Store Classic")
        storeclassic.name = "buttonSprite-Store"
        storeclassic.zPosition = 2
        /// Score Button
        scoreclassic = SKSpriteNode.init(imageNamed: "Score Classic")
        scoreclassic.name = "buttonSprite-Score"
        scoreclassic.zPosition = 2
        
            let screenSize = UIScreen.main.bounds
            let screenWidth = screenSize.width
            let screenHeight = screenSize.height
            print(screenSize)
            print("Width: \(screenWidth)")
            print("Height: \(screenHeight)")

        if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone ){
            
            if (screenSize == CGRect(x: 0.0, y: 0.0, width: 375.0, height: 812.0)) {
                print("iphoneX y XS EXAMPLE")
                playclassic.position =  CGPoint(
                    x: (inThisScene.size.width / 2),
                    y: (inThisScene.size.height * (((1406 + (playclassic.size.height / 2)) / 2436 ) * 100) / 100)
                )
                storeclassic.position =  CGPoint(
                    x: (inThisScene.size.width / 2),
                    y: (inThisScene.size.height * ((( 896 + (storeclassic.size.height / 2)) / 2436 ) * 100) / 100)
                )
                scoreclassic.position =  CGPoint(
                    x: (inThisScene.size.width / 2),
                    y: (inThisScene.size.height * ((( 1151 + (scoreclassic.size.height / 2)) / 2436 ) * 100) / 100))
                /// Classic
                //19.5:9
                playclassic.size  = CGSize(
                    width: (playclassic.size.width * (inThisScene.size.width / playclassic.size.width)*(((playclassic.size.width/1125)*100)/100)),
                    height: (playclassic.size.height * (inThisScene.size.height / playclassic.size.height)*(((playclassic.size.height/2436 )*100)/100))
                )
                
                //19.5:9
                storeclassic.size = CGSize(
                    width: (storeclassic.size.width * (inThisScene.size.width / storeclassic.size.width)*(((storeclassic.size.width/1125)*100)/100)),
                    height: (storeclassic.size.height * (inThisScene.size.height / storeclassic.size.height)*(((storeclassic.size.height/2436)*100)/100))
                )
                //19.5:9
                scoreclassic.size = CGSize(
                    width: (scoreclassic.size.width * (inThisScene.size.width / scoreclassic.size.width)*(((scoreclassic.size.width/1125)*100)/100)),
                    height: (scoreclassic.size.height * (inThisScene.size.height / scoreclassic.size.height)*(((scoreclassic.size.height/2436)*100)/100))
                )
                
            }// END iphoneX y XS EXAMPLE

            if (screenSize == CGRect(x: 0.0, y: 0.0, width: 414.0, height: 896.0)) {
                print("iphoneXR y MAX")
                
                playclassic.position =  CGPoint(
                    x: (inThisScene.size.width / 2),
                    y: (inThisScene.size.height * (((1410 + (220 / 2)) / 2688 ) * 100) / 100)
                )
                storeclassic.position =  CGPoint(
                    x: (inThisScene.size.width / 2),
                    y: (inThisScene.size.height * (((850 + (220 / 2)) / 2688 ) * 100) / 100)
                )
                scoreclassic.position =  CGPoint(
                    x: (inThisScene.size.width / 2),
                    y: (inThisScene.size.height * (((1130 + (220 / 2)) / 2688 ) * 100) / 100))
                
                /// Classic
                //19.5:9
                playclassic.size  = CGSize(
                    width: (440 * (inThisScene.size.width / 440)*(((440/1242)*100)/100)),
                    height: (220 * (inThisScene.size.height / 220)*(((220/2688)*100)/100))
                )
                //19.5:9
                storeclassic.size = CGSize(
                    width: (440 * (inThisScene.size.width / 440)*(((440/1242)*100)/100)),
                    height: (220 * (inThisScene.size.height / 220)*(((220/2688)*100)/100))
                )
                //19.5:9
                scoreclassic.size = CGSize(
                    width: (440 * (inThisScene.size.width / 440)*(((440/1242)*100)/100)),
                    height: (220 * (inThisScene.size.height / 220)*(((220/2688)*100)/100))
                )

            }// END iphoneXR y MAX
            
            if (screenSize == CGRect(x: 0.0, y: 0.0, width: 320.0, height: 568.0)) || (screenSize == CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0)) || (screenSize == CGRect(x: 0.0, y: 0.0, width: 414.0, height: 736.0)) {
                
                playclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
                storeclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
                scoreclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
                
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

            }// END 16:9
            
        }else{
            playclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(61.20/100)))
            storeclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(34.64/100)))
            scoreclassic.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*(47.92/100)))
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
            
        }//End else
    }//END init
}//END Struct
