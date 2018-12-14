//
//  BrickSprite.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Cartwheel Galaxy Inc. All rights reserved.
//

import SpriteKit
import Device_swift

struct BrickSprite {
    
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
    
    //December Update
    let newYearSkin: SKSpriteNode!
    let dosmildiecinueveSkin: SKSpriteNode!
    let kwanzaSkin: SKSpriteNode!
    let hanukkahSkin: SKSpriteNode!
    let icyBlueSkin: SKSpriteNode!
    let snowflakeSkin: SKSpriteNode!
    let christmasSkin: SKSpriteNode!

    
    //Array Bricks
    let classicblocks = ["Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic",
                         "Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic",
                         "Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic",
                         "Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic",
                         "Brick Classic","Brick Classic","Brick Classic","Brick Classic","Brick Classic"]
    
    let retroLifeBlocks = ["Brick-gray Retro","Brick-red Retro","Brick-gray Retro","Brick-red Retro","Brick-gray Retro",
                           "Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro",
                           "Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro",
                           "Brick-gray Retro","Brick-red Retro","Brick-red Retro","Brick-red Retro","Brick-gray Retro",
                           "Brick-gray Retro","Brick-gray Retro","Brick-red Retro","Brick-gray Retro","Brick-gray Retro"]
    
    let rainbowBlocks = ["Brick 9 Rainbow","Brick 9 Rainbow","Brick 9 Rainbow","Brick 9 Rainbow","Brick 9 Rainbow",
                         "Brick 7 Rainbow","Brick 7 Rainbow","Brick 7 Rainbow","Brick 7 Rainbow","Brick 7 Rainbow",
                         "Brick 5 Rainbow","Brick 5 Rainbow","Brick 5 Rainbow","Brick 5 Rainbow","Brick 5 Rainbow",
                         "Brick 3 Rainbow","Brick 3 Rainbow","Brick 3 Rainbow","Brick 3 Rainbow","Brick 3 Rainbow",
                         "Brick 1 Rainbow","Brick 1 Rainbow","Brick 1 Rainbow","Brick 1 Rainbow","Brick 1 Rainbow"]
    
    let lightBlocks = ["Brick Light","Brick Light","Brick Light","Brick Light","Brick Light",
                       "Brick Light","Brick Light","Brick Light","Brick Light","Brick Light",
                       "Brick Light","Brick Light","Brick Light","Brick Light","Brick Light",
                       "Brick Light","Brick Light","Brick Light","Brick Light","Brick Light",
                       "Brick Light","Brick Light","Brick Light","Brick Light","Brick Light",]
    
    let soccerBlocks = ["Brick_1 Soccer","Brick_2 Soccer","Brick_3 Soccer","Brick_4 Soccer","Brick_5 Soccer",
                        "Brick_6 Soccer","Brick_7 Soccer","Brick_8 Soccer","Brick_9 Soccer","Brick_10 Soccer",
                        "Brick_11 Soccer","Brick_12 Soccer","Brick_13 Soccer","Brick_14 Soccer","Brick_15 Soccer",
                        "Brick_16 Soccer","Brick_17 Soccer","Brick_18 Soccer","Brick_19 Soccer","Brick_20 Soccer",
                        "Brick_21 Soccer","Brick_22 Soccer","Brick_23 Soccer","Brick_24 Soccer","Brick_25 Soccer",]
    
    let spaceDustBlocks = ["Brick_violet Dust","Brick_purple Dust","Brick_blue Dust","Brick_purple Dust","Brick_violet Dust",
                           "Brick_purple Dust","Brick_blue Dust","Brick_green Dust","Brick_blue Dust","Brick_purple Dust",
                           "Brick_blue Dust","Brick_green Dust","Brick_yellow Dust","Brick_green Dust","Brick_blue Dust",
                           "Brick_purple Dust","Brick_blue Dust","Brick_green Dust","Brick_blue Dust","Brick_purple Dust",
                           "Brick_violet Dust","Brick_purple Dust","Brick_blue Dust","Brick_purple Dust","Brick_violet Dust",]
    
    let rainAcidBlocks = [ "Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic",
                           "Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic",
                           "Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic",
                           "Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic",
                           "Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic","Brick Toxic",]
    
    let endTimesBlocks = ["Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times",
                          "Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times",
                          "Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times",
                          "Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times",
                          "Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times","Brick End_Times",]
    
