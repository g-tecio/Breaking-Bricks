//
//  StoreScene.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Luis Reyes. All rights reserved.
//

import SpriteKit
import GameplayKit
import Device_swift

var costRetroF: Int = 2
var costRainbowF: Int = 2
var costLightF = 1
var costSoccerF = 3
var costSpaceDust = 3
var costAcidF = 2

var costRetroB = false
var costRainbowB = false
var costLightB = false
var costSoccerB = false
var costSpaceDustB = false
var costAcidB = false

var storeImages = ["RainbowBuy","RetroBuy","ClassicOwned","LightBuy","SoccerBuy",
                   "SpaceDustBuy","AcidBuy"]


var storeImagesiPad = ["RainbowBuyiPad","RetroBuyiPad","ClassicOwnediPad","LightBuyiPad","SoccerBuyiPad"]

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
            savedValues()
        }
        
    }
    
    let deviceType = UIDevice.current.deviceType
    
    var images: ZCarousel!
    var index = 2
    /// GameViewControl setup as reference to handle SceneStates
    var gameViewController: GameViewController!
    
    /// Game Controls
    var storeControls: StoreControls!
    
    var sceneNumber: Int!
    
    private var lastUpdateTime : TimeInterval = 0
    
    /// Custom Initializer
    init(sceneSize: CGSize, referenceGVC: GameViewController) {
        
        // Rainbow
        if(costRainbowB == true){
            storeImages.remove(at: 0)
            storeImages.insert("RainbowOwned", at: 0)
        }
        if(costRainbowB == true){
            storeImagesiPad.remove(at: 0)
            storeImagesiPad.insert("RainbowOwnediPad", at: 0)
        }
        // Retro
        if(costRetroB == true){
            storeImages.remove(at: 1)
            storeImages.insert("RetroOwned", at: 1)
        }
        if(costRetroB == true){
            storeImagesiPad.remove(at: 1)
            storeImagesiPad.insert("RetroOwnediPad", at: 1)
        }
        
        //Light
        if(costLightB == true){
            storeImages.remove(at: 3)
            storeImages.insert("LightOwned", at: 3)
        }
        if(costLightB == true){
            storeImagesiPad.remove(at: 3)
            storeImagesiPad.insert("LightOwnediPad", at: 3)
        }
        
        //Soccer
        if(costSoccerB == true){
            storeImages.remove(at: 4)
            storeImages.insert("SoccerOwned", at: 4)
        }
        if(costSoccerB == true){
            storeImagesiPad.remove(at: 4)
            storeImagesiPad.insert("SoccerOwnediPad", at: 4)
        }
        
        //Space Dust
        if(costSpaceDustB == true){
            storeImages.remove(at: 5)
            storeImages.insert("SpaceDustOwned", at: 5)
        }
        //        if(costSpaceDustB == true){
        //            storeImagesiPad.remove(at: 5)
        //            storeImagesiPad.insert("SpaceDustOwnediPad", at: 5)
        //        }
        
        //Acid Rain
        if(costAcidB == true){
            storeImages.remove(at: 6)
            storeImages.insert("AcidOwned", at: 6)
        }
        //        if(costAcidB == true){
        //            storeImagesiPad.remove(at: 6)
        //            storeImagesiPad.insert("AcidOwnediPad", at: 6)
        //        }
        
        
        /// Set reference of GameViewControl
        gameViewController = referenceGVC
        
        costRetroF = 2
        costRainbowF = 2
        costLightF = 1
        costSoccerF = 3
        costSpaceDust = 3
        costAcidF = 2
        
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
    
    @objc func tappedMe()
    {
        if index == 0{
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
                    if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone  ){
                        if(costRainbowB == true){
                            storeImages.remove(at: 0)
                            storeImages.insert("RainbowOwned", at: 0)
                        }
                    }else{
                        if(costRainbowB == true){
                            storeImagesiPad.remove(at: 0)
                            storeImagesiPad.insert("RainbowOwnediPad", at: 0)
                        }
                    }
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 2
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
            
        }
        if index == 1{
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
                    if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone  ){
                        if(costRetroB == true){
                            storeImages.remove(at: 1)
                            storeImages.insert("RetroOwned", at: 1)
                        }
                    }else{
                        if(costRetroB == true){
                            storeImagesiPad.remove(at: 1)
                            storeImagesiPad.insert("RetroOwnediPad", at: 1)
                        }
                    }
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            } else{
                gameViewController.menuScene.sceneNumber = 1
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }
        if index == 2{
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
        if index == 3{
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
                    if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone){
                        if(costLightB == true){
                            storeImages.remove(at: 3)
                            storeImages.insert("LightOwned", at: 3)
                        }
                    }else{
                        if(costLightB == true){
                            storeImagesiPad.remove(at: 3)
                            storeImagesiPad.insert("LightOwnediPad", at: 3)
                        }
                    }
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 3
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
            
            
        }
        if index == 4{
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
                    if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone){
                        if(costSoccerB == true){
                            storeImages.remove(at: 4)
                            storeImages.insert("SoccerOwned", at: 4)
                        }
                    }else{
                        if(costSoccerB == true){
                            storeImagesiPad.remove(at: 4)
                            storeImagesiPad.insert("SoccerOwnediPad", at: 4)
                        }
                    }
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 4
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
        if index == 5{
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
                    if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone){
                        if(costSpaceDustB == true){
                            storeImages.remove(at: 5)
                            storeImages.insert("SpaceDustOwned", at: 5)
                        }
                    }else{
                        if(costSpaceDustB == true){
                            storeImagesiPad.remove(at: 5)
                            storeImagesiPad.insert("SpaceDustOwnediPad", at: 5)
                        }
                    }
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 5
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
                    gameViewController.menuScene.sceneNumber = 6
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                    images.removeFromSuperview()
                    print("MONEDAS", coin)
                    print("Image", index)
                    if (deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini || UIDevice.current.userInterfaceIdiom == .phone){
                        if(costAcidB == true){
                            storeImages.remove(at: 6)
                            storeImages.insert("AcidOwned", at: 6)
                        }
                    }else{
                        if(costAcidB == true){
                            storeImagesiPad.remove(at: 6)
                            storeImagesiPad.insert("AcidOwnediPad", at: 6)
                        }
                    }
                }else{
                    print("NO TE ALCANZA POBRETÓN")
                }
            }else{
                gameViewController.menuScene.sceneNumber = 6
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
            }
        }//END if
    }
    
    /// Present Elements to the Scene
    override func didMove(to view: SKView) {
        
        
        index = 2
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
            self.addChild(storeControls.acidRainMenu)
            self.addChild(storeControls.acidRainCurrent)
            self.addChild(storeControls.acidRainBackground)
            
            storeControls.coinLabel.fontColor = UIColor(red:0.93, green:0.95, blue:0.06, alpha:1.0)
            
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
