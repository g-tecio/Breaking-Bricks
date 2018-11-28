//
//  StoreScene.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Cartwheel Galaxy Inc. All rights reserved.
//

import SpriteKit
import GameplayKit
import Device_swift

var costRetroF = 2
var costRainbowF = 3
var costLightF = 1
var costSoccerF = 3
var costSpaceDust = 4
var costAcidF = 3
var costEndTime = 4
var costPumpkin = 3
var costScreamRed = 2
var costScreamGreen = 2
var costDessert = 3
var costClassy = 4
var costUrbanic = 3
var costAutumn = 2
var costOcher = 3
var cost2019 = 2
var costHanukkah = 2
var costSnowflake = 2
var costKwanza = 2
var costNewYear = 3
var costChristmas = 3

//ClassicB
var cost2019B = false
var costHanukkahB = false
var costSnowflakeB = false
var costOcherB = false
var costUrbanicB = false
var costAcidB = false
var costScreamRedB = false
var costEndTimeB = false
var costRetroB = false
var costRainbowB = false
var costLightB = false
var costSoccerB = false
var costSpaceDustB = false
var costPumpkinB = false
var costScreamGreenB = false
var costDessertB = false
var costClassyB = false
var costAutumnB = false
var costKwanzaB = false
var costNewYearB = false
var costChristmasB = false

var storeImages = [
//0-
"ClassicOwned",
//1//18-
"2019Buy",
//2//17-
"HanukkahBuy",
//3//16-
"SnowflakeBuy",
//4-
"OcherBuy",
//5-
"UrbanicBuy",
//6-
"AcidBuy",
//7-
"ScreamRedBuy",
//8-
"EndTimesBuy",
//9-
"RetroBuy",
//10-
"RainbowBuy",
//11-
"LightBuy",
//12-
"SoccerBuy",
//13-
"SpaceDustBuy",
//14-
"PumpkinBuy",
//15-
"ScreamGreenBuy",
//16-
"DessertBuy",
//17-
"ClassyBuy",
//18-
"AutumnBuy",
//19//19
"KwanzaBuy",
//20//20
"NewYearBuy",
//21//21
"ChristmasBuy",
]


var storeImagesiPad = [
"ClassicOwnediPad",
"2019BuyiPad",
"HanukkahBuyiPad",
"SnowflakeBuyiPad",
"OcherBuyiPad",
"UrbanicBuyiPad",
"AcidBuyiPad",
"ScreamRedBuyiPad",
"EndTimesBuyiPad",
"RetroBuyiPad",
"RainbowBuyiPad",
"LightBuyiPad",
"SoccerBuyiPad",
"SpaceDustBuyiPad",
"PumpkinBuyiPad",
"ScreamGreenBuyiPad",
"DessertBuyiPad",
"ClassyBuyiPad",
"AutumnBuyiPad",
"KwanzaBuyiPad",
"NewYearBuyiPad",
"ChristmasBuyiPad",
]

class StoreScene: SKScene, ZCarouselDelegate {
    
    func ZCarouselShowingIndex(_ scrollView: ZCarousel, index: Int) {
        if scrollView == images {
            self.index = index
            print("Showing Image at index \(index)")
            print("Retro",costRetroF)
            print("Rainbow",costRainbowF)
            print("Light",costLightF)
            print("Soccer",costSoccerF)
            print("Space Dust",costSpaceDust)
            print("Acid Raind", costAcidF)
            print("End Time", costEndTime)
            print("Pumpkin", costPumpkin)
            print("Screem Red", costScreamRed)
            print("Screem Red", costScreamGreen)
            print("Dessert", costDessert)
            print("Classy", costClassy)
            print("Urbanic", costUrbanic)
            print("Autumn", costAutumn)
            print("Ocher", costOcher)
            savedValues()
        }
        
    }
    
    let deviceType = UIDevice.current.deviceType
    
    var images: ZCarousel!
    var index = 0
    /// GameViewControl setup as reference to handle SceneStates
    var gameViewController: GameViewController!
    
    /// Game Controls
    var storeControls: StoreControls!
    
    var sceneNumber: Int!
    
