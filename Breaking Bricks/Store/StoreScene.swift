//
//  StoreScene.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Luis Reyes. All rights reserved.
//

import SpriteKit
import GameplayKit

var costRetro: Int = 0
var costRainbow: Int = 0
var costLight: Int = 0
var costSoccer: Int = 0

class StoreScene: SKScene, ZCarouselDelegate {
    
    func ZCarouselShowingIndex(_ scrollView: ZCarousel, index: Int) {
        if scrollView == images {
            self.index = index
            print("Showing Image at index \(index)")
            print("Retro",costRetro)
            print("Rainbow",costRainbow)
            print("Light",costLight)
            print("Soccer",costSoccer)
        }
        
    }
    

    
    var storeImages = ["ClassicOwned","RetroBuy","RainbowBuy","LightBuy","SoccerBuy"]
    
    
    var images: ZCarousel!
    var index = 2
    /// GameViewControl setup as reference to handle SceneStates
    var gameViewController: GameViewController!
    
    /// Game Controls
    var storeControls: StoreControls!
    
    var sceneNumber: Int!
    var firstload: Bool!
    
    private var lastUpdateTime : TimeInterval = 0
    
    /// Custom Initializer
    init(sceneSize: CGSize, referenceGVC: GameViewController) {
        
        costRetro = 2
        costRainbow = 2
        costLight = 1
        costSoccer = 3
        
        /// Set reference of GameViewControl
        gameViewController = referenceGVC
        
        /// Create scene from code
        super.init(size: sceneSize)
        
        /// Menu Controls
        storeControls = StoreControls.init(inThisScene: self)
        sceneNumber = 0
        firstload = true
        
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
            if coin >= costRetro{
                coin = coin - costRetro
                costRetro = 0
                gameViewController.menuScene.sceneNumber = 1
                gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
                print("MONEDAS", coin)
                print("Image", index)
                
                if(costRetro == 0){
                    storeImages.remove(at: 1)
                    storeImages.insert("RetroOwned", at: 1)
                }
            }else{
                print("NO TE ALCANZA POBRETÓN")
            }
            
        }
        if index == 2{
            if coin >= costRainbow{
                coin = coin - costRainbow
                costRainbow = 0
                gameViewController.menuScene.sceneNumber = 2
                    gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
                print("MONEDAS", coin)
                print("Image", index)
                if(costRainbow == 0){
                    storeImages.remove(at: 2)
                    storeImages.insert("RainbowOwned", at: 2)
                }
            }else{
                print("NO TE ALCANZA POBRETÓN")
            }
            
        }
        if index == 3{
            if coin >= costLight{
                coin = coin - costLight
                costLight = 0
                gameViewController.menuScene.sceneNumber = 3
                   gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
                print("MONEDAS", coin)
                print("Image", index)
                if(costLight == 0){
                    storeImages.remove(at: 3)
                    storeImages.insert("LightOwned", at: 3)
                }
            }else{
                print("NO TE ALCANZA POBRETÓN")
            }
            
        }
        if index == 4{
            if coin >= costSoccer{
                coin = coin - costSoccer
                costSoccer = 0
                gameViewController.menuScene.sceneNumber = 4
                  gameViewController.skView.presentScene(gameViewController.menuScene)
                images.removeFromSuperview()
                print("MONEDAS", coin)
                print("Image", index)
                if(costSoccer == 0){
                    storeImages.remove(at: 4)
                    storeImages.insert("SoccerOwned", at: 4)
                }
            }else{
                print("NO TE ALCANZA POBRETÓN")
            }
            
        }
    }
    
    /// Present Elements to the Scene
    override func didMove(to view: SKView) {

        let tap = UITapGestureRecognizer(target: self, action: #selector(tappedMe))
        
        images = ZCarousel(frame: CGRect(x: (self.view?.frame.size.width)!/5, y: (self.view?.frame.size.height)!/4.25,
                                         width: ((self.view?.frame.size.width)!/5)*3,height: ((self.view?.frame.size.height)!/5)*2.6))
        
        images?.ZCdelegate = self
        images.isUserInteractionEnabled = true
        images.addGestureRecognizer(tap)
        images?.addImages(storeImages)
        
        if let images = images {
            view.addSubview(images)
        }
        
        self.addChild(storeControls.coin)
        self.addChild(storeControls.coinLabel)
        
        if sceneNumber == 0 && firstload == true {
            
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
        
        storeControls.coinLabel.text = ("\(coin)")
        
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