    let pumpkinBlocks = ["Brick_Orange Pumpkin","Brick_Orange Pumpkin","Brick_Orange Pumpkin","Brick_Orange Pumpkin","Brick_Orange Pumpkin",
                         "Brick_Orange Pumpkin","Brick_Yellow Pumpkin","Brick_Orange Pumpkin","Brick_Yellow Pumpkin","Brick_Orange Pumpkin",
                         "Brick_Yellow Pumpkin","Brick_Orange Pumpkin","Brick_Orange Pumpkin","Brick_Orange Pumpkin","Brick_Yellow Pumpkin",
                         "Brick_Orange Pumpkin","Brick_Yellow Pumpkin","Brick_Yellow Pumpkin","Brick_Yellow Pumpkin","Brick_Orange Pumpkin",
                         "Brick_Orange Pumpkin","Brick_Orange Pumpkin","Brick_Orange Pumpkin","Brick_Orange Pumpkin","Brick_Orange Pumpkin"]
    
    let screamRedBlocks = ["Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red",
                           "Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red",
                           "Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red",
                           "Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red",
                           "Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red","Brick Scream_Red"]
    
    let screamGreenBlocks = ["Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green",
                             "Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green",
                             "Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green",
                             "Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green",
                             "Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green","Brick Scream_Green",]
    
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
                       "BrickUp Ocher","BrickUp Ocher","BrickUp Ocher","BrickUp Ocher","BrickUp Ocher",
                       "BrickMiddle Ocher","BrickMiddle Ocher","BrickMiddle Ocher","BrickMiddle Ocher","BrickMiddle Ocher",
                       "BrickDown Ocher","BrickDown Ocher","BrickDown Ocher","BrickDown Ocher","BrickDown Ocher",
                       "BrickDown Ocher","BrickDown Ocher","BrickDown Ocher","BrickDown Ocher","BrickDown Ocher",]
    
    let christmasBlocks = ["Chrismas 1","Chrismas 1","Chrismas 1","Chrismas 1","Chrismas 1",
                           "Chrismas 1","Chrismas 1","Chrismas 1","Chrismas 1","Chrismas 1",
                           "Chrismas 2","Chrismas 2","Chrismas 2","Chrismas 2","Chrismas 2",
                           "Chrismas 3","Chrismas 3","Chrismas 3","Chrismas 3","Chrismas 3",
                           "Chrismas 3","Chrismas 3","Chrismas 3","Chrismas 3","Chrismas 3",]
    
    
    let snowflakeBlocks = ["Brick Snowflake","Brick Snowflake","Brick Snowflake","Brick Snowflake","Brick Snowflake",
                           "Brick Snowflake","Brick Snowflake","Brick Snowflake","Brick Snowflake","Brick Snowflake",
                           "Brick Snowflake","Brick Snowflake","Brick Snowflake","Brick Snowflake","Brick Snowflake",
                           "Brick Snowflake","Brick Snowflake","Brick Snowflake","Brick Snowflake","Brick Snowflake",
                           "Brick Snowflake","Brick Snowflake","Brick Snowflake","Brick Snowflake","Brick Snowflake",]
    
    let icyBlueBlocks = ["BrickUp IcyBlue","BrickUp IcyBlue","BrickUp IcyBlue","BrickUp IcyBlue","BrickUp IcyBlue",
                         "BrickUp IcyBlue","BrickUp IcyBlue","BrickUp IcyBlue","BrickUp IcyBlue","BrickUp IcyBlue",
                         "BrickMiddle IcyBlue","BrickMiddle IcyBlue","BrickMiddle IcyBlue","BrickMiddle IcyBlue","BrickMiddle IcyBlue",
                         "BrickDown IcyBlue","BrickDown IcyBlue","BrickDown IcyBlue","BrickDown IcyBlue","BrickDown IcyBlue",
                         "BrickDown IcyBlue","BrickDown IcyBlue","BrickDown IcyBlue","BrickDown IcyBlue","BrickDown IcyBlue",]
    
    let hanukkahBlocks = ["BrickYellow Hanukkah","BrickYellow Hanukkah","BrickYellow Hanukkah","BrickYellow Hanukkah","BrickYellow Hanukkah",
                          "BrickBlue Hanukkah","BrickBlue Hanukkah","BrickBlue Hanukkah","BrickBlue Hanukkah","BrickBlue Hanukkah",
                          "BrickBlue Hanukkah","BrickBlue Hanukkah","BrickBlue Hanukkah","BrickBlue Hanukkah","BrickBlue Hanukkah",
                          "BrickBrown Hanukkah","BrickBrown Hanukkah","BrickBrown Hanukkah","BrickBrown Hanukkah","BrickBrown Hanukkah",
                          "BrickBrown Hanukkah","BrickBrown Hanukkah","BrickBrown Hanukkah","BrickBrown Hanukkah","BrickBrown Hanukkah",]

    let kwanzaBlocks = ["BrickRed Kwanza","BrickRed Kwanza","BrickBlack Kwanza","BrickGreen Kwanza","BrickGreen Kwanza",
                        "BrickRed Kwanza","BrickRed Kwanza","BrickBlack Kwanza","BrickGreen Kwanza","BrickGreen Kwanza",
                        "BrickRed Kwanza","BrickRed Kwanza","BrickBlack Kwanza","BrickGreen Kwanza","BrickGreen Kwanza",
                        "BrickRed Kwanza","BrickRed Kwanza","BrickBlack Kwanza","BrickGreen Kwanza","BrickGreen Kwanza",
                        "BrickRed Kwanza","BrickRed Kwanza","BrickBlack Kwanza","BrickGreen Kwanza","BrickGreen Kwanza",]

    let dosmildiecinueveBlocks = ["BrickBlue 2019","BrickBlue 2019","BrickBlue 2019","BrickBlue 2019","BrickBlue 2019",
                                  "BrickGreen 2019","BrickGreen 2019","BrickGreen 2019","BrickGreen 2019","BrickGreen 2019",
                                  "BrickWhite 2019","BrickWhite 2019","BrickWhite 2019","BrickWhite 2019","BrickWhite 2019",
                                  "BrickGreen 2019","BrickGreen 2019","BrickGreen 2019","BrickGreen 2019","BrickGreen 2019",
                                  "BrickBlue 2019","BrickBlue 2019","BrickBlue 2019","BrickBlue 2019","BrickBlue 2019",]
    
    let newYearBlocks = ["BrickRed NewYear","BrickOrange NewYear","BrickLightYellow NewYear","BrickOrange NewYear","BrickRed NewYear",
                         "BrickOrange NewYear","BrickYellow NewYear","BrickLightYellow NewYear","BrickYellow NewYear","BrickOrange NewYear",
                         "BrickYellow NewYear","BrickLightYellow NewYear","Brick White NewYear","BrickLightYellow NewYear","BrickYellow NewYear",
                         "BrickOrange NewYear","BrickYellow NewYear","BrickLightYellow NewYear","BrickYellow NewYear","BrickOrange NewYear",
                         "BrickRed NewYear","BrickOrange NewYear","BrickLightYellow NewYear","BrickOrange NewYear","BrickRed NewYear",]
    
    init (numBricks: Int, row: Int, col: Int , inThisScene: GameScene) {
        
        /// Classic
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
        // Scream Green Skin
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
        // Chrismas
        christmasSkin = SKSpriteNode(imageNamed: christmasBlocks[numBricks])
        // snow flake
        snowflakeSkin  = SKSpriteNode(imageNamed: snowflakeBlocks[numBricks])
        //Icy Blue
        icyBlueSkin = SKSpriteNode(imageNamed: icyBlueBlocks[numBricks])
        //Hanukkah
        hanukkahSkin = SKSpriteNode(imageNamed: hanukkahBlocks[numBricks])
        //Kwanza
        kwanzaSkin = SKSpriteNode(imageNamed: kwanzaBlocks[numBricks])
        //2019
        dosmildiecinueveSkin = SKSpriteNode(imageNamed: dosmildiecinueveBlocks[numBricks])
        //NewYear
        newYearSkin = SKSpriteNode(imageNamed: newYearBlocks[numBricks])
        
        if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone ){
            
            let screenSize = UIScreen.main.bounds
            let screenWidth = screenSize.width
            let screenHeight = screenSize.height
            print(screenSize)
            print("Width: \(screenWidth)")
            print("Height: \(screenHeight)")
            
            if (screenSize == CGRect(x: 0.0, y: 0.0, width: 375.0, height: 812.0)) {
                print("iphoneX y XS EXAMPLE")
                
                /// Classic
                blockclassic.size = CGSize(
                    width: (170 * (inThisScene.size.width / 170)*(((170/1125)*100)/100)),
                    height: (85 * (inThisScene.size.height / 85)*(((85/2436 )*100)/100))
                )
                blockclassic.position = CGPoint(
                    x: ((inThisScene.size.width * 17.51/100) + (blockclassic.size.width * (106.25/100)) * CGFloat(col))
                    ,y: (inThisScene.size.height * 81.52/100) - ((blockclassic.size.height * (225/100) ) * CGFloat(row))
                )
                
                retroLifeSkin.size = blockclassic.size
                retroLifeSkin.position = blockclassic.position
                
                rainbowSkin.size = blockclassic.size
                rainbowSkin.position = blockclassic.position
                
                lightSkin.size = blockclassic.size
                lightSkin.position = blockclassic.position
                
                soccerSkin.size = blockclassic.size
                soccerSkin.position = blockclassic.position
                
                spaceDustSkin.size = blockclassic.size
                spaceDustSkin.position = blockclassic.position
                
                acidRainSkin.size = blockclassic.size
                acidRainSkin.position = blockclassic.position
                
                endTimesSkin.size = blockclassic.size
                endTimesSkin.position = blockclassic.position
                
                pumpkinSkin.size = blockclassic.size
                pumpkinSkin.position = blockclassic.position
                
                screamRedSkin.size = blockclassic.size
                screamRedSkin.position = blockclassic.position
                
                screamGreenSkin.size = blockclassic.size
                screamGreenSkin.position = blockclassic.position
                
                dessertSkin.size = blockclassic.size
                dessertSkin.position = blockclassic.position
                
                classySkin.size = blockclassic.size
                classySkin.position = blockclassic.position
                
                urbanicSkin.size = blockclassic.size
                urbanicSkin.position = blockclassic.position
                
                autumnSkin.size = blockclassic.size
                autumnSkin.position = blockclassic.position
                
                ocherSkin.size = blockclassic.size
                ocherSkin.position = blockclassic.position
                
                christmasSkin.size = blockclassic.size
                christmasSkin.position = blockclassic.position
                
                snowflakeSkin.size = blockclassic.size
                snowflakeSkin.position = blockclassic.position
                
                icyBlueSkin.size = blockclassic.size
                icyBlueSkin.position = blockclassic.position
                
                hanukkahSkin.size = blockclassic.size
                hanukkahSkin.position = blockclassic.position
                
                kwanzaSkin.size = blockclassic.size
                kwanzaSkin.position = blockclassic.position
                
                dosmildiecinueveSkin.size = blockclassic.size
                dosmildiecinueveSkin.position = blockclassic.position
                
                newYearSkin.size = blockclassic.size
                newYearSkin.position = blockclassic.position
                
            }// END iphoneX y XS EXAMPLE

            if (screenSize == CGRect(x: 0.0, y: 0.0, width: 414.0, height: 896.0)) {
                print("iphoneXR y MAX")
                
                /// Classic
                blockclassic.size = CGSize(
                    width: (180 * (inThisScene.size.width / 180)*(((180/1242)*100)/100)),
                    height: (90 * (inThisScene.size.height / 90)*(((90/2688 )*100)/100))
                )
                blockclassic.position = CGPoint(
                    x: ((inThisScene.size.width * 17.67/100) + (blockclassic.size.width * (106.25/100)) * CGFloat(col))
                    ,y: (inThisScene.size.height * 80.65/100) - ((blockclassic.size.height * (225/100) ) * CGFloat(row))
                )
                
                retroLifeSkin.size = blockclassic.size
                retroLifeSkin.position = blockclassic.position
                
                rainbowSkin.size = blockclassic.size
                rainbowSkin.position = blockclassic.position
                
                lightSkin.size = blockclassic.size
                lightSkin.position = blockclassic.position
                
                soccerSkin.size = blockclassic.size
                soccerSkin.position = blockclassic.position
                
                spaceDustSkin.size = blockclassic.size
                spaceDustSkin.position = blockclassic.position
                
                acidRainSkin.size = blockclassic.size
                acidRainSkin.position = blockclassic.position
                
                endTimesSkin.size = blockclassic.size
                endTimesSkin.position = blockclassic.position
                
                pumpkinSkin.size = blockclassic.size
                pumpkinSkin.position = blockclassic.position
                
                screamRedSkin.size = blockclassic.size
                screamRedSkin.position = blockclassic.position
                
                screamGreenSkin.size = blockclassic.size
                screamGreenSkin.position = blockclassic.position
                
                dessertSkin.size = blockclassic.size
                dessertSkin.position = blockclassic.position
                
                classySkin.size = blockclassic.size
                classySkin.position = blockclassic.position
                
                urbanicSkin.size = blockclassic.size
                urbanicSkin.position = blockclassic.position
                
                autumnSkin.size = blockclassic.size
                autumnSkin.position = blockclassic.position
                
                ocherSkin.size = blockclassic.size
                ocherSkin.position = blockclassic.position
                
                christmasSkin.size = blockclassic.size
                christmasSkin.position = blockclassic.position
                
                snowflakeSkin.size = blockclassic.size
                snowflakeSkin.position = blockclassic.position
                
                icyBlueSkin.size = blockclassic.size
                icyBlueSkin.position = blockclassic.position
                
                hanukkahSkin.size = blockclassic.size
                hanukkahSkin.position = blockclassic.position
                
                kwanzaSkin.size = blockclassic.size
                kwanzaSkin.position = blockclassic.position
                
                dosmildiecinueveSkin.size = blockclassic.size
                dosmildiecinueveSkin.position = blockclassic.position
                
                newYearSkin.size = blockclassic.size
                newYearSkin.position = blockclassic.position
            }// END iphoneXR y MAX

            if (screenSize == CGRect(x: 0.0, y: 0.0, width: 320.0, height: 568.0)) || (screenSize == CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0)) || (screenSize == CGRect(x: 0.0, y: 0.0, width: 414.0, height: 736.0)) {
                
                /// Classic
                //16:9
                blockclassic.size = CGSize(
                    width:(blockclassic.size.width * (inThisScene.size.width / blockclassic.size.width ) * (15/100)) ,
                    height: (blockclassic.size.height * (inThisScene.size.height / blockclassic.size.height ) * (4/100)))
                //16:9
                blockclassic.position = CGPoint(
                    /// Offset value 200px from the border             Size between bricks             brick col
                    x: ((inThisScene.size.width * 18.5/100) + (blockclassic.size.width * (106.25/100)) * CGFloat(col))
                    /// Offset value 295px from the top     Size between bricks leaving room for row6      brick row
                    ,y: (inThisScene.size.height * 84.64/100) - ((blockclassic.size.height * (237.5/100) ) * CGFloat(row))
                )
                
                retroLifeSkin.size = blockclassic.size
                retroLifeSkin.position = blockclassic.position
                
                rainbowSkin.size = blockclassic.size
                rainbowSkin.position = blockclassic.position
                
                lightSkin.size = blockclassic.size
                lightSkin.position = blockclassic.position
                
                soccerSkin.size = blockclassic.size
                soccerSkin.position = blockclassic.position
                
                spaceDustSkin.size = blockclassic.size
                spaceDustSkin.position = blockclassic.position
                
                acidRainSkin.size = blockclassic.size
                acidRainSkin.position = blockclassic.position
                
                endTimesSkin.size = blockclassic.size
                endTimesSkin.position = blockclassic.position
                
                pumpkinSkin.size = blockclassic.size
                pumpkinSkin.position = blockclassic.position
                
                screamRedSkin.size = blockclassic.size
                screamRedSkin.position = blockclassic.position
                
                screamGreenSkin.size = blockclassic.size
                screamGreenSkin.position = blockclassic.position
                
                dessertSkin.size = blockclassic.size
                dessertSkin.position = blockclassic.position
                
                classySkin.size = blockclassic.size
                classySkin.position = blockclassic.position
                
                urbanicSkin.size = blockclassic.size
                urbanicSkin.position = blockclassic.position
                
                autumnSkin.size = blockclassic.size
                autumnSkin.position = blockclassic.position
                
                ocherSkin.size = blockclassic.size
                ocherSkin.position = blockclassic.position
                
                christmasSkin.size = blockclassic.size
                christmasSkin.position = blockclassic.position
                
                snowflakeSkin.size = blockclassic.size
                snowflakeSkin.position = blockclassic.position
                
                icyBlueSkin.size = blockclassic.size
                icyBlueSkin.position = blockclassic.position
                
                hanukkahSkin.size = blockclassic.size
                hanukkahSkin.position = blockclassic.position
                
                kwanzaSkin.size = blockclassic.size
                kwanzaSkin.position = blockclassic.position
                
                dosmildiecinueveSkin.size = blockclassic.size
                dosmildiecinueveSkin.position = blockclassic.position
                
                newYearSkin.size = blockclassic.size
                newYearSkin.position = blockclassic.position
                
        }// END 16:9
            
        }else{
            /// Classic
            //4:3
            blockclassic.size = CGSize(
                width:(blockclassic.size.width * (inThisScene.size.width / blockclassic.size.width ) * (13.67/100)) ,
                height: (blockclassic.size.height * (inThisScene.size.height / blockclassic.size.height ) * (5.12/100)))

            //4:3
            blockclassic.position = CGPoint(
                /// Offset value px from the border             Size between bricks             brick col
                x: ((inThisScene.size.width * 20.70/100) + (blockclassic.size.width * (106.25/100)) * CGFloat(col))
                /// Offset value px from the top     Size between bricks leaving room for row6      brick row
                ,y: (inThisScene.size.height * 87.55/100) - ((blockclassic.size.height * (228.57/100) ) * CGFloat(row)))
 
            retroLifeSkin.size = blockclassic.size
            retroLifeSkin.position = blockclassic.position
            
            rainbowSkin.size = blockclassic.size
            rainbowSkin.position = blockclassic.position
            
            lightSkin.size = blockclassic.size
            lightSkin.position = blockclassic.position
            
            soccerSkin.size = blockclassic.size
            soccerSkin.position = blockclassic.position
            
            spaceDustSkin.size = blockclassic.size
            spaceDustSkin.position = blockclassic.position
            
            acidRainSkin.size = blockclassic.size
            acidRainSkin.position = blockclassic.position
            
            endTimesSkin.size = blockclassic.size
            endTimesSkin.position = blockclassic.position
            
            pumpkinSkin.size = blockclassic.size
            pumpkinSkin.position = blockclassic.position
            
            screamRedSkin.size = blockclassic.size
            screamRedSkin.position = blockclassic.position
            
            screamGreenSkin.size = blockclassic.size
            screamGreenSkin.position = blockclassic.position
            
            dessertSkin.size = blockclassic.size
            dessertSkin.position = blockclassic.position
            
            classySkin.size = blockclassic.size
            classySkin.position = blockclassic.position
            
            urbanicSkin.size = blockclassic.size
            urbanicSkin.position = blockclassic.position
            
            autumnSkin.size = blockclassic.size
            autumnSkin.position = blockclassic.position
            
            ocherSkin.size = blockclassic.size
            ocherSkin.position = blockclassic.position
            
            christmasSkin.size = blockclassic.size
            christmasSkin.position = blockclassic.position
            
            snowflakeSkin.size = blockclassic.size
            snowflakeSkin.position = blockclassic.position
            
            icyBlueSkin.size = blockclassic.size
            icyBlueSkin.position = blockclassic.position
            
            hanukkahSkin.size = blockclassic.size
            hanukkahSkin.position = blockclassic.position
            
            kwanzaSkin.size = blockclassic.size
            kwanzaSkin.position = blockclassic.position
            
            dosmildiecinueveSkin.size = blockclassic.size
            dosmildiecinueveSkin.position = blockclassic.position
            
            newYearSkin.size = blockclassic.size
            newYearSkin.position = blockclassic.position
        }//End else
        
        //Classic
        blockclassic.physicsBody = SKPhysicsBody(rectangleOf: blockclassic.frame.size)
        blockclassic.physicsBody!.allowsRotation = false
        blockclassic.physicsBody!.friction = 0.0
        blockclassic.physicsBody!.affectedByGravity = false
        blockclassic.physicsBody!.isDynamic = false
        blockclassic.name = BlockCategoryName
        blockclassic.physicsBody!.categoryBitMask = BlockCategory
        blockclassic.zPosition = 2

        //Retro
        retroLifeSkin.physicsBody = SKPhysicsBody(rectangleOf: retroLifeSkin.frame.size)
        retroLifeSkin.physicsBody!.allowsRotation = false
        retroLifeSkin.physicsBody!.friction = 0.0
        retroLifeSkin.physicsBody!.affectedByGravity = false
        retroLifeSkin.physicsBody!.isDynamic = false
        retroLifeSkin.name = BlockCategoryName
        retroLifeSkin.physicsBody!.categoryBitMask = BlockCategory
        retroLifeSkin.zPosition = 2
        
        //Rainbow
        rainbowSkin.physicsBody = SKPhysicsBody(rectangleOf: rainbowSkin.frame.size)
        rainbowSkin.physicsBody!.allowsRotation = false
        rainbowSkin.physicsBody!.friction = 0.0
        rainbowSkin.physicsBody!.affectedByGravity = false
        rainbowSkin.physicsBody!.isDynamic = false
        rainbowSkin.name = BlockCategoryName
        rainbowSkin.physicsBody!.categoryBitMask = BlockCategory
        rainbowSkin.zPosition = 2
        
        //Light
        lightSkin.physicsBody = SKPhysicsBody(rectangleOf: lightSkin.frame.size)
        lightSkin.physicsBody!.allowsRotation = false
        lightSkin.physicsBody!.friction = 0.0
        lightSkin.physicsBody!.affectedByGravity = false
        lightSkin.physicsBody!.isDynamic = false
        lightSkin.name = BlockCategoryName
        lightSkin.physicsBody!.categoryBitMask = BlockCategory
        lightSkin.zPosition = 2
        
        //Soccer
        soccerSkin.physicsBody = SKPhysicsBody(rectangleOf: soccerSkin.frame.size)
        soccerSkin.physicsBody!.allowsRotation = false
        soccerSkin.physicsBody!.friction = 0.0
        soccerSkin.physicsBody!.affectedByGravity = false
        soccerSkin.physicsBody!.isDynamic = false
        soccerSkin.name = BlockCategoryName
        soccerSkin.physicsBody!.categoryBitMask = BlockCategory
        soccerSkin.zPosition = 2
        
        //Space Dust
        spaceDustSkin.physicsBody = SKPhysicsBody(rectangleOf: spaceDustSkin.frame.size)
        spaceDustSkin.physicsBody!.allowsRotation = false
        spaceDustSkin.physicsBody!.friction = 0.0
        spaceDustSkin.physicsBody!.affectedByGravity = false
        spaceDustSkin.physicsBody!.isDynamic = false
        spaceDustSkin.name = BlockCategoryName
        spaceDustSkin.physicsBody!.categoryBitMask = BlockCategory
        spaceDustSkin.zPosition = 2
        
        //Acid
        acidRainSkin.physicsBody = SKPhysicsBody(rectangleOf: acidRainSkin.frame.size)
        acidRainSkin.physicsBody!.allowsRotation = false
        acidRainSkin.physicsBody!.friction = 0.0
        acidRainSkin.physicsBody!.affectedByGravity = false
        acidRainSkin.physicsBody!.isDynamic = false
        acidRainSkin.name = BlockCategoryName
        acidRainSkin.physicsBody!.categoryBitMask = BlockCategory
        acidRainSkin.zPosition = 2
        
        //End Times
        endTimesSkin.physicsBody = SKPhysicsBody(rectangleOf: endTimesSkin.frame.size)
        endTimesSkin.physicsBody!.allowsRotation = false
        endTimesSkin.physicsBody!.friction = 0.0
        endTimesSkin.physicsBody!.affectedByGravity = false
        endTimesSkin.physicsBody!.isDynamic = false
        endTimesSkin.name = BlockCategoryName
        endTimesSkin.physicsBody!.categoryBitMask = BlockCategory
        endTimesSkin.zPosition = 2
        
        //Pumpkin
        pumpkinSkin.physicsBody = SKPhysicsBody(rectangleOf: pumpkinSkin.frame.size)
        pumpkinSkin.physicsBody!.allowsRotation = false
        pumpkinSkin.physicsBody!.friction = 0.0
        pumpkinSkin.physicsBody!.affectedByGravity = false
        pumpkinSkin.physicsBody!.isDynamic = false
        pumpkinSkin.name = BlockCategoryName
        pumpkinSkin.physicsBody!.categoryBitMask = BlockCategory
        pumpkinSkin.zPosition = 2
        
        //Scream Red
        screamRedSkin.physicsBody = SKPhysicsBody(rectangleOf: screamRedSkin.frame.size)
        screamRedSkin.physicsBody!.allowsRotation = false
        screamRedSkin.physicsBody!.friction = 0.0
        screamRedSkin.physicsBody!.affectedByGravity = false
        screamRedSkin.physicsBody!.isDynamic = false
        screamRedSkin.name = BlockCategoryName
        screamRedSkin.physicsBody!.categoryBitMask = BlockCategory
        screamRedSkin.zPosition = 2
        
        //Scream Green
        screamGreenSkin.physicsBody = SKPhysicsBody(rectangleOf: screamGreenSkin.frame.size)
        screamGreenSkin.physicsBody!.allowsRotation = false
        screamGreenSkin.physicsBody!.friction = 0.0
        screamGreenSkin.physicsBody!.affectedByGravity = false
        screamGreenSkin.physicsBody!.isDynamic = false
        screamGreenSkin.name = BlockCategoryName
        screamGreenSkin.physicsBody!.categoryBitMask = BlockCategory
        screamGreenSkin.zPosition = 2
        
        //Dessert
        dessertSkin.physicsBody = SKPhysicsBody(rectangleOf: dessertSkin.frame.size)
        dessertSkin.physicsBody!.allowsRotation = false
        dessertSkin.physicsBody!.friction = 0.0
        dessertSkin.physicsBody!.affectedByGravity = false
        dessertSkin.physicsBody!.isDynamic = false
        dessertSkin.name = BlockCategoryName
        dessertSkin.physicsBody!.categoryBitMask = BlockCategory
        dessertSkin.zPosition = 2
        
        //Classy
        classySkin.physicsBody = SKPhysicsBody(rectangleOf: classySkin.frame.size)
        classySkin.physicsBody!.allowsRotation = false
        classySkin.physicsBody!.friction = 0.0
        classySkin.physicsBody!.affectedByGravity = false
        classySkin.physicsBody!.isDynamic = false
        classySkin.name = BlockCategoryName
        classySkin.physicsBody!.categoryBitMask = BlockCategory
        classySkin.zPosition = 2
        
        //Urbanic
        urbanicSkin.physicsBody = SKPhysicsBody(rectangleOf: urbanicSkin.frame.size)
        urbanicSkin.physicsBody!.allowsRotation = false
        urbanicSkin.physicsBody!.friction = 0.0
        urbanicSkin.physicsBody!.affectedByGravity = false
        urbanicSkin.physicsBody!.isDynamic = false
        urbanicSkin.name = BlockCategoryName
        urbanicSkin.physicsBody!.categoryBitMask = BlockCategory
        urbanicSkin.zPosition = 2
        
        //Autumn
        autumnSkin.physicsBody = SKPhysicsBody(rectangleOf: autumnSkin.frame.size)
        autumnSkin.physicsBody!.allowsRotation = false
        autumnSkin.physicsBody!.friction = 0.0
        autumnSkin.physicsBody!.affectedByGravity = false
        autumnSkin.physicsBody!.isDynamic = false
        autumnSkin.name = BlockCategoryName
        autumnSkin.physicsBody!.categoryBitMask = BlockCategory
        autumnSkin.zPosition = 2
        
        //Ocher
        ocherSkin.physicsBody = SKPhysicsBody(rectangleOf: ocherSkin.frame.size)
        ocherSkin.physicsBody!.allowsRotation = false
        ocherSkin.physicsBody!.friction = 0.0
        ocherSkin.physicsBody!.affectedByGravity = false
        ocherSkin.physicsBody!.isDynamic = false
        ocherSkin.name = BlockCategoryName
        ocherSkin.physicsBody!.categoryBitMask = BlockCategory
        ocherSkin.zPosition = 2
        
        //Chrismas
        christmasSkin.physicsBody = SKPhysicsBody(rectangleOf: christmasSkin.frame.size)
        christmasSkin.physicsBody!.allowsRotation = false
        christmasSkin.physicsBody!.friction = 0.0
        christmasSkin.physicsBody!.affectedByGravity = false
        christmasSkin.physicsBody!.isDynamic = false
        christmasSkin.name = BlockCategoryName
        christmasSkin.physicsBody!.categoryBitMask = BlockCategory
        christmasSkin.zPosition = 2
        
        //SnowFlake
        snowflakeSkin.physicsBody = SKPhysicsBody(rectangleOf: snowflakeSkin.frame.size)
        snowflakeSkin.physicsBody!.allowsRotation = false
        snowflakeSkin.physicsBody!.friction = 0.0
        snowflakeSkin.physicsBody!.affectedByGravity = false
        snowflakeSkin.physicsBody!.isDynamic = false
        snowflakeSkin.name = BlockCategoryName
        snowflakeSkin.physicsBody!.categoryBitMask = BlockCategory
        snowflakeSkin.zPosition = 2
        
        //IcyBlue
        icyBlueSkin.physicsBody = SKPhysicsBody(rectangleOf: icyBlueSkin.frame.size)
        icyBlueSkin.physicsBody!.allowsRotation = false
        icyBlueSkin.physicsBody!.friction = 0.0
        icyBlueSkin.physicsBody!.affectedByGravity = false
        icyBlueSkin.physicsBody!.isDynamic = false
        icyBlueSkin.name = BlockCategoryName
        icyBlueSkin.physicsBody!.categoryBitMask = BlockCategory
        icyBlueSkin.zPosition = 2
        
        //Hannuka
        hanukkahSkin.physicsBody = SKPhysicsBody(rectangleOf: hanukkahSkin.frame.size)
        hanukkahSkin.physicsBody!.allowsRotation = false
        hanukkahSkin.physicsBody!.friction = 0.0
        hanukkahSkin.physicsBody!.affectedByGravity = false
        hanukkahSkin.physicsBody!.isDynamic = false
        hanukkahSkin.name = BlockCategoryName
        hanukkahSkin.physicsBody!.categoryBitMask = BlockCategory
        hanukkahSkin.zPosition = 2
        
        //Kwanza
        kwanzaSkin.physicsBody = SKPhysicsBody(rectangleOf: kwanzaSkin.frame.size)
        kwanzaSkin.physicsBody!.allowsRotation = false
        kwanzaSkin.physicsBody!.friction = 0.0
        kwanzaSkin.physicsBody!.affectedByGravity = false
        kwanzaSkin.physicsBody!.isDynamic = false
        kwanzaSkin.name = BlockCategoryName
        kwanzaSkin.physicsBody!.categoryBitMask = BlockCategory
        kwanzaSkin.zPosition = 2
        
        //2019
        dosmildiecinueveSkin.physicsBody = SKPhysicsBody(rectangleOf: dosmildiecinueveSkin.frame.size)
        dosmildiecinueveSkin.physicsBody!.allowsRotation = false
        dosmildiecinueveSkin.physicsBody!.friction = 0.0
        dosmildiecinueveSkin.physicsBody!.affectedByGravity = false
        dosmildiecinueveSkin.physicsBody!.isDynamic = false
        dosmildiecinueveSkin.name = BlockCategoryName
        dosmildiecinueveSkin.physicsBody!.categoryBitMask = BlockCategory
        dosmildiecinueveSkin.zPosition = 2
        
        //New Year
        newYearSkin.physicsBody = SKPhysicsBody(rectangleOf: newYearSkin.frame.size)
        newYearSkin.physicsBody!.allowsRotation = false
        newYearSkin.physicsBody!.friction = 0.0
        newYearSkin.physicsBody!.affectedByGravity = false
        newYearSkin.physicsBody!.isDynamic = false
        newYearSkin.name = BlockCategoryName
        newYearSkin.physicsBody!.categoryBitMask = BlockCategory
        newYearSkin.zPosition = 2
        
    }//END init
}//END Struct