    private var lastUpdateTime : TimeInterval = 0
    
    /// Custom Initializer
    init(sceneSize: CGSize, referenceGVC: GameViewController) {
        
        // 2019
        if(cost2019B == true){
            storeImages.remove(at: 1)
            storeImages.insert("2019Owned", at: 1)
        }
        if(cost2019B == true){
            storeImagesiPad.remove(at: 1)
            storeImagesiPad.insert("2019OwnediPad", at: 1)
        }
        //Hanukkah
        if(costHanukkahB == true){
            storeImages.remove(at: 2)
            storeImages.insert("HanukkahOwned", at: 2)
        }
        if(costHanukkahB == true){
            storeImagesiPad.remove(at: 2)
            storeImagesiPad.insert("HanukkahOwnediPad", at: 2)
        }
        //SnowFlake
        if(costSnowflakeB == true){
            storeImages.remove(at: 3)
            storeImages.insert("SnowflakeOwned", at: 3)
        }
        if(costSnowflakeB == true){
            storeImagesiPad.remove(at: 3)
            storeImagesiPad.insert("SnowflakeOwnediPad", at: 3)
        }
        //Ocher
        if(costOcherB == true){
            storeImages.remove(at: 4)
            storeImages.insert("OcherOwned", at: 4)
        }
        if(costOcherB == true){
            storeImagesiPad.remove(at: 4)
            storeImagesiPad.insert("OcherOwnediPad", at: 4)
        }
        //Urbanic
        if(costUrbanicB == true){
            storeImages.remove(at: 5)
            storeImages.insert("UrbanicOwned", at: 5)
        }
        if(costUrbanicB == true){
            storeImagesiPad.remove(at: 5)
            storeImagesiPad.insert("UrbanicOwnediPad", at: 5)
        }
        //Acid
        if(costAcidB == true){
            storeImages.remove(at: 6)
            storeImages.insert("AcidOwned", at: 6)
        }
        if(costAcidB == true){
            storeImagesiPad.remove(at: 6)
            storeImagesiPad.insert("AcidOwnediPad", at: 6)
        }
        //ScreamRed
        if(costScreamRedB == true){
            storeImages.remove(at: 7)
            storeImages.insert("ScreamRedOwned", at: 7)
        }
        if(costScreamRedB == true){
            storeImagesiPad.remove(at: 7)
            storeImagesiPad.insert("ScreamRedOwnediPad", at: 7)
        }
        //EndTimes
        if(costEndTimeB == true){
            storeImages.remove(at: 8)
            storeImages.insert("EndTimeOwned", at: 8)
        }
        if(costEndTimeB == true){
            storeImagesiPad.remove(at: 8)
            storeImagesiPad.insert("EndTimeOwnediPad", at: 8)
        }
        //Retro
        if(costRetroB == true){
            storeImages.remove(at: 9)
            storeImages.insert("RetroOwned", at: 9)
        }
        if(costRetroB == true){
            storeImagesiPad.remove(at: 9)
            storeImagesiPad.insert("RetroOwnediPad", at: 9)
        }
        //Rainbow
        if(costRainbowB == true){
            storeImages.remove(at: 10)
            storeImages.insert("RainbowOwned", at: 10)
        }
        if(costRainbowB == true){
            storeImagesiPad.remove(at: 10)
            storeImagesiPad.insert("RainbowOwnediPad", at: 10)
        }
        //Light
        if(costLightB == true){
            storeImages.remove(at: 11)
            storeImages.insert("LightOwned", at: 11)
        }
        if(costLightB == true){
            storeImagesiPad.remove(at: 11)
            storeImagesiPad.insert("LightOwnediPad", at: 11)
        }
        //Soccer
        if(costSoccerB == true){
            storeImages.remove(at: 12)
            storeImages.insert("SoccerOwned", at: 12)
        }
        if(costSoccerB == true){
            storeImagesiPad.remove(at: 12)
            storeImagesiPad.insert("SoccerOwnediPad", at: 12)
        }
        //SpaceDust
        if(costSpaceDustB == true){
            storeImages.remove(at: 13)
            storeImages.insert("SpaceDustOwned", at: 13)
        }
        if(costSpaceDustB == true){
            storeImagesiPad.remove(at: 13)
            storeImagesiPad.insert("SpaceDustOwnediPad", at: 13)
        }
        //Pumpkin
        if(costPumpkinB == true){
            storeImages.remove(at: 14)
            storeImages.insert("PumpkinOwned", at: 14)
        }
        if(costPumpkinB == true){
            storeImagesiPad.remove(at: 14)
            storeImagesiPad.insert("PumpkinOwnediPad", at: 14)
        }
        //ScreemGreen
        if(costScreamGreenB == true){
            storeImages.remove(at: 15)
            storeImages.insert("ScreamGreenOwned", at: 15)
        }
        if(costScreamGreenB == true){
            storeImagesiPad.remove(at: 15)
            storeImagesiPad.insert("ScreamGreenOwnediPad", at: 15)
        }
        //Dessert
        if(costDessertB == true){
            storeImages.remove(at: 16)
            storeImages.insert("DessertOwned", at: 16)
        }
        if(costDessertB == true){
            storeImagesiPad.remove(at: 16)
            storeImagesiPad.insert("DessertOwnediPad", at: 16)
        }
        //Classy
        if(costClassyB == true){
            storeImages.remove(at: 17)
            storeImages.insert("ClassyOwned", at: 17)
        }
        if(costClassyB == true){
            storeImagesiPad.remove(at: 17)
            storeImagesiPad.insert("ClassyOwnediPad", at: 17)
        }
        //Autumn
        if(costAutumnB == true){
            storeImages.remove(at: 18)
            storeImages.insert("AutumnOwned", at: 18)
        }
        if(costAutumnB == true){
            storeImagesiPad.remove(at: 18)
            storeImagesiPad.insert("AutumnOwnediPad", at: 18)
        }
        //Kwanza
        if(costKwanzaB == true){
            storeImages.remove(at: 19)
            storeImages.insert("KwanzaOwned", at: 19)
        }
        if(costKwanzaB == true){
            storeImagesiPad.remove(at: 19)
            storeImagesiPad.insert("KwanzaOwnediPad", at: 19)
        }
        //NewYear
        if(costNewYearB == true){
            storeImages.remove(at: 20)
            storeImages.insert("NewYearOwned", at: 20)
        }
        if(costNewYearB == true){
            storeImagesiPad.remove(at: 20)
            storeImagesiPad.insert("NewYearOwnediPad", at: 20)
        }
        //Chrismas
        if(costChristmasB == true){
            storeImages.remove(at: 21)
            storeImages.insert("ChristmasOwned", at: 21)
        }
        if(costChristmasB == true){
            storeImagesiPad.remove(at: 21)
            storeImagesiPad.insert("ChristmasOwnediPad", at: 21)
        }

        /// Set reference of GameViewControl
        gameViewController = referenceGVC
        
        costRetroF = 2
        costRainbowF = 3
        costLightF = 1
        costSoccerF = 3
        costSpaceDust = 4
        costAcidF = 3
        costEndTime = 4
        costPumpkin = 3
        costScreamRed = 2
        costScreamGreen = 2
        costDessert = 3
        costClassy = 4
        costUrbanic = 3
        costAutumn = 2
        costOcher = 3
        cost2019 = 2
        costHanukkah = 2
        costSnowflake = 2
        costKwanza = 2
        costNewYear = 3
        costChristmas = 3
        
        /// Create scene from code
        super.init(size: sceneSize)
        
        /// Menu Controls
        storeControls = StoreControls.init(inThisScene: self)
        sceneNumber = 2
        
        /// Load scene
        if let skView = gameViewController.view as! SKView? {
            self.size = skView.bounds.size
            self.scaleMode = .aspectFill
            
            // TODO: Comment or remove before release to App Store
            skView.ignoresSiblingOrder = true
            skView.showsFPS = true
            skView.showsNodeCount = true
        }
    }
    
