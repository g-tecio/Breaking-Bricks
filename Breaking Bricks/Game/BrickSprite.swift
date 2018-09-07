//
//  BrickSprite.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Luis Reyes. All rights reserved.
//

import SpriteKit
import Device_swift

struct BrickSprite {
    
    let deviceType = UIDevice.current.deviceType
    
    //blocks
    let blockclassic : SKSpriteNode!
    //    let retroLifeSkin : SKSpriteNode!
    //    let rainbowSkin : SKSpriteNode!
    //    let lightSkin : SKSpriteNode!
    //    let soccerSkin : SKSpriteNode!
    
    
    //Array Bricks
    let classicblocks = ["Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic"]
    
    //        let retroLifeBlocks = ["Brick-gray Retro","Brick-red Retro","Brick-gray Retro","Brick-red Retro","Brick-gray Retro",
    //                              "Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro",
    //                              "Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro",
    //                              "Brick-gray Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-gray Retro",
    //                              "Brick-gray Retro","Brick-gray Retro","Brick-red Retro","Brick-gray Retro","Brick-gray Retro"]
    //
    //        let rainbowBlocks = ["Brick 9 Rainbow","Brick 9 Rainbow","Brick 9 Rainbow","Brick 9 Rainbow","Brick 9 Rainbow",
    //                             "Brick 7 Rainbow","Brick 7 Rainbow","Brick 7 Rainbow","Brick 7 Rainbow","Brick 7 Rainbow",
    //                             "Brick 5 Rainbow","Brick 5 Rainbow","Brick 5 Rainbow","Brick 5 Rainbow","Brick 5 Rainbow",
    //                             "Brick 3 Rainbow","Brick 3 Rainbow","Brick 3 Rainbow","Brick 3 Rainbow","Brick 3 Rainbow",
    //                             "Brick 1 Rainbow","Brick 1 Rainbow","Brick 1 Rainbow","Brick 1 Rainbow","Brick 1 Rainbow"]
    //
    //        let lightBlocks = ["Brick Light","Brick Light","Brick Light","Brick Light","Brick Light",
    //                           "Brick Light","Brick Light","Brick Light","Brick Light","Brick Light",
    //                           "Brick Light","Brick Light","Brick Light","Brick Light","Brick Light",
    //                           "Brick Light","Brick Light","Brick Light","Brick Light","Brick Light",
    //                           "Brick Light","Brick Light","Brick Light","Brick Light","Brick Light",]
    //
    //        let soccerBlocks = ["Brick_1 Soccer","Brick_2 Soccer","Brick_3 Soccer","Brick_4 Soccer","Brick_5 Soccer",
    //                            "Brick_6 Soccer","Brick_7 Soccer","Brick_8 Soccer","Brick_9 Soccer","Brick_10 Soccer",
    //                            "Brick_11 Soccer","Brick_12 Soccer","Brick_13 Soccer","Brick_14 Soccer","Brick_15 Soccer",
    //                            "Brick_16 Soccer","Brick_17 Soccer","Brick_18 Soccer","Brick_19 Soccer","Brick_20 Soccer",
    //                            "Brick_21 Soccer","Brick_22 Soccer","Brick_23 Soccer","Brick_24 Soccer","Brick_25 Soccer",]
    
    init (numBricks: Int, row: Int, col: Int , inThisScene: GameScene) {
        
        //classic
        blockclassic = SKSpriteNode(imageNamed: classicblocks[numBricks])
        
        if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone ){
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
                /// Offset value 200px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 18.5/100) + (blockclassic.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value 295px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 84.64/100) - ((blockclassic.size.height * (237.5/100) ) * CGFloat(row)))
        }else{
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
                x: ((inThisScene.size.width * 20.70/100) + (blockclassic.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 87.55/100) - ((blockclassic.size.height * (228.57/100) ) * CGFloat(row)))
        }//End else

