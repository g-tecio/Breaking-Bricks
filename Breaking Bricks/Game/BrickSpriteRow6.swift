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
    let endTimesSkin: SKSpriteNode!
    let pumpkinSkin: SKSpriteNode!
    let screamRedSkin: SKSpriteNode!
    let screamGreenSkin: SKSpriteNode!
    let dessertSkin: SKSpriteNode!
    let classySkin: SKSpriteNode!
    let urbanicSkin: SKSpriteNode!
    let autumnSkin: SKSpriteNode!
    let ocherSkin: SKSpriteNode!
    
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
    
    let endTimesBlocks = ["Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times",
                          "Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times",
                          "Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times",
                          "Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times"]
    
    let pumpkinBlocks = [ "Brick_Orange Pumpkin","Brick_Yellow Pumpkin","Brick_Orange Pumpkin","Brick_Orange Pumpkin","Brick_Yellow Pumpkin", "Brick_Orange Pumpkin",
                          "Brick_Orange Pumpkin","Brick_Orange Pumpkin","Brick_Orange Pumpkin","Brick_Orange Pumpkin","Brick_Orange Pumpkin","Brick_Orange Pumpkin",
                          "Brick_Orange Pumpkin","Brick_Yellow Pumpkin","Brick_Yellow Pumpkin","Brick_Yellow Pumpkin","Brick_Yellow Pumpkin","Brick_Orange Pumpkin",
                          "Brick_Orange Pumpkin","Brick_Orange Pumpkin","Brick_Yellow Pumpkin","Brick_Yellow Pumpkin","Brick_Orange Pumpkin","Brick_Orange Pumpkin",]

    let screamRedBlocks = ["Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red",
                           "Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red",
                           "Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red",
                           "Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red"]

    let screamGreenBlocks = ["Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green",
                             "Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green",
                             "Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green",
                             "Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green"]
    
    let dessertBlocks = ["Brick Dessert","Brick Dessert","Brick Dessert","Brick Dessert","Brick Dessert",
                         "Brick Dessert","Brick Dessert","Brick Dessert","Brick Dessert","Brick Dessert",
                         "Brick Dessert","Brick Dessert","Brick Dessert","Brick Dessert","Brick Dessert",
                         "Brick Dessert","Brick Dessert","Brick Dessert","Brick Dessert","Brick Dessert",
                         "Brick Dessert","Brick Dessert","Brick Dessert","Brick Dessert","Brick Dessert",]
    
    let classyBlocks = ["Brick Classy","Brick Classy","Brick Classy","Brick Classy","Brick Classy",
                        "Brick Classy","Brick Classy","Brick Classy","Brick Classy","Brick Classy",
                        "Brick Classy","Brick Classy","Brick Classy","Brick Classy","Brick Classy",
                        "Brick Classy","Brick Classy","Brick Classy","Brick Classy","Brick Classy",
                        "Brick Classy","Brick Classy","Brick Classy","Brick Classy","Brick Classy",]
    
    let urbanicBlocks = ["Brick Urbanic","Brick Urbanic","Brick Urbanic","Brick Urbanic","Brick Urbanic",
                         "Brick Urbanic","Brick Urbanic","Brick Urbanic","Brick Urbanic","Brick Urbanic",
                         "Brick Urbanic","Brick Urbanic","Brick Urbanic","Brick Urbanic","Brick Urbanic",
                         "Brick Urbanic","Brick Urbanic","Brick Urbanic","Brick Urbanic","Brick Urbanic",
                         "Brick Urbanic","Brick Urbanic","Brick Urbanic","Brick Urbanic","Brick Urbanic",]
    
    let autumnBlocks = ["Brick Autumn","Brick Autumn","Brick Autumn","Brick Autumn","Brick Autumn",
                        "Brick Autumn","Brick Autumn","Brick Autumn","Brick Autumn","Brick Autumn",
                        "Brick Autumn","Brick Autumn","Brick Autumn","Brick Autumn","Brick Autumn",
                        "Brick Autumn","Brick Autumn","Brick Autumn","Brick Autumn","Brick Autumn",
                        "Brick Autumn","Brick Autumn","Brick Autumn","Brick Autumn","Brick Autumn",]
    let ocherBlocks = ["BrickUp Ocher","BrickUp Ocher","BrickUp Ocher","BrickUp Ocher","BrickUp Ocher",
                       "BrickUp Ocher",
                       "BrickMiddle Ocher","BrickMiddle Ocher","BrickMiddle Ocher","BrickMiddle Ocher","BrickMiddle Ocher","BrickMiddle Ocher",
                       "BrickMiddle Ocher","BrickMiddle Ocher","BrickMiddle Ocher","BrickMiddle Ocher","BrickMiddle Ocher","BrickMiddle Ocher",
                       "BrickDown Ocher","BrickDown Ocher","BrickDown Ocher","BrickDown Ocher","BrickDown Ocher",
                       "BrickDown Ocher",]
    
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
        // End Times Skin
        endTimesSkin = SKSpriteNode(imageNamed: endTimesBlocks[numBricks])
        // Pumpkin Skin
        pumpkinSkin = SKSpriteNode(imageNamed: pumpkinBlocks[numBricks])
        // Scream Red Skin
        screamRedSkin = SKSpriteNode(imageNamed: screamRedBlocks[numBricks])
        // Scream Red Skin
        screamGreenSkin = SKSpriteNode(imageNamed: screamGreenBlocks[numBricks])
        // Scream Green Skin
        dessertSkin = SKSpriteNode(imageNamed: dessertBlocks[numBricks])
        // Classy Skin
        classySkin = SKSpriteNode(imageNamed: classyBlocks[numBricks])
        // Urbanic Skin
        urbanicSkin = SKSpriteNode(imageNamed: urbanicBlocks[numBricks])
        // Autumn Skin
        autumnSkin = SKSpriteNode(imageNamed: autumnBlocks[numBricks])
        // Ocher Skin
        ocherSkin = SKSpriteNode(imageNamed: ocherBlocks[numBricks])

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
            
            /// End Times Skin
            //16:9
            endTimesSkin.size = CGSize(
                width:(endTimesSkin.size.width * (inThisScene.size.width / endTimesSkin.size.width ) * (15/100)) ,
                height: (endTimesSkin.size.height * (inThisScene.size.height / endTimesSkin.size.height ) * (4/100)))
            endTimesSkin.physicsBody = SKPhysicsBody(rectangleOf: endTimesSkin.frame.size)
            endTimesSkin.physicsBody!.allowsRotation = false
            endTimesSkin.physicsBody!.friction = 0.0
            endTimesSkin.physicsBody!.affectedByGravity = false
            endTimesSkin.physicsBody!.isDynamic = false
            endTimesSkin.name = BlockCategoryName
            endTimesSkin.physicsBody!.categoryBitMask = BlockCategory
            endTimesSkin.zPosition = 2
            //16:9
            endTimesSkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (endTimesSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((endTimesSkin.size.height * (237.5/100) ) * CGFloat(row)))
            
            /// Pumpkin Skin
            //16:9
            pumpkinSkin.size = CGSize(
                width:(pumpkinSkin.size.width * (inThisScene.size.width / pumpkinSkin.size.width ) * (15/100)) ,
                height: (pumpkinSkin.size.height * (inThisScene.size.height / pumpkinSkin.size.height ) * (4/100)))
            pumpkinSkin.physicsBody = SKPhysicsBody(rectangleOf: pumpkinSkin.frame.size)
            pumpkinSkin.physicsBody!.allowsRotation = false
            pumpkinSkin.physicsBody!.friction = 0.0
            pumpkinSkin.physicsBody!.affectedByGravity = false
            pumpkinSkin.physicsBody!.isDynamic = false
            pumpkinSkin.name = BlockCategoryName
            pumpkinSkin.physicsBody!.categoryBitMask = BlockCategory
            pumpkinSkin.zPosition = 2
            //16:9
            pumpkinSkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (pumpkinSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((pumpkinSkin.size.height * (237.5/100) ) * CGFloat(row)))
            
            /// Scream Red Skin
            //16:9
            screamRedSkin.size = CGSize(
                width:(screamRedSkin.size.width * (inThisScene.size.width / screamRedSkin.size.width ) * (15/100)) ,
                height: (screamRedSkin.size.height * (inThisScene.size.height / screamRedSkin.size.height ) * (4/100)))
            screamRedSkin.physicsBody = SKPhysicsBody(rectangleOf: screamRedSkin.frame.size)
            screamRedSkin.physicsBody!.allowsRotation = false
            screamRedSkin.physicsBody!.friction = 0.0
            screamRedSkin.physicsBody!.affectedByGravity = false
            screamRedSkin.physicsBody!.isDynamic = false
            screamRedSkin.name = BlockCategoryName
            screamRedSkin.physicsBody!.categoryBitMask = BlockCategory
            screamRedSkin.zPosition = 2
            //16:9
            screamRedSkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (screamRedSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((screamRedSkin.size.height * (237.5/100) ) * CGFloat(row)))
            
            /// Scream Red Skin
            //16:9
            screamGreenSkin.size = CGSize(
                width:(screamGreenSkin.size.width * (inThisScene.size.width / screamGreenSkin.size.width ) * (15/100)) ,
                height: (screamGreenSkin.size.height * (inThisScene.size.height / screamGreenSkin.size.height ) * (4/100)))
            screamGreenSkin.physicsBody = SKPhysicsBody(rectangleOf: screamGreenSkin.frame.size)
            screamGreenSkin.physicsBody!.allowsRotation = false
            screamGreenSkin.physicsBody!.friction = 0.0
            screamGreenSkin.physicsBody!.affectedByGravity = false
            screamGreenSkin.physicsBody!.isDynamic = false
            screamGreenSkin.name = BlockCategoryName
            screamGreenSkin.physicsBody!.categoryBitMask = BlockCategory
            screamGreenSkin.zPosition = 2
            //16:9
            screamGreenSkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (screamGreenSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((screamGreenSkin.size.height * (237.5/100) ) * CGFloat(row)))
            
            /// Dessert Skin
            //16:9
            dessertSkin.size = CGSize(
                width:(dessertSkin.size.width * (inThisScene.size.width / dessertSkin.size.width ) * (15/100)) ,
                height: (dessertSkin.size.height * (inThisScene.size.height / dessertSkin.size.height ) * (4/100)))
            dessertSkin.physicsBody = SKPhysicsBody(rectangleOf: dessertSkin.frame.size)
            dessertSkin.physicsBody!.allowsRotation = false
            dessertSkin.physicsBody!.friction = 0.0
            dessertSkin.physicsBody!.affectedByGravity = false
            dessertSkin.physicsBody!.isDynamic = false
            dessertSkin.name = BlockCategoryName
            dessertSkin.physicsBody!.categoryBitMask = BlockCategory
            dessertSkin.zPosition = 2
            //16:9
            dessertSkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (dessertSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((dessertSkin.size.height * (237.5/100) ) * CGFloat(row)))
            
            /// Classy Skin
            //16:9
            classySkin.size = CGSize(
                width:(classySkin.size.width * (inThisScene.size.width / classySkin.size.width ) * (15/100)) ,
                height: (classySkin.size.height * (inThisScene.size.height / classySkin.size.height ) * (4/100)))
            classySkin.physicsBody = SKPhysicsBody(rectangleOf: classySkin.frame.size)
            classySkin.physicsBody!.allowsRotation = false
            classySkin.physicsBody!.friction = 0.0
            classySkin.physicsBody!.affectedByGravity = false
            classySkin.physicsBody!.isDynamic = false
            classySkin.name = BlockCategoryName
            classySkin.physicsBody!.categoryBitMask = BlockCategory
            classySkin.zPosition = 2
            //16:9
            classySkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (classySkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((classySkin.size.height * (237.5/100) ) * CGFloat(row)))
            
            /// Urbanic Skin
            //16:9
            urbanicSkin.size = CGSize(
                width:(urbanicSkin.size.width * (inThisScene.size.width / urbanicSkin.size.width ) * (15/100)) ,
                height: (urbanicSkin.size.height * (inThisScene.size.height / urbanicSkin.size.height ) * (4/100)))
            urbanicSkin.physicsBody = SKPhysicsBody(rectangleOf: urbanicSkin.frame.size)
            urbanicSkin.physicsBody!.allowsRotation = false
            urbanicSkin.physicsBody!.friction = 0.0
            urbanicSkin.physicsBody!.affectedByGravity = false
            urbanicSkin.physicsBody!.isDynamic = false
            urbanicSkin.name = BlockCategoryName
            urbanicSkin.physicsBody!.categoryBitMask = BlockCategory
            urbanicSkin.zPosition = 2
            //16:9
            urbanicSkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (urbanicSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((urbanicSkin.size.height * (237.5/100) ) * CGFloat(row)))
            
            /// Autumn Skin
            //16:9
            autumnSkin.size = CGSize(
                width:(autumnSkin.size.width * (inThisScene.size.width / autumnSkin.size.width ) * (15/100)) ,
                height: (autumnSkin.size.height * (inThisScene.size.height / autumnSkin.size.height ) * (4/100)))
            autumnSkin.physicsBody = SKPhysicsBody(rectangleOf: autumnSkin.frame.size)
            autumnSkin.physicsBody!.allowsRotation = false
            autumnSkin.physicsBody!.friction = 0.0
            autumnSkin.physicsBody!.affectedByGravity = false
            autumnSkin.physicsBody!.isDynamic = false
            autumnSkin.name = BlockCategoryName
            autumnSkin.physicsBody!.categoryBitMask = BlockCategory
            autumnSkin.zPosition = 2
            //16:9
            autumnSkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (autumnSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((autumnSkin.size.height * (237.5/100) ) * CGFloat(row)))
            
            /// Ocher Skin
            //16:9
            ocherSkin.size = CGSize(
                width:(ocherSkin.size.width * (inThisScene.size.width / ocherSkin.size.width ) * (15/100)) ,
                height: (ocherSkin.size.height * (inThisScene.size.height / ocherSkin.size.height ) * (4/100)))
            ocherSkin.physicsBody = SKPhysicsBody(rectangleOf: ocherSkin.frame.size)
            ocherSkin.physicsBody!.allowsRotation = false
            ocherSkin.physicsBody!.friction = 0.0
            ocherSkin.physicsBody!.affectedByGravity = false
            ocherSkin.physicsBody!.isDynamic = false
            ocherSkin.name = BlockCategoryName
            ocherSkin.physicsBody!.categoryBitMask = BlockCategory
            ocherSkin.zPosition = 2
            //16:9
            ocherSkin.position = CGPoint(
                /// Offset value 115px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 10.5/100) + (ocherSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 385px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 79.95/100) - ((ocherSkin.size.height * (237.5/100) ) * CGFloat(row)))
            
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
            
            /// End Times Skin
            //4:3
            endTimesSkin.size = CGSize(
                width:(endTimesSkin.size.width * (inThisScene.size.width / endTimesSkin.size.width ) * (13.67/100)) ,
                height: (endTimesSkin.size.height * (inThisScene.size.height / endTimesSkin.size.height ) * (5.12/100)))
            endTimesSkin.physicsBody = SKPhysicsBody(rectangleOf: endTimesSkin.frame.size)
            endTimesSkin.physicsBody!.allowsRotation = false
            endTimesSkin.physicsBody!.friction = 0.0
            endTimesSkin.physicsBody!.affectedByGravity = false
            endTimesSkin.physicsBody!.isDynamic = false
            endTimesSkin.name = BlockCategoryName
            endTimesSkin.physicsBody!.categoryBitMask = BlockCategory
            endTimesSkin.zPosition = 2
            //4:3
            endTimesSkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (endTimesSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((endTimesSkin.size.height * (228.57/100) ) * CGFloat(row)))
            
            /// Pumpkin Skin
            //4:3
            pumpkinSkin.size = CGSize(
                width:(pumpkinSkin.size.width * (inThisScene.size.width / pumpkinSkin.size.width ) * (13.67/100)) ,
                height: (pumpkinSkin.size.height * (inThisScene.size.height / pumpkinSkin.size.height ) * (5.12/100)))
            pumpkinSkin.physicsBody = SKPhysicsBody(rectangleOf: pumpkinSkin.frame.size)
            pumpkinSkin.physicsBody!.allowsRotation = false
            pumpkinSkin.physicsBody!.friction = 0.0
            pumpkinSkin.physicsBody!.affectedByGravity = false
            pumpkinSkin.physicsBody!.isDynamic = false
            pumpkinSkin.name = BlockCategoryName
            pumpkinSkin.physicsBody!.categoryBitMask = BlockCategory
            pumpkinSkin.zPosition = 2
            //4:3
            pumpkinSkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (pumpkinSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((pumpkinSkin.size.height * (228.57/100) ) * CGFloat(row)))
            
            /// Scream Red Skin
            //4:3
            screamRedSkin.size = CGSize(
                width:(screamRedSkin.size.width * (inThisScene.size.width / screamRedSkin.size.width ) * (13.67/100)) ,
                height: (screamRedSkin.size.height * (inThisScene.size.height / screamRedSkin.size.height ) * (5.12/100)))
            screamRedSkin.physicsBody = SKPhysicsBody(rectangleOf: screamRedSkin.frame.size)
            screamRedSkin.physicsBody!.allowsRotation = false
            screamRedSkin.physicsBody!.friction = 0.0
            screamRedSkin.physicsBody!.affectedByGravity = false
            screamRedSkin.physicsBody!.isDynamic = false
            screamRedSkin.name = BlockCategoryName
            screamRedSkin.physicsBody!.categoryBitMask = BlockCategory
            screamRedSkin.zPosition = 2
            //4:3
            screamRedSkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (screamRedSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((screamRedSkin.size.height * (228.57/100) ) * CGFloat(row)))
            
            /// Scream Green Skin
            //4:3
            screamGreenSkin.size = CGSize(
                width:(screamGreenSkin.size.width * (inThisScene.size.width / screamGreenSkin.size.width ) * (13.67/100)) ,
                height: (screamGreenSkin.size.height * (inThisScene.size.height / screamGreenSkin.size.height ) * (5.12/100)))
            screamGreenSkin.physicsBody = SKPhysicsBody(rectangleOf: screamGreenSkin.frame.size)
            screamGreenSkin.physicsBody!.allowsRotation = false
            screamGreenSkin.physicsBody!.friction = 0.0
            screamGreenSkin.physicsBody!.affectedByGravity = false
            screamGreenSkin.physicsBody!.isDynamic = false
            screamGreenSkin.name = BlockCategoryName
            screamGreenSkin.physicsBody!.categoryBitMask = BlockCategory
            screamGreenSkin.zPosition = 2
            //4:3
            screamGreenSkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (screamGreenSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((screamGreenSkin.size.height * (228.57/100) ) * CGFloat(row)))
            
            /// Dessert Skin
            //4:3
            dessertSkin.size = CGSize(
                width:(dessertSkin.size.width * (inThisScene.size.width / dessertSkin.size.width ) * (13.67/100)) ,
                height: (dessertSkin.size.height * (inThisScene.size.height / dessertSkin.size.height ) * (5.12/100)))
            dessertSkin.physicsBody = SKPhysicsBody(rectangleOf: dessertSkin.frame.size)
            dessertSkin.physicsBody!.allowsRotation = false
            dessertSkin.physicsBody!.friction = 0.0
            dessertSkin.physicsBody!.affectedByGravity = false
            dessertSkin.physicsBody!.isDynamic = false
            dessertSkin.name = BlockCategoryName
            dessertSkin.physicsBody!.categoryBitMask = BlockCategory
            dessertSkin.zPosition = 2
            //4:3
            dessertSkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (dessertSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((dessertSkin.size.height * (228.57/100) ) * CGFloat(row)))
            
            /// Classy Skin
            //4:3
            classySkin.size = CGSize(
                width:(classySkin.size.width * (inThisScene.size.width / classySkin.size.width ) * (13.67/100)) ,
                height: (classySkin.size.height * (inThisScene.size.height / classySkin.size.height ) * (5.12/100)))
            classySkin.physicsBody = SKPhysicsBody(rectangleOf: classySkin.frame.size)
            classySkin.physicsBody!.allowsRotation = false
            classySkin.physicsBody!.friction = 0.0
            classySkin.physicsBody!.affectedByGravity = false
            classySkin.physicsBody!.isDynamic = false
            classySkin.name = BlockCategoryName
            classySkin.physicsBody!.categoryBitMask = BlockCategory
            classySkin.zPosition = 2
            //4:3
            classySkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (classySkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((classySkin.size.height * (228.57/100) ) * CGFloat(row)))
            
            /// Urbanic Skin
            //4:3
            urbanicSkin.size = CGSize(
                width:(urbanicSkin.size.width * (inThisScene.size.width / urbanicSkin.size.width ) * (13.67/100)) ,
                height: (urbanicSkin.size.height * (inThisScene.size.height / urbanicSkin.size.height ) * (5.12/100)))
            urbanicSkin.physicsBody = SKPhysicsBody(rectangleOf: urbanicSkin.frame.size)
            urbanicSkin.physicsBody!.allowsRotation = false
            urbanicSkin.physicsBody!.friction = 0.0
            urbanicSkin.physicsBody!.affectedByGravity = false
            urbanicSkin.physicsBody!.isDynamic = false
            urbanicSkin.name = BlockCategoryName
            urbanicSkin.physicsBody!.categoryBitMask = BlockCategory
            urbanicSkin.zPosition = 2
            //4:3
            urbanicSkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (urbanicSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((urbanicSkin.size.height * (228.57/100) ) * CGFloat(row)))
            
            /// Autumn Skin
            //4:3
            autumnSkin.size = CGSize(
                width:(autumnSkin.size.width * (inThisScene.size.width / autumnSkin.size.width ) * (13.67/100)) ,
                height: (autumnSkin.size.height * (inThisScene.size.height / autumnSkin.size.height ) * (5.12/100)))
            autumnSkin.physicsBody = SKPhysicsBody(rectangleOf: autumnSkin.frame.size)
            autumnSkin.physicsBody!.allowsRotation = false
            autumnSkin.physicsBody!.friction = 0.0
            autumnSkin.physicsBody!.affectedByGravity = false
            autumnSkin.physicsBody!.isDynamic = false
            autumnSkin.name = BlockCategoryName
            autumnSkin.physicsBody!.categoryBitMask = BlockCategory
            autumnSkin.zPosition = 2
            //4:3
            autumnSkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (autumnSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((autumnSkin.size.height * (228.57/100) ) * CGFloat(row)))

            /// Ocher Skin
            //4:3
            ocherSkin.size = CGSize(
                width:(ocherSkin.size.width * (inThisScene.size.width / ocherSkin.size.width ) * (13.67/100)) ,
                height: (ocherSkin.size.height * (inThisScene.size.height / ocherSkin.size.height ) * (5.12/100)))
            ocherSkin.physicsBody = SKPhysicsBody(rectangleOf: ocherSkin.frame.size)
            ocherSkin.physicsBody!.allowsRotation = false
            ocherSkin.physicsBody!.friction = 0.0
            ocherSkin.physicsBody!.affectedByGravity = false
            ocherSkin.physicsBody!.isDynamic = false
            ocherSkin.name = BlockCategoryName
            ocherSkin.physicsBody!.categoryBitMask = BlockCategory
            ocherSkin.zPosition = 2
            //4:3
            ocherSkin.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 13.38/100) + (ocherSkin.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 81.7/100) - ((ocherSkin.size.height * (228.57/100) ) * CGFloat(row)))
            
        }//End else
    }//END init
}//END Struct
