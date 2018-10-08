//
//  BrickSpriteRow6.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/22/18.
//  Copyright © 2018 Luis Reyes. All rights reserved.
//

import SpriteKit
import Device_swift



struct BrickSpriteRow6 {
    
    let deviceType = UIDevice.current.deviceType
    
    //blocks
    let blockclassic : SKSpriteNode!
    let retroLifeSkin : SKSpriteNode!
    let rainbowSkin : SKSpriteNode!
    let lightSkin : SKSpriteNode!
    let soccerSkin : SKSpriteNode!
    let spaceDustSkin: SKSpriteNode!
    let acidRainSkin: SKSpriteNode!
    
    
    //Array Bricks
    let classicblocks = ["Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic"]
    
    let retroLifeBlocks = ["Brick-gray Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-gray Retro",
                           "Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro",
                           "Brick-gray Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-gray Retro",
                           "Brick-gray Retro","Brick-gray Retro","Brick-red Retro","Brick-red Retro","Brick-gray Retro","Brick-gray Retro"]
    
    let rainbowBlocks = ["Brick 8 Rainbow","Brick 8 Rainbow","Brick 8 Rainbow","Brick 8 Rainbow","Brick 8 Rainbow","Brick 8 Rainbow",
                         "Brick 6 Rainbow","Brick 6 Rainbow","Brick 6 Rainbow","Brick 6 Rainbow","Brick 6 Rainbow","Brick 6 Rainbow",
                         "Brick 4 Rainbow","Brick 4 Rainbow","Brick 4 Rainbow","Brick 4 Rainbow","Brick 4 Rainbow","Brick 4 Rainbow",
                         "Brick 2 Rainbow","Brick 2 Rainbow","Brick 2 Rainbow","Brick 2 Rainbow","Brick 2 Rainbow","Brick 2 Rainbow"]
    
    let lightBlocks = ["Brick Light","Brick Light","Brick Light","Brick Light","Brick Light","Brick Light",
                       "Brick Light","Brick Light","Brick Light","Brick Light","Brick Light","Brick Light",
                       "Brick Light","Brick Light","Brick Light","Brick Light","Brick Light","Brick Light",
                       "Brick Light","Brick Light","Brick Light","Brick Light","Brick Light","Brick Light"]
    
    let soccerBlocks = ["Brick_26 Soccer","Brick_27 Soccer","Brick_28 Soccer","Brick_29 Soccer","Brick_30 Soccer","Brick_31 Soccer",
                        "Brick_32 Soccer","Brick_33 Soccer","Brick_34 Soccer","Brick_35 Soccer","Brick_36 Soccer","Brick_37 Soccer",
                        "Brick_38 Soccer","Brick_39 Soccer","Brick_40 Soccer","Brick_41 Soccer","Brick_42 Soccer","Brick_43 Soccer",
                        "Brick_44 Soccer","Brick_45 Soccer","Brick_46 Soccer","Brick_47 Soccer","Brick_48 Soccer","Brick_49 Soccer",]
    
    
    let spaceDustBlocks = ["Brick_violet Dust","Brick_purple Dust","Brick_blue Dust","Brick_blue Dust","Brick_purple Dust","Brick_violet Dust",
                           "Brick_purple Dust","Brick_blue Dust","Brick_green Dust","Brick_green Dust","Brick_blue Dust","Brick_purple Dust",
                           "Brick_purple Dust","Brick_blue Dust","Brick_green Dust","Brick_green Dust","Brick_blue Dust","Brick_purple Dust",
                           "Brick_violet Dust","Brick_purple Dust","Brick_blue Dust","Brick_blue Dust","Brick_purple Dust","Brick_violet Dust",]
    
    let rainAcidBlocks = [ "Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic",
                           "Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic",
                           "Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic",
                           "Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic"]
    