    /// Included because is a requisite if a custom Init is used
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tappedMe(){
        
        if index == 0{
            if coin >= 0{
                coin = coin - 0
                gameViewController.menuScene.sceneNumber = 0
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
                print("MONEDAS", coin)
                print("Image", index)
            }else{
                print("NO TE ALCANZA POBRETÓN")
            }
        }
        if index == 1{
            if(cost2019B == false){
                if coin >= cost2019{
                    coin = coin - cost2019
                    cost2019B = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 18
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 18
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 2{
            if(costHanukkahB == false){
                if coin >= costHanukkah{
                    coin = coin - costHanukkah
                    costHanukkahB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 17
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 17
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 3{
            if(costSnowflakeB == false){
                if coin >= costSnowflake{
                    coin = coin - costSnowflake
                    costSnowflakeB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 16
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 16
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 4{
            if(costOcherB == false){
                if coin >= costOcher{
                    coin = coin - costOcher
                    costOcherB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 15
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 15
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 5{
            if(costUrbanicB == false){
                if coin >= costUrbanic{
                    coin = coin - costUrbanic
                    costUrbanicB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 13
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 13
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 6{
            if(costAcidB == false){
                if coin >= costAcidF{
                    coin = coin - costAcidF
                    costAcidB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 10
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 10
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 7{
            if(costScreamRedB == false){
                if coin >= costScreamRed{
                    coin = coin - costScreamRed
                    costScreamRedB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 8
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 8
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 8{
            if(costEndTimeB == false){
                if coin >= costEndTime{
                    coin = coin - costEndTime
                    costEndTimeB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 6
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 6
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 9{
            if(costRetroB == false){
                if coin >= costRetroF{
                    coin = coin - costRetroF
                    costRetroB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 1
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            } else{
                gameViewController.menuScene.sceneNumber = 1
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }
        if index == 10{
            if(costRainbowB == false){
                if coin >= costRainbowF{
                    coin = coin - costRainbowF
                    costRainbowB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 2
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 2
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }
        if index == 11{
            if(costLightB == false){
                if coin >= costLightF{
                    coin = coin - costLightF
                    costLightB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 3
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 3
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }
        if index == 12{
            if(costSoccerB == false){
                if coin >= costSoccerF{
                    coin = coin - costSoccerF
                    costSoccerB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 4
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 4
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 13{
            if(costSpaceDustB == false){
                if coin >= costSpaceDust{
                    coin = coin - costSpaceDust
                    costSpaceDustB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 5
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 5
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 14{
            if(costPumpkinB == false){
                if coin >= costPumpkin{
                    coin = coin - costPumpkin
                    costPumpkinB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 7
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 7
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 15{
            if(costScreamGreenB == false){
                if coin >= costScreamGreen{
                    coin = coin - costScreamGreen
                    costScreamGreenB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 9
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 9
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 16{
            if(costDessertB == false){
                if coin >= costDessert{
                    coin = coin - costDessert
                    costDessertB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 11
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 11
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 17{
            if(costClassyB == false){
                if coin >= costClassy{
                    coin = coin - costClassy
                    costClassyB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 12
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 12
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 18{
            if(costAutumnB == false){
                if coin >= costAutumn{
                    coin = coin - costAutumn
                    costAutumnB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 14
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 14
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 19{
            if(costKwanzaB == false){
                if coin >= costKwanza{
                    coin = coin - costKwanza
                    costKwanzaB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 19
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 19
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 20{
            if(costNewYearB == false){
                if coin >= costNewYear{
                    coin = coin - costNewYear
                    costNewYearB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 20
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 20
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 21{
            if(costChristmasB == false){
                if coin >= costChristmas{
                    coin = coin - costChristmas
                    costChristmasB = true
                    savedValues()
                    gameViewController.menuScene.sceneNumber = 21
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 21
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
    }
    
    /// Present Elements to the Scene
    override func didMove(to view: SKView) {
        
        
        index = 0
        savedValues()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tappedMe))
        
        if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone  ){
            //16:9
            images = ZCarousel(frame:
                CGRect(x: (self.view?.frame.size.width)!/4, y: (self.view?.frame.size.height)!/3.84,
                       width: ((self.view?.frame.size.width)!/100)*50,
                       height: ((self.view?.frame.size.height)!/100)*47.08))
            
        }else{
            //4:3
            images = ZCarousel(frame:
                CGRect(x: (self.view?.frame.size.width)!/4, y: (self.view?.frame.size.height)!/3.86,
                       width: ((self.view?.frame.size.width)!/100)*50,
                       height: ((self.view?.frame.size.height)!/100)*48.24))
            
        }
        
        
        images?.ZCdelegate = self
        images.isUserInteractionEnabled = true
        images.addGestureRecognizer(tap)
        
        if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone  ){
            
            images?.addImages(storeImages)
            
        }else{
            images?.addImages(storeImagesiPad)
        }
        
        if let images = images {
            view.addSubview(images)
        }
        
        self.addChild(storeControls.coin)
        self.addChild(storeControls.coinLabel)
        
        if sceneNumber == 0 {
            
            /// Present Label and Button
            self.addChild(storeControls.classicBackground)
            self.addChild(storeControls.menuclassic)
            self.addChild(storeControls.currentclassic)
            
            storeControls.coinLabel.fontColor = .white
            
        }
        if sceneNumber == 1{
            
            /// Present Label and Button
            self.addChild(storeControls.retroLifeSkinBackground)
            self.addChild(storeControls.retroLifeSkinMenu)
            self.addChild(storeControls.retroLifeSkinCurrent)
            
            storeControls.coinLabel.fontColor = .white
            
        }
        if sceneNumber == 2{
            
            /// Present Label and Button
            self.addChild(storeControls.rainbowMenu)
            self.addChild(storeControls.rainbowCurrent)
            self.addChild(storeControls.rainbowBackground)
            
            storeControls.coinLabel.fontColor = .white
            
        }
        if sceneNumber == 3{
            
            /// Present Label and Button
            self.addChild(storeControls.lightMenu)
            self.addChild(storeControls.lightCurrent)
            self.addChild(storeControls.lightBackground)
            
            storeControls.coinLabel.fontColor = UIColor(red:0.54, green:0.54, blue:0.54, alpha:1.0)
        }
        if sceneNumber == 4{
            
            /// Present Label and Button
            self.addChild(storeControls.soccerMenu)
            self.addChild(storeControls.soccerCurrent)
            self.addChild(storeControls.soccerBackground)
            
            storeControls.coinLabel.fontColor = UIColor(red:0.96, green:0.75, blue:0.00, alpha:1.0)
            
        }
        if sceneNumber == 5{
            
            /// Present Label and Button
            self.addChild(storeControls.spaceDustMenu)
            self.addChild(storeControls.spaceDustCurrent)
            self.addChild(storeControls.spaceDustBackground)
            
            storeControls.coinLabel.fontColor = .white
            
        }
        if sceneNumber == 6{
            
            /// Present Label and Button
            self.addChild(storeControls.endTimesMenu)
            self.addChild(storeControls.endTimesCurrent)
            self.addChild(storeControls.endTimesBackground)
            
            storeControls.coinLabel.fontColor = .white
            
        }
        if sceneNumber == 7{
            
            /// Present Label and Button
            self.addChild(storeControls.pumpkinMenu)
            self.addChild(storeControls.pumpkinCurrent)
            self.addChild(storeControls.pumpkinBackground)
            
            storeControls.coinLabel.fontColor = .white
            
        }
        if sceneNumber == 8{
            
            /// Present Label and Button
            self.addChild(storeControls.screamRedMenu)
            self.addChild(storeControls.screamRedCurrent)
            self.addChild(storeControls.screamRedBackground)
            
            storeControls.coinLabel.fontColor = .white
            
        }
        if sceneNumber == 9{
            
            /// Present Label and Button
            self.addChild(storeControls.screamGreenMenu)
            self.addChild(storeControls.screamGreenBackground)
            self.addChild(storeControls.screamGreenCurrent)
            
            storeControls.coinLabel.fontColor = .white
            
        }
        if sceneNumber == 10{
            
            /// Present Label and Button
            self.addChild(storeControls.acidRainMenu)
            self.addChild(storeControls.acidRainCurrent)
            self.addChild(storeControls.acidRainBackground)
            
            storeControls.coinLabel.fontColor = UIColor(red:0.93, green:0.95, blue:0.06, alpha:1.0)
            
        }
        if sceneNumber == 11{
            
            /// Present Label and Button
            self.addChild(storeControls.dessertMenu)
            self.addChild(storeControls.dessertBackground)
            self.addChild(storeControls.dessertCurrent)
            
            storeControls.coinLabel.fontColor = .black
            
        }
        if sceneNumber == 12{
            
            /// Present Label and Button
            self.addChild(storeControls.classyMenu)
            self.addChild(storeControls.classyBackground)
            self.addChild(storeControls.classyCurrent)
            
            storeControls.coinLabel.fontColor = UIColor(red:0.95, green:0.75, blue:0.04, alpha:1.0)
            
        }
        if sceneNumber == 13{
            
            /// Present Label and Button
            self.addChild(storeControls.urbanicMenu)
            self.addChild(storeControls.urbanicBackground)
            self.addChild(storeControls.urbanicCurrent)
            
            storeControls.coinLabel.fontColor = .black
            
        }
        if sceneNumber == 14{
            
            /// Present Label and Button
            self.addChild(storeControls.autumnMenu)
            self.addChild(storeControls.autumnBackground)
            self.addChild(storeControls.autumnCurrent)
            
            storeControls.coinLabel.fontColor = .white
            
        }
        if sceneNumber == 15{
            
            /// Present Label and Button
            self.addChild(storeControls.ocherMenu)
            self.addChild(storeControls.ocherBackground)
            self.addChild(storeControls.ocherCurrent)
            
            storeControls.coinLabel.fontColor = .black
            
        }
        
        if sceneNumber == 15{
            
            /// Present Label and Button
            self.addChild(storeControls.ocherMenu)
            self.addChild(storeControls.ocherBackground)
            self.addChild(storeControls.ocherCurrent)
            
            storeControls.coinLabel.fontColor = .black
            
        }

        storeControls.coinLabel.text = ("\(coin)")
        
    }
    
    func savedValues() {
        
        let userDefaults = UserDefaults.standard
        
        userDefaults.setValue(coin, forKey: "coinsStore")
        
        let coinValue = userDefaults.integer(forKey: "coinsStore")
        
        userDefaults.setValue(costRetroB, forKey: "costRetroB")
        //print("SKIN VALUE costRetroB ", costRetroB)
        userDefaults.setValue(costRainbowB, forKey: "costRainbowB")
        //print("SKIN VALUE costRainbowB ", costRainbowB)
        userDefaults.setValue(costLightB, forKey: "costLightB")
        //print("SKIN VALUE costLightB ", costLightB)
        userDefaults.setValue(costSoccerB, forKey: "costSoccerB")
        //print("SKIN VALUE costSoccerB ", costSoccerB)
        userDefaults.setValue(costSpaceDustB, forKey: "costSpaceDustB")
        
        userDefaults.setValue(costAcidB, forKey: "costAcidB")
        
        userDefaults.setValue(costEndTimeB, forKey: "costEndTimeB")
        
        userDefaults.setValue(costPumpkinB, forKey: "costPumpkinB")

        userDefaults.setValue(costScreamRedB, forKey: "costScreamRedB")
        
        userDefaults.setValue(costScreamGreenB, forKey: "costScreamGreenB")
        
        userDefaults.setValue(costDessertB, forKey: "costDessertB")
        
        userDefaults.setValue(costClassyB, forKey: "costClassyB")
        userDefaults.setValue(costUrbanicB, forKey: "costUrbanicB")
        userDefaults.setValue(costAutumnB, forKey: "costAutumnB")
        userDefaults.setValue(costOcherB, forKey: "costOcherB")
        
    }
    /// Before another Scence will be presented
    override func willMove(from view: SKView) {
        removeAllChildren()
    }
    
    /// Touch event
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let item = atPoint(location)
            
            /// Exit and return to GameScene
            if (item.name == "buttonSprite-Menu") {
                gameViewController.skView.presentScene(gameViewController.menuScene)
                gameViewController.storeScene.sceneNumber = gameViewController.menuScene.sceneNumber
                images.removeFromSuperview()
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
}