        //        // Retro Life Skin
        //        retroLifeSkin = SKSpriteNode(imageNamed: retroLifeBlocks[numBricks])
        //
        //        retroLifeSkin.size = CGSize(width:(retroLifeSkin.size.width * (inThisScene.size.width / retroLifeSkin.size.width ) * (15/100)) , height: (retroLifeSkin.size.height * (inThisScene.size.height / retroLifeSkin.size.height ) * (4/100)))
        //
        //        retroLifeSkin.position = CGPoint(
        //            /// Offset value 200px from the border             Size between bricks             brick col
        //            x: ((inThisScene.size.width * 18.5/100) + (retroLifeSkin.size.width * (106.25/100)) * CGFloat(col))
        //            /// Offset value 295px from the top     Size between bricks leaving room for row6      brick row
        //            ,y: (inThisScene.size.height * 84.64/100) - ((retroLifeSkin.size.height * (237.5/100) ) * CGFloat(row)))
        //
        //        retroLifeSkin.physicsBody = SKPhysicsBody(rectangleOf: retroLifeSkin.frame.size)
        //        retroLifeSkin.physicsBody!.allowsRotation = false
        //        retroLifeSkin.physicsBody!.friction = 0.0
        //        retroLifeSkin.physicsBody!.affectedByGravity = false
        //        retroLifeSkin.physicsBody!.isDynamic = false
        //        retroLifeSkin.name = BlockCategoryName
        //        retroLifeSkin.physicsBody!.categoryBitMask = BlockCategory
        //        retroLifeSkin.zPosition = 2
        //
        //        // Rainbow Skin
        //        rainbowSkin = SKSpriteNode(imageNamed: rainbowBlocks[numBricks])
        //
        //        rainbowSkin.size = CGSize(width:(rainbowSkin.size.width * (inThisScene.size.width / rainbowSkin.size.width ) * (15/100)) , height: (rainbowSkin.size.height * (inThisScene.size.height / rainbowSkin.size.height ) * (4/100)))
        //
        //        rainbowSkin.position = CGPoint(
        //            /// Offset value 200px from the border             Size between bricks             brick col
        //            x: ((inThisScene.size.width * 18.5/100) + (rainbowSkin.size.width * (106.25/100)) * CGFloat(col))
        //            /// Offset value 295px from the top     Size between bricks leaving room for row6      brick row
        //            ,y: (inThisScene.size.height * 84.64/100) - ((rainbowSkin.size.height * (237.5/100) ) * CGFloat(row)))
        //
        //        rainbowSkin.physicsBody = SKPhysicsBody(rectangleOf: rainbowSkin.frame.size)
        //        rainbowSkin.physicsBody!.allowsRotation = false
        //        rainbowSkin.physicsBody!.friction = 0.0
        //        rainbowSkin.physicsBody!.affectedByGravity = false
        //        rainbowSkin.physicsBody!.isDynamic = false
        //        rainbowSkin.name = BlockCategoryName
        //        rainbowSkin.physicsBody!.categoryBitMask = BlockCategory
        //        rainbowSkin.zPosition = 2
        //
        //        // Light Skin
        //        lightSkin = SKSpriteNode(imageNamed: lightBlocks[numBricks])
        //
        //        lightSkin.size = CGSize(width:(lightSkin.size.width * (inThisScene.size.width / lightSkin.size.width ) * (15/100)) , height: (lightSkin.size.height * (inThisScene.size.height / lightSkin.size.height ) * (4/100)))
        //
        //        lightSkin.position = CGPoint(
        //            /// Offset value 200px from the border             Size between bricks             brick col
        //            x: ((inThisScene.size.width * 18.5/100) + (lightSkin.size.width * (106.25/100)) * CGFloat(col))
        //            /// Offset value 295px from the top     Size between bricks leaving room for row6      brick row
        //            ,y: (inThisScene.size.height * 84.64/100) - ((lightSkin.size.height * (237.5/100) ) * CGFloat(row)))
        //
        //        lightSkin.physicsBody = SKPhysicsBody(rectangleOf: lightSkin.frame.size)
        //        lightSkin.physicsBody!.allowsRotation = false
        //        lightSkin.physicsBody!.friction = 0.0
        //        lightSkin.physicsBody!.affectedByGravity = false
        //        lightSkin.physicsBody!.isDynamic = false
        //        lightSkin.name = BlockCategoryName
        //        lightSkin.physicsBody!.categoryBitMask = BlockCategory
        //        lightSkin.zPosition = 2
        //
        //        // Soccer Skin
        //        soccerSkin = SKSpriteNode(imageNamed: soccerBlocks[numBricks])
        //
        //        soccerSkin.size = CGSize(width:(soccerSkin.size.width * (inThisScene.size.width / soccerSkin.size.width ) * (15/100)) ,
        //                                 height: (soccerSkin.size.height * (inThisScene.size.height / soccerSkin.size.height ) * (4/100)))
        //
        //        soccerSkin.position = CGPoint(
        //            /// Offset value 200px from the border             Size between bricks             brick col
        //            x: ((inThisScene.size.width * 18.5/100) + (soccerSkin.size.width * (106.25/100)) * CGFloat(col))
        //            /// Offset value 295px from the top     Size between bricks leaving room for row6      brick row
        //            ,y: (inThisScene.size.height * 84.64/100) - ((soccerSkin.size.height * (237.5/100) ) * CGFloat(row)))
        //
        //        soccerSkin.physicsBody = SKPhysicsBody(rectangleOf: lightSkin.frame.size)
        //        soccerSkin.physicsBody!.allowsRotation = false
        //        soccerSkin.physicsBody!.friction = 0.0
        //        soccerSkin.physicsBody!.affectedByGravity = false
        //        soccerSkin.physicsBody!.isDynamic = false
        //        soccerSkin.name = BlockCategoryName
        //        soccerSkin.physicsBody!.categoryBitMask = BlockCategory
        //        soccerSkin.zPosition = 2
        
    }//END init
}//END Struct