    init (numBricks: Int, row: Int, col: Int , inThisScene: GameScene) {
        
        //classic
        blockclassic = SKSpriteNode(imageNamed: classicblocks[numBricks])
        // Retro Life Skin
        retroLifeSkin = SKSpriteNode(imageNamed: retroLifeBlocks[numBricks])
        // Rainbow Skin
        rainbowSkin = SKSpriteNode(imageNamed: rainbowBlocks[numBricks])
        // Light Skin
        lightSkin = SKSpriteNode(imageNamed: lightBlocks[numBricks])
        // Soccer Skin
        soccerSkin = SKSpriteNode(imageNamed: soccerBlocks[numBricks])
        // SpaceDust Skin
        spaceDustSkin = SKSpriteNode(imageNamed: spaceDustBlocks[numBricks])
        // Acid Rain Skin
        acidRainSkin = SKSpriteNode(imageNamed: rainAcidBlocks[numBricks])
        
        if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone ){
            /// Classic
            //16:9
            blockclassic.size = CGSize(
                width:(blockclassic.size.width * (inThisScene.size.width / blockclassic.size.width ) * (15/100)) ,
                height: (blockclassic.size.height * (inThisScene.size.height / blockclassic.size.height ) * (4/100)))
            blockclassic.physicsBody = SKPhysicsBody(rectangleOf: blockclassic.frame.size)
            blockclassic.physicsBody!.allowsRotation = false
            blockclassic.physicsBody!.friction = 0.0
            blockclassic.physicsBody!.affectedByGravity = false
            blockclassic.physicsBody!.isDynamic = false
            blockclassic.name = BlockCategoryName
            blockclassic.physicsBody!.categoryBitMask = BlockCategory
            blockclassic.zPosition = 2
            //16:9
            blockclassic.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (blockclassic.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((blockclassic.size.height * (237.5/100) ) * CGFloat(row)))
            
            /// Retro Life Skin
            //16:9
            retroLifeSkin.size = CGSize(
                width:(retroLifeSkin.size.width * (inThisScene.size.width / retroLifeSkin.size.width ) * (15/100)) ,
                height: (retroLifeSkin.size.height * (inThisScene.size.height / retroLifeSkin.size.height ) * (4/100)))
            retroLifeSkin.physicsBody = SKPhysicsBody(rectangleOf: retroLifeSkin.frame.size)
            retroLifeSkin.physicsBody!.allowsRotation = false
            retroLifeSkin.physicsBody!.friction = 0.0
            retroLifeSkin.physicsBody!.affectedByGravity = false
            retroLifeSkin.physicsBody!.isDynamic = false
            retroLifeSkin.name = BlockCategoryName
            retroLifeSkin.physicsBody!.categoryBitMask = BlockCategory
            retroLifeSkin.zPosition = 2
            //16:9
            retroLifeSkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (retroLifeSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((retroLifeSkin.size.height * (237.5/100) ) * CGFloat(row)))
            
            /// Rainbow Skin
            //16:9
            rainbowSkin.size = CGSize(
                width:(rainbowSkin.size.width * (inThisScene.size.width / rainbowSkin.size.width ) * (15/100)) ,
                height: (rainbowSkin.size.height * (inThisScene.size.height / rainbowSkin.size.height ) * (4/100)))
            rainbowSkin.physicsBody = SKPhysicsBody(rectangleOf: rainbowSkin.frame.size)
            rainbowSkin.physicsBody!.allowsRotation = false
            rainbowSkin.physicsBody!.friction = 0.0
            rainbowSkin.physicsBody!.affectedByGravity = false
            rainbowSkin.physicsBody!.isDynamic = false
            rainbowSkin.name = BlockCategoryName
            rainbowSkin.physicsBody!.categoryBitMask = BlockCategory
            rainbowSkin.zPosition = 2
            //16:9
            rainbowSkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (rainbowSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((rainbowSkin.size.height * (237.5/100) ) * CGFloat(row)))
            
            /// Light Skin
            //16:9
            lightSkin.size = CGSize(
                width:(lightSkin.size.width * (inThisScene.size.width / lightSkin.size.width ) * (15/100)) ,
                height: (lightSkin.size.height * (inThisScene.size.height / lightSkin.size.height ) * (4/100)))
            lightSkin.physicsBody = SKPhysicsBody(rectangleOf: lightSkin.frame.size)
            lightSkin.physicsBody!.allowsRotation = false
            lightSkin.physicsBody!.friction = 0.0
            lightSkin.physicsBody!.affectedByGravity = false
            lightSkin.physicsBody!.isDynamic = false
            lightSkin.name = BlockCategoryName
            lightSkin.physicsBody!.categoryBitMask = BlockCategory
            lightSkin.zPosition = 2
            //16:9
            lightSkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (lightSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((lightSkin.size.height * (237.5/100) ) * CGFloat(row)))
            
            /// Soccer Skin
            //16:9
            soccerSkin.size = CGSize(
                width:(soccerSkin.size.width * (inThisScene.size.width / soccerSkin.size.width ) * (15/100)) ,
                height: (soccerSkin.size.height * (inThisScene.size.height / soccerSkin.size.height ) * (4/100)))
            soccerSkin.physicsBody = SKPhysicsBody(rectangleOf: soccerSkin.frame.size)
            soccerSkin.physicsBody!.allowsRotation = false
            soccerSkin.physicsBody!.friction = 0.0
            soccerSkin.physicsBody!.affectedByGravity = false
            soccerSkin.physicsBody!.isDynamic = false
            soccerSkin.name = BlockCategoryName
            soccerSkin.physicsBody!.categoryBitMask = BlockCategory
            soccerSkin.zPosition = 2
            //16:9
            soccerSkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (soccerSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((soccerSkin.size.height * (237.5/100) ) * CGFloat(row)))
            
            /// SpaceDust Skin
            //16:9
            spaceDustSkin.size = CGSize(
                width:(spaceDustSkin.size.width * (inThisScene.size.width / spaceDustSkin.size.width ) * (15/100)) ,
                height: (spaceDustSkin.size.height * (inThisScene.size.height / spaceDustSkin.size.height ) * (4/100)))
            spaceDustSkin.physicsBody = SKPhysicsBody(rectangleOf: spaceDustSkin.frame.size)
            spaceDustSkin.physicsBody!.allowsRotation = false
            spaceDustSkin.physicsBody!.friction = 0.0
            spaceDustSkin.physicsBody!.affectedByGravity = false
            spaceDustSkin.physicsBody!.isDynamic = false
            spaceDustSkin.name = BlockCategoryName
            spaceDustSkin.physicsBody!.categoryBitMask = BlockCategory
            spaceDustSkin.zPosition = 2
            //16:9
            spaceDustSkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (spaceDustSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((spaceDustSkin.size.height * (237.5/100) ) * CGFloat(row)))
            
            
            /// Acid Rain Skin
            //16:9
            acidRainSkin.size = CGSize(
                width:(acidRainSkin.size.width * (inThisScene.size.width / acidRainSkin.size.width ) * (15/100)) ,
                height: (acidRainSkin.size.height * (inThisScene.size.height / acidRainSkin.size.height ) * (4/100)))
            acidRainSkin.physicsBody = SKPhysicsBody(rectangleOf: acidRainSkin.frame.size)
            acidRainSkin.physicsBody!.allowsRotation = false
            acidRainSkin.physicsBody!.friction = 0.0
            acidRainSkin.physicsBody!.affectedByGravity = false
            acidRainSkin.physicsBody!.isDynamic = false
            acidRainSkin.name = BlockCategoryName
            acidRainSkin.physicsBody!.categoryBitMask = BlockCategory
            acidRainSkin.zPosition = 2
            //16:9
            acidRainSkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (acidRainSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((acidRainSkin.size.height * (237.5/100) ) * CGFloat(row)))
            
            
        }else{
            /// Classic
            //4:3
            blockclassic.size = CGSize(
                width:(blockclassic.size.width * (inThisScene.size.width / blockclassic.size.width ) * (13.67/100)) ,
                height: (blockclassic.size.height * (inThisScene.size.height / blockclassic.size.height ) * (5.12/100)))
            blockclassic.physicsBody = SKPhysicsBody(rectangleOf: blockclassic.frame.size)
            blockclassic.physicsBody!.allowsRotation = false
            blockclassic.physicsBody!.friction = 0.0
            blockclassic.physicsBody!.affectedByGravity = false
            blockclassic.physicsBody!.isDynamic = false
            blockclassic.name = BlockCategoryName
            blockclassic.physicsBody!.categoryBitMask = BlockCategory
            blockclassic.zPosition = 2
            //4:3
            blockclassic.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (blockclassic.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((blockclassic.size.height * (228.57/100) ) * CGFloat(row)))
            
            /// Retro Life Skin
            //4:3
            retroLifeSkin.size = CGSize(
                width:(retroLifeSkin.size.width * (inThisScene.size.width / retroLifeSkin.size.width ) * (13.67/100)) ,
                height: (retroLifeSkin.size.height * (inThisScene.size.height / retroLifeSkin.size.height ) * (5.12/100)))
            retroLifeSkin.physicsBody = SKPhysicsBody(rectangleOf: retroLifeSkin.frame.size)
            retroLifeSkin.physicsBody!.allowsRotation = false
            retroLifeSkin.physicsBody!.friction = 0.0
            retroLifeSkin.physicsBody!.affectedByGravity = false
            retroLifeSkin.physicsBody!.isDynamic = false
            retroLifeSkin.name = BlockCategoryName
            retroLifeSkin.physicsBody!.categoryBitMask = BlockCategory
            retroLifeSkin.zPosition = 2
            //4:3
            retroLifeSkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (retroLifeSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((retroLifeSkin.size.height * (228.57/100) ) * CGFloat(row)))
            
            /// Rainbow Skin
            //4:3
            rainbowSkin.size = CGSize(
                width:(rainbowSkin.size.width * (inThisScene.size.width / rainbowSkin.size.width ) * (13.67/100)) ,
                height: (rainbowSkin.size.height * (inThisScene.size.height / rainbowSkin.size.height ) * (5.12/100)))
            rainbowSkin.physicsBody = SKPhysicsBody(rectangleOf: rainbowSkin.frame.size)
            rainbowSkin.physicsBody!.allowsRotation = false
            rainbowSkin.physicsBody!.friction = 0.0
            rainbowSkin.physicsBody!.affectedByGravity = false
            rainbowSkin.physicsBody!.isDynamic = false
            rainbowSkin.name = BlockCategoryName
            rainbowSkin.physicsBody!.categoryBitMask = BlockCategory
            rainbowSkin.zPosition = 2
            //4:3
            rainbowSkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (rainbowSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((rainbowSkin.size.height * (228.57/100) ) * CGFloat(row)))
            
            /// Light Skin
            //4:3
            lightSkin.size = CGSize(
                width:(lightSkin.size.width * (inThisScene.size.width / lightSkin.size.width ) * (13.67/100)) ,
                height: (lightSkin.size.height * (inThisScene.size.height / lightSkin.size.height ) * (5.12/100)))
            lightSkin.physicsBody = SKPhysicsBody(rectangleOf: rainbowSkin.frame.size)
            lightSkin.physicsBody!.allowsRotation = false
            lightSkin.physicsBody!.friction = 0.0
            lightSkin.physicsBody!.affectedByGravity = false
            lightSkin.physicsBody!.isDynamic = false
            lightSkin.name = BlockCategoryName
            lightSkin.physicsBody!.categoryBitMask = BlockCategory
            lightSkin.zPosition = 2
            //4:3
            lightSkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (lightSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((lightSkin.size.height * (228.57/100) ) * CGFloat(row)))
            
            /// Soccer Skin
            //4:3
            soccerSkin.size = CGSize(
                width:(soccerSkin.size.width * (inThisScene.size.width / soccerSkin.size.width ) * (13.67/100)) ,
                height: (soccerSkin.size.height * (inThisScene.size.height / soccerSkin.size.height ) * (5.12/100)))
            soccerSkin.physicsBody = SKPhysicsBody(rectangleOf: rainbowSkin.frame.size)
            soccerSkin.physicsBody!.allowsRotation = false
            soccerSkin.physicsBody!.friction = 0.0
            soccerSkin.physicsBody!.affectedByGravity = false
            soccerSkin.physicsBody!.isDynamic = false
            soccerSkin.name = BlockCategoryName
            soccerSkin.physicsBody!.categoryBitMask = BlockCategory
            soccerSkin.zPosition = 2
            //4:3
            soccerSkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (soccerSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((soccerSkin.size.height * (228.57/100) ) * CGFloat(row)))
            
            /// SpaceDust Skin
            //4:3
            spaceDustSkin.size = CGSize(
                width:(spaceDustSkin.size.width * (inThisScene.size.width / spaceDustSkin.size.width ) * (13.67/100)) ,
                height: (spaceDustSkin.size.height * (inThisScene.size.height / spaceDustSkin.size.height ) * (5.12/100)))
            spaceDustSkin.physicsBody = SKPhysicsBody(rectangleOf: spaceDustSkin.frame.size)
            spaceDustSkin.physicsBody!.allowsRotation = false
            spaceDustSkin.physicsBody!.friction = 0.0
            spaceDustSkin.physicsBody!.affectedByGravity = false
            spaceDustSkin.physicsBody!.isDynamic = false
            spaceDustSkin.name = BlockCategoryName
            spaceDustSkin.physicsBody!.categoryBitMask = BlockCategory
            spaceDustSkin.zPosition = 2
            //4:3
            spaceDustSkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (spaceDustSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((spaceDustSkin.size.height * (228.57/100) ) * CGFloat(row)))
            
            
            /// Acid Rain Skin
            //4:3
            acidRainSkin.size = CGSize(
                width:(acidRainSkin.size.width * (inThisScene.size.width / acidRainSkin.size.width ) * (13.67/100)) ,
                height: (acidRainSkin.size.height * (inThisScene.size.height / acidRainSkin.size.height ) * (5.12/100)))
            acidRainSkin.physicsBody = SKPhysicsBody(rectangleOf: acidRainSkin.frame.size)
            acidRainSkin.physicsBody!.allowsRotation = false
            acidRainSkin.physicsBody!.friction = 0.0
            acidRainSkin.physicsBody!.affectedByGravity = false
            acidRainSkin.physicsBody!.isDynamic = false
            acidRainSkin.name = BlockCategoryName
            acidRainSkin.physicsBody!.categoryBitMask = BlockCategory
            acidRainSkin.zPosition = 2
            //4:3
            acidRainSkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (acidRainSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((acidRainSkin.size.height * (228.57/100) ) * CGFloat(row)))
            
            
            
        }//End else
        
    }//END init
    
}//END Struct
