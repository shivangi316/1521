import Foundation
import Scenes
import Igis


    class Ball: RenderableEntity, MouseMoveHandler{
    let ellipse = Ellipse(center:Point(x:0, y:0), radiusX:30, radiusY:30, fillMode:.fillAndStroke)
    let strokeStyle = StrokeStyle(color:Color(.teal))
    let fillStyle = FillStyle(color:Color(.pink))
    let lineWidth = LineWidth(width:5)
    var velocityX : In 0
    var velocityY : Int = 0

    var targetVelocityX = 0
    var targetVelocityY = 0
    init() { 
    
    // Using a meaningful name can be helpful for debugging
        super.init(name:"Ball")
    }
       
   func changeVelocity(velocityX:Int, velocityY:Int) {
        self.velocityX = velocityX
        self.velocityY = velocityY
   }
    override func calculate(canvasSize:Size) {
        // First, move to the new position
        ellipse.center += Point(x:velocityX, y:velocityY)

        // Form a bounding rectangle around the canvas
        let canvasBoundingRect = Rect(size:canvasSize)

        // Form a bounding rect around the ball (ellipse)
        let ballBoundingRect = Rect(topLeft:Point(x:ellipse.center.x-ellipse.radiusX, y:ellipse.center.y-ellipse.radiusY),
                                    size:Size(width:ellipse.radiusX*2, height:ellipse.radiusY*2))

        // Determine if we've moved outside of the canvas boundary rect
        let tooFarLeft = ballBoundingRect.topLeft.x < canvasBoundingRect.topLeft.x
        let tooFarRight = ballBoundingRect.topLeft.x + ballBoundingRect.size.width > canvasBoundingRect.topLeft.x + canvasBoundingRect.size.width
n
let tooFarUp = ballBoundingRect.topLeft.y < canvasBoundingRect.topLeft.x 
          let tooFarDown = ballBoundingRect.topLeft.y + ballBoundingRect.size.height > canvasBoundingRect.topLeft.y + canvasBoundingRect.size.height

          // If we're too far to the left or right, we bounce the x velocity
          if tooFarLeft || tooFarRight {
              velocityX = -velocityX *2
              
        }

        // If we're too far to the top or bottom, we bound the y velocity
          if tooFarUp || tooFarDown {
              velocityY = -velocity *2
    }

    override func setup(canvasSize: Size, canvas: Canvas) {
    // Position the ellipse at the center of the canvas
    ellipse.center = canvasSize.center
    dispatcher.registerMouseMoveHandler(handler:self)
}

func onMouseMove(globalLocation: Point, movement: Point) {
    ellipse.center = globalLocation
}

override func teardown() {
    dispatcher.registerMouseMoveHandler(handler:self)
}

override func boundingRect() -> Rect {
    return Rect(size: Size(width: Int.max, height: Int.max))
}



override func render(canvas:Canvas) {
    canvas.render(strokeStyle, fillStyle, lineWidth, ellipse)

    let skyrect = Rect(topLeft:Point(x:0, y:0), size:Size(width:1240, height:550))
        let skyrectangle = Rectangle(rect:skyrect)
        let skyfillStyle = FillStyle(color:Color(.lightblue))
        canvas.render(skyfillStyle, skyrectangle)

        let groundrect = Rect(topLeft:Point(x:0, y:550), size:Size(width:1240, height:550))
        let groundrectangle = Rectangle(rect:groundrect)
        let groundfillStyle = FillStyle(color:Color(.green))
        canvas.render(groundfillStyle, groundrectangle)
        
        let buildingrect = Rect(topLeft:Point(x:86, y:375), size:Size(width:128, height:375))
        let buildingrectangle = Rectangle(rect:buildingrect)
        let buildingfillStyle = FillStyle(color:Color(.red))
        canvas.render(buildingfillStyle, buildingrectangle)


        let buildingwindowrect = Rect(topLeft:Point(x:96, y:385), size:Size(width:108, height:8))
        let buildingwindowrectangle = Rectangle(rect:buildingwindowrect)
        let buildingwindowfillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindowfillStyle, buildingwindowrectangle)

        let buildingwindow1rect = Rect(topLeft:Point(x:96, y:405), size:Size(width:108, height:8))
        let buildingwindow1rectangle = Rectangle(rect:buildingwindow1rect)
        let buildingwindow1fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow1fillStyle, buildingwindow1rectangle)

                let buildingwindow2rect = Rect(topLeft:Point(x:96, y:425), size:Size(width:108, height:8))
        let buildingwindow2rectangle = Rectangle(rect:buildingwindow2rect)
        let buildingwindow2fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow2fillStyle, buildingwindow2rectangle)

                let buildingwindow3rect = Rect(topLeft:Point(x:96, y:445), size:Size(width:108, height:8))
        let buildingwindow3rectangle = Rectangle(rect:buildingwindow3rect)
        let buildingwindow3fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow3fillStyle, buildingwindow3rectangle)

                let buildingwindow4rect = Rect(topLeft:Point(x:96, y:465), size:Size(width:108, height:8))
        let buildingwindow4rectangle = Rectangle(rect:buildingwindow4rect)
        let buildingwindow4fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow4fillStyle, buildingwindow4rectangle)

                let buildingwindow5rect = Rect(topLeft:Point(x:96, y:485), size:Size(width:108, height:8))
        let buildingwindow5rectangle = Rectangle(rect:buildingwindow5rect)
        let buildingwindow5fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow5fillStyle, buildingwindow5rectangle)

                let buildingwindow6rect = Rect(topLeft:Point(x:96, y:505), size:Size(width:108, height:8))
        let buildingwindow6rectangle = Rectangle(rect:buildingwindow6rect)
        let buildingwindow6fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow6fillStyle, buildingwindow6rectangle)

                let buildingwindow7rect = Rect(topLeft:Point(x:96, y:525), size:Size(width:108, height:8))
        let buildingwindow7rectangle = Rectangle(rect:buildingwindow7rect)
        let buildingwindow7fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow7fillStyle, buildingwindow7rectangle)

                let buildingwindow8rect = Rect(topLeft:Point(x:96, y:545), size:Size(width:108, height:8))
        let buildingwindow8rectangle = Rectangle(rect:buildingwindow8rect)
        let buildingwindow8fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow8fillStyle, buildingwindow8rectangle)

        // four more below need to be fixed.... good luck!

        let buildingwindow9rect = Rect(topLeft:Point(x:96, y:565), size:Size(width:108, height:8))
        let buildingwindow9rectangle = Rectangle(rect:buildingwindow9rect)
        let buildingwindow9fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow9fillStyle, buildingwindow9rectangle)

        let buildingwindow10rect = Rect(topLeft:Point(x:96, y:585), size:Size(width:108, height:8))
        let buildingwindow10rectangle = Rectangle(rect:buildingwindow10rect)
        let buildingwindow10fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow10fillStyle, buildingwindow10rectangle)

        let buildingwindow11rect = Rect(topLeft:Point(x:96, y:605), size:Size(width:108, height:8))
        let buildingwindow11rectangle = Rectangle(rect:buildingwindow11rect)
        let buildingwindow11fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow11fillStyle, buildingwindow11rectangle)

        let buildingwindow12rect = Rect(topLeft:Point(x:96, y:625), size:Size(width:108, height:8))
        let buildingwindow12rectangle = Rectangle(rect:buildingwindow12rect)
        let buildingwindow12fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow12fillStyle, buildingwindow12rectangle)


        let buildingwindow13rect = Rect(topLeft:Point(x:96, y:645), size:Size(width:108, height:8))
        let buildingwindow13rectangle = Rectangle(rect:buildingwindow13rect)
        let buildingwindow13fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow13fillStyle, buildingwindow13rectangle)

        let buildingwindow14rect = Rect(topLeft:Point(x:96, y:665), size:Size(width:108, height:8))
        let buildingwindow14rectangle = Rectangle(rect:buildingwindow14rect)
        let buildingwindow14fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow14fillStyle, buildingwindow14rectangle)

        let buildingwindow15rect = Rect(topLeft:Point(x:96, y:685), size:Size(width:108, height:8))
        let buildingwindow15rectangle = Rectangle(rect:buildingwindow15rect)
        let buildingwindow15fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow15fillStyle, buildingwindow15rectangle)

        let buildingwindow16rect = Rect(topLeft:Point(x:96, y:705), size:Size(width:108, height:8))
        let buildingwindow16rectangle = Rectangle(rect:buildingwindow16rect)
        let buildingwindow16fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(buildingwindow16fillStyle, buildingwindow16rectangle)

        let buildingdoorrect = Rect(topLeft:Point(x:101, y:726), size:Size(width:83, height:24))
        let buildingdoorrectangle = Rectangle(rect:buildingdoorrect)
        let buildingdoorfillStyle = FillStyle(color:Color(.gray))
        canvas.render(buildingdoorfillStyle, buildingdoorrectangle)

        let line = Rect(topLeft:Point(x:143, y:725), size:Size(width:3, height:24))
  let buildingdoorrectangleline = Rectangle(rect:line)
        let buildingdoorfillStyleline = FillStyle(color:Color(.black))
        canvas.render(buildingdoorfillStyleline, buildingdoorrectangleline)
// there you go all done with the building windows!!! all thats left is the apartement.
        
        
        let houserect = Rect(topLeft:Point(x:414, y:465), size:Size(width:125, height:125))
        let houserectangle = Rectangle(rect:houserect)
        let housefillStyle = FillStyle(color:Color(.blue))
        canvas.render(housefillStyle, houserectangle)

        let housedoorrect = Rect(topLeft:Point(x:445, y:550), size:Size(width:20, height:40))
        let housedoorrectangle = Rectangle(rect:housedoorrect)
        let housedoorfillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(housedoorfillStyle, housedoorrectangle)

        let housewindowrect = Rect(topLeft:Point(x:440, y:485), size:Size(width:25, height:25))
        let housewindowrectangle = Rectangle(rect:housewindowrect)
        let housewindowfillStyle = FillStyle(color:Color(.pink))
        canvas.render(housewindowfillStyle, housewindowrectangle)

        let housewindow2rect = Rect(topLeft:Point(x:490, y:485), size:Size(width:25, height:25))
        let housewindow2rectangle = Rectangle(rect:housewindow2rect)
        let housewindow2fillStyle = FillStyle(color:Color(.pink))
        canvas.render(housewindow2fillStyle, housewindow2rectangle)

        
        let skyscraperrect = Rect(topLeft:Point(x:650, y:90), size:Size(width:91, height:690))
        let skyscraperrectangle = Rectangle(rect:skyscraperrect)
        let scyscraperfillStyle = FillStyle(color:Color(.purple))
        canvas.render(scyscraperfillStyle, skyscraperrectangle)

        let skyscraperwindowrect = Rect(topLeft:Point(x:660, y:110), size:Size(width:10, height:650))
        let skyscraperwindowrectangle = Rectangle(rect:skyscraperwindowrect)
        let scyscraperwindowfillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(scyscraperwindowfillStyle, skyscraperwindowrectangle)


        let skyscraperwindow2rect = Rect(topLeft:Point(x:680, y:110), size:Size(width:10, height:650))
        let skyscraperwindow2rectangle = Rectangle(rect:skyscraperwindow2rect)
        let scyscraperwindow2fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(scyscraperwindow2fillStyle, skyscraperwindow2rectangle)

        
        let skyscraperwindow3rect = Rect(topLeft:Point(x:700, y:110), size:Size(width:10, height:650))
        let skyscraperwindow3rectangle = Rectangle(rect:skyscraperwindow3rect)
        let scyscraperwindow3fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(scyscraperwindow3fillStyle, skyscraperwindow3rectangle)

        
        let skyscraperwindow4rect = Rect(topLeft:Point(x:720, y:110), size:Size(width:10, height:650))
        let skyscraperwindow4rectangle = Rectangle(rect:skyscraperwindow4rect)
        let scyscraperwindow4fillStyle = FillStyle(color:Color(.skyblue))
        canvas.render(scyscraperwindow4fillStyle, skyscraperwindow4rectangle)


        let apartementrect = Rect(topLeft:Point(x:791, y:273), size:Size(width:119, height:437))
        let apartementrectangle = Rectangle(rect:apartementrect)
        let apartementfillStyle = FillStyle(color:Color(.yellow))
        canvas.render(apartementfillStyle, apartementrectangle)
        
        
        let apartementwindowrect = Rect(topLeft:Point(x:801, y:283), size:Size(width:8, height:15))
        let apartementwindowrectangle = Rectangle(rect:apartementwindowrect)
        let apartementwindowfillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindowfillStyle, apartementwindowrectangle)
        
        let apartementwindow1rect = Rect(topLeft:Point(x:814, y:283), size:Size(width:8, height:15))
        let apartementwindow1rectangle = Rectangle(rect:apartementwindow1rect)
        let apartementwindow1fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow1fillStyle, apartementwindow1rectangle)
        
        let apartementwindow2rect = Rect(topLeft:Point(x:827, y:283), size:Size(width:8, height:15))
        let apartementwindow2rectangle = Rectangle(rect:apartementwindow2rect)
        let apartementwindow2fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow2fillStyle, apartementwindow2rectangle)
        
        let apartementwindow3rect = Rect(topLeft:Point(x:840, y:283), size:Size(width:8, height:15))
        let apartementwindow3rectangle = Rectangle(rect:apartementwindow3rect)
        let apartementwindow3fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow3fillStyle, apartementwindow3rectangle)
        
        let apartementwindow4rect = Rect(topLeft:Point(x:853, y:283), size:Size(width:8, height:15))
        let apartementwindow4rectangle = Rectangle(rect:apartementwindow4rect)
        let apartementwindow4fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow4fillStyle, apartementwindow4rectangle)
        
        let apartementwindow5rect = Rect(topLeft:Point(x:866, y:283), size:Size(width:8, height:15))
        let apartementwindow5rectangle = Rectangle(rect:apartementwindow5rect)
        let apartementwindow5fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow5fillStyle, apartementwindow5rectangle)
        
        let apartementwindow6rect = Rect(topLeft:Point(x:879, y:283), size:Size(width:8, height:15))
        let apartementwindow6rectangle = Rectangle(rect:apartementwindow6rect)
        let apartementwindow6fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow6fillStyle, apartementwindow6rectangle)
        
        let apartementwindow7rect = Rect(topLeft:Point(x:892, y:283), size:Size(width:8, height:15))
        let apartementwindow7rectangle = Rectangle(rect:apartementwindow7rect)
        let apartementwindow7fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow7fillStyle, apartementwindow7rectangle)


        
        let apartementwindow8rect = Rect(topLeft:Point(x:801, y:303), size:Size(width:8, height:15))
        let apartementwindow8rectangle = Rectangle(rect:apartementwindow8rect)
        let apartementwindow8fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow8fillStyle, apartementwindow8rectangle)
        
        let apartementwindow9rect = Rect(topLeft:Point(x:814, y:303), size:Size(width:8, height:15))
        let apartementwindow9rectangle = Rectangle(rect:apartementwindow9rect)
        let apartementwindow9fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow9fillStyle, apartementwindow9rectangle)
        
        let apartementwindow10rect = Rect(topLeft:Point(x:827, y:303), size:Size(width:8, height:15))
        let apartementwindow10rectangle = Rectangle(rect:apartementwindow10rect)
        let apartementwindow10fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow10fillStyle, apartementwindow10rectangle)
        
        let apartementwindow11rect = Rect(topLeft:Point(x:840, y:303), size:Size(width:8, height:15))
        let apartementwindow11rectangle = Rectangle(rect:apartementwindow11rect)
        let apartementwindow11fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow11fillStyle, apartementwindow11rectangle)
        
        let apartementwindow12rect = Rect(topLeft:Point(x:853, y:303), size:Size(width:8, height:15))
        let apartementwindow12rectangle = Rectangle(rect:apartementwindow12rect)
        let apartementwindow12fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow12fillStyle, apartementwindow12rectangle)
        
        let apartementwindow13rect = Rect(topLeft:Point(x:866, y:303), size:Size(width:8, height:15))
        let apartementwindow13rectangle = Rectangle(rect:apartementwindow13rect)
        let apartementwindow13fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow13fillStyle, apartementwindow13rectangle)
        
        let apartementwindow14rect = Rect(topLeft:Point(x:879, y:303), size:Size(width:8, height:15))
        let apartementwindow14rectangle = Rectangle(rect:apartementwindow14rect)
        let apartementwindow14fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow14fillStyle, apartementwindow14rectangle)
        
        let apartementwindow15rect = Rect(topLeft:Point(x:892, y:303), size:Size(width:8, height:15))
        let apartementwindow15rectangle = Rectangle(rect:apartementwindow15rect)
        let apartementwindow15fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow15fillStyle, apartementwindow15rectangle)


        
        let apartementwindow16rect = Rect(topLeft:Point(x:801, y:323), size:Size(width:8, height:15))
        let apartementwindow16rectangle = Rectangle(rect:apartementwindow16rect)
        let apartementwindow16fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow16fillStyle, apartementwindow16rectangle)
        
        let apartementwindow17rect = Rect(topLeft:Point(x:814, y:323), size:Size(width:8, height:15))
        let apartementwindow17rectangle = Rectangle(rect:apartementwindow17rect)
        let apartementwindow17fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow17fillStyle, apartementwindow17rectangle)
        
        let apartementwindow18rect = Rect(topLeft:Point(x:827, y:323), size:Size(width:8, height:15))
        let apartementwindow18rectangle = Rectangle(rect:apartementwindow18rect)
        let apartementwindow18fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow18fillStyle, apartementwindow18rectangle)
        
        let apartementwindow19rect = Rect(topLeft:Point(x:840, y:323), size:Size(width:8, height:15))
        let apartementwindow19rectangle = Rectangle(rect:apartementwindow19rect)
        let apartementwindow19fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow19fillStyle, apartementwindow19rectangle)
        
        let apartementwindow20rect = Rect(topLeft:Point(x:853, y:323), size:Size(width:8, height:15))
        let apartementwindow20rectangle = Rectangle(rect:apartementwindow20rect)
        let apartementwindow20fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow20fillStyle, apartementwindow20rectangle)
        
        let apartementwindow21rect = Rect(topLeft:Point(x:866, y:323), size:Size(width:8, height:15))
        let apartementwindow21rectangle = Rectangle(rect:apartementwindow21rect)
        let apartementwindow21fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow21fillStyle, apartementwindow21rectangle)
        
        let apartementwindow22rect = Rect(topLeft:Point(x:879, y:323), size:Size(width:8, height:15))
        let apartementwindow22rectangle = Rectangle(rect:apartementwindow22rect)
        let apartementwindow22fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow22fillStyle, apartementwindow22rectangle)
        
        let apartementwindow23rect = Rect(topLeft:Point(x:892, y:323), size:Size(width:8, height:15))
        let apartementwindow23rectangle = Rectangle(rect:apartementwindow23rect)
        let apartementwindow23fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow23fillStyle, apartementwindow23rectangle)


        // row 4

        
        let apartementwindow24rect = Rect(topLeft:Point(x:801, y:343), size:Size(width:8, height:15))
        let apartementwindow24rectangle = Rectangle(rect:apartementwindow24rect)
        let apartementwindow24fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow24fillStyle, apartementwindow24rectangle)
        
        let apartementwindow25rect = Rect(topLeft:Point(x:814, y:343), size:Size(width:8, height:15))
        let apartementwindow25rectangle = Rectangle(rect:apartementwindow25rect)
        let apartementwindow25fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow25fillStyle, apartementwindow25rectangle)
        
        let apartementwindow26rect = Rect(topLeft:Point(x:827, y:343), size:Size(width:8, height:15))
        let apartementwindow26rectangle = Rectangle(rect:apartementwindow26rect)
        let apartementwindow26fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow26fillStyle, apartementwindow26rectangle)
        
        let apartementwindow27rect = Rect(topLeft:Point(x:840, y:343), size:Size(width:8, height:15))
        let apartementwindow27rectangle = Rectangle(rect:apartementwindow27rect)
        let apartementwindow27fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow27fillStyle, apartementwindow27rectangle)
        
        let apartementwindow28rect = Rect(topLeft:Point(x:853, y:343), size:Size(width:8, height:15))
        let apartementwindow28rectangle = Rectangle(rect:apartementwindow28rect)
        let apartementwindow28fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow28fillStyle, apartementwindow28rectangle)
        
        let apartementwindow29rect = Rect(topLeft:Point(x:866, y:343), size:Size(width:8, height:15))
        let apartementwindow29rectangle = Rectangle(rect:apartementwindow29rect)
        let apartementwindow29fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow29fillStyle, apartementwindow29rectangle)
        
        let apartementwindow30rect = Rect(topLeft:Point(x:879, y:343), size:Size(width:8, height:15))
        let apartementwindow30rectangle = Rectangle(rect:apartementwindow30rect)
        let apartementwindow30fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow30fillStyle, apartementwindow30rectangle)
        
        let apartementwindow31rect = Rect(topLeft:Point(x:892, y:343), size:Size(width:8, height:15))
        let apartementwindow31rectangle = Rectangle(rect:apartementwindow31rect)
        let apartementwindow31fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow31fillStyle, apartementwindow31rectangle)

        // row 5
        
        
        let apartementwindow32rect = Rect(topLeft:Point(x:801, y:363), size:Size(width:8, height:15))
        let apartementwindow32rectangle = Rectangle(rect:apartementwindow32rect)
        let apartementwindow32fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow32fillStyle, apartementwindow32rectangle)
        
        let apartementwindow33rect = Rect(topLeft:Point(x:814, y:363), size:Size(width:8, height:15))
        let apartementwindow33rectangle = Rectangle(rect:apartementwindow33rect)
        let apartementwindow33fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow33fillStyle, apartementwindow33rectangle)
        
        let apartementwindow34rect = Rect(topLeft:Point(x:827, y:363), size:Size(width:8, height:15))
        let apartementwindow34rectangle = Rectangle(rect:apartementwindow34rect)
        let apartementwindow34fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow34fillStyle, apartementwindow34rectangle)
        
        let apartementwindow35rect = Rect(topLeft:Point(x:840, y:363), size:Size(width:8, height:15))
        let apartementwindow35rectangle = Rectangle(rect:apartementwindow35rect)
        let apartementwindow35fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow35fillStyle, apartementwindow35rectangle)
        
        let apartementwindow36rect = Rect(topLeft:Point(x:853, y:363), size:Size(width:8, height:15))
        let apartementwindow36rectangle = Rectangle(rect:apartementwindow36rect)
        let apartementwindow36fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow36fillStyle, apartementwindow36rectangle)
        
        let apartementwindow37rect = Rect(topLeft:Point(x:866, y:363), size:Size(width:8, height:15))
        let apartementwindow37rectangle = Rectangle(rect:apartementwindow37rect)
        let apartementwindow37fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow37fillStyle, apartementwindow37rectangle)
        
        let apartementwindow38rect = Rect(topLeft:Point(x:879, y:363), size:Size(width:8, height:15))
        let apartementwindow38rectangle = Rectangle(rect:apartementwindow38rect)
        let apartementwindow38fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow38fillStyle, apartementwindow38rectangle)
        
        let apartementwindow39rect = Rect(topLeft:Point(x:892, y:363), size:Size(width:8, height:15))
        let apartementwindow39rectangle = Rectangle(rect:apartementwindow39rect)
        let apartementwindow39fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow39fillStyle, apartementwindow39rectangle)


        

        let apartementwindow40rect = Rect(topLeft:Point(x:801, y:383), size:Size(width:8, height:15))
        let apartementwindow40rectangle = Rectangle(rect:apartementwindow40rect)
        let apartementwindow40fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow40fillStyle, apartementwindow40rectangle)
        
        let apartementwindow41rect = Rect(topLeft:Point(x:814, y:383), size:Size(width:8, height:15))
        let apartementwindow41rectangle = Rectangle(rect:apartementwindow41rect)
        let apartementwindow41fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow41fillStyle, apartementwindow41rectangle)
        
        let apartementwindow42rect = Rect(topLeft:Point(x:827, y:383), size:Size(width:8, height:15))
        let apartementwindow42rectangle = Rectangle(rect:apartementwindow42rect)
        let apartementwindow42fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow42fillStyle, apartementwindow42rectangle)
        
        let apartementwindow43rect = Rect(topLeft:Point(x:840, y:383), size:Size(width:8, height:15))
        let apartementwindow43rectangle = Rectangle(rect:apartementwindow43rect)
        let apartementwindow43fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow43fillStyle, apartementwindow43rectangle)
        
        let apartementwindow44rect = Rect(topLeft:Point(x:853, y:383), size:Size(width:8, height:15))
        let apartementwindow44rectangle = Rectangle(rect:apartementwindow44rect)
        let apartementwindow44fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow44fillStyle, apartementwindow44rectangle)
        
        let apartementwindow45rect = Rect(topLeft:Point(x:866, y:383), size:Size(width:8, height:15))
        let apartementwindow45rectangle = Rectangle(rect:apartementwindow45rect)
        let apartementwindow45fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow45fillStyle, apartementwindow45rectangle)
        
        let apartementwindow46rect = Rect(topLeft:Point(x:879, y:383), size:Size(width:8, height:15))
        let apartementwindow46rectangle = Rectangle(rect:apartementwindow46rect)
        let apartementwindow46fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow46fillStyle, apartementwindow46rectangle)
        
        let apartementwindow47rect = Rect(topLeft:Point(x:892, y:383), size:Size(width:8, height:15))
        let apartementwindow47rectangle = Rectangle(rect:apartementwindow47rect)
        let apartementwindow47fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow47fillStyle, apartementwindow47rectangle)


                

        let apartementwindow48rect = Rect(topLeft:Point(x:801, y:403), size:Size(width:8, height:15))
        let apartementwindow48rectangle = Rectangle(rect:apartementwindow48rect)
        let apartementwindow48fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow48fillStyle, apartementwindow48rectangle)
        
        let apartementwindow49rect = Rect(topLeft:Point(x:814, y:403), size:Size(width:8, height:15))
        let apartementwindow49rectangle = Rectangle(rect:apartementwindow49rect)
        let apartementwindow49fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow49fillStyle, apartementwindow49rectangle)
        
        let apartementwindow50rect = Rect(topLeft:Point(x:827, y:403), size:Size(width:8, height:15))
        let apartementwindow50rectangle = Rectangle(rect:apartementwindow50rect)
        let apartementwindow50fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow50fillStyle, apartementwindow50rectangle)
        
        let apartementwindow51rect = Rect(topLeft:Point(x:840, y:403), size:Size(width:8, height:15))
        let apartementwindow51rectangle = Rectangle(rect:apartementwindow51rect)
        let apartementwindow51fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow51fillStyle, apartementwindow51rectangle)
        
        let apartementwindow52rect = Rect(topLeft:Point(x:853, y:403), size:Size(width:8, height:15))
        let apartementwindow52rectangle = Rectangle(rect:apartementwindow52rect)
        let apartementwindow52fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow52fillStyle, apartementwindow52rectangle)
        
        let apartementwindow53rect = Rect(topLeft:Point(x:866, y:403), size:Size(width:8, height:15))
        let apartementwindow53rectangle = Rectangle(rect:apartementwindow53rect)
        let apartementwindow53fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow53fillStyle, apartementwindow53rectangle)
        
        let apartementwindow54rect = Rect(topLeft:Point(x:879, y:403), size:Size(width:8, height:15))
        let apartementwindow54rectangle = Rectangle(rect:apartementwindow54rect)
        let apartementwindow54fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow54fillStyle, apartementwindow54rectangle)
        
        let apartementwindow55rect = Rect(topLeft:Point(x:892, y:403), size:Size(width:8, height:15))
        let apartementwindow55rectangle = Rectangle(rect:apartementwindow55rect)
        let apartementwindow55fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow55fillStyle, apartementwindow55rectangle)

        //// fix .........................................................................................................................

                let apartementwindow56rect = Rect(topLeft:Point(x:801, y:423), size:Size(width:8, height:15))
        let apartementwindow56rectangle = Rectangle(rect:apartementwindow56rect)
        let apartementwindow56fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow56fillStyle, apartementwindow56rectangle)
        
        let apartementwindow57rect = Rect(topLeft:Point(x:814, y:423), size:Size(width:8, height:15))
        let apartementwindow57rectangle = Rectangle(rect:apartementwindow57rect)
        let apartementwindow57fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow57fillStyle, apartementwindow57rectangle)
        
        let apartementwindow58rect = Rect(topLeft:Point(x:827, y:423), size:Size(width:8, height:15))
        let apartementwindow58rectangle = Rectangle(rect:apartementwindow58rect)
        let apartementwindow58fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow58fillStyle, apartementwindow58rectangle)
        
        let apartementwindow59rect = Rect(topLeft:Point(x:840, y:423), size:Size(width:8, height:15))
        let apartementwindow59rectangle = Rectangle(rect:apartementwindow59rect)
        let apartementwindow59fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow59fillStyle, apartementwindow59rectangle)
        
        let apartementwindow60rect = Rect(topLeft:Point(x:853, y:423), size:Size(width:8, height:15))
        let apartementwindow60rectangle = Rectangle(rect:apartementwindow60rect)
        let apartementwindow60fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow60fillStyle, apartementwindow60rectangle)
        
        let apartementwindow61rect = Rect(topLeft:Point(x:866, y:423), size:Size(width:8, height:15))
        let apartementwindow61rectangle = Rectangle(rect:apartementwindow61rect)
        let apartementwindow61fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow61fillStyle, apartementwindow61rectangle)
        
        let apartementwindow62rect = Rect(topLeft:Point(x:879, y:423), size:Size(width:8, height:15))
        let apartementwindow62rectangle = Rectangle(rect:apartementwindow62rect)
        let apartementwindow62fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow62fillStyle, apartementwindow62rectangle)
        
        let apartementwindow63rect = Rect(topLeft:Point(x:892, y:423), size:Size(width:8, height:15))
        let apartementwindow63rectangle = Rectangle(rect:apartementwindow63rect)
        let apartementwindow63fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow63fillStyle, apartementwindow63rectangle)


        
        let apartementwindow64rect = Rect(topLeft:Point(x:801, y:443), size:Size(width:8, height:15))
        let apartementwindow64rectangle = Rectangle(rect:apartementwindow64rect)
        let apartementwindow64fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow64fillStyle, apartementwindow64rectangle)
        
        let apartementwindow65rect = Rect(topLeft:Point(x:814, y:443), size:Size(width:8, height:15))
        let apartementwindow65rectangle = Rectangle(rect:apartementwindow65rect)
        let apartementwindow65fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow65fillStyle, apartementwindow65rectangle)
        
        let apartementwindow66rect = Rect(topLeft:Point(x:827, y:443), size:Size(width:8, height:15))
        let apartementwindow66rectangle = Rectangle(rect:apartementwindow66rect)
        let apartementwindow66fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow66fillStyle, apartementwindow66rectangle)
        
        let apartementwindow67rect = Rect(topLeft:Point(x:840, y:443), size:Size(width:8, height:15))
        let apartementwindow67rectangle = Rectangle(rect:apartementwindow67rect)
        let apartementwindow67fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow67fillStyle, apartementwindow67rectangle)
        
        let apartementwindow68rect = Rect(topLeft:Point(x:853, y:443), size:Size(width:8, height:15))
        let apartementwindow68rectangle = Rectangle(rect:apartementwindow68rect)
        let apartementwindow68fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow68fillStyle, apartementwindow68rectangle)
        
        let apartementwindow69rect = Rect(topLeft:Point(x:866, y:443), size:Size(width:8, height:15))
        let apartementwindow69rectangle = Rectangle(rect:apartementwindow69rect)
        let apartementwindow69fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow69fillStyle, apartementwindow69rectangle)
        
        let apartementwindow70rect = Rect(topLeft:Point(x:879, y:443), size:Size(width:8, height:15))
        let apartementwindow70rectangle = Rectangle(rect:apartementwindow70rect)
        let apartementwindow70fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow70fillStyle, apartementwindow70rectangle)
        
        let apartementwindow71rect = Rect(topLeft:Point(x:892, y:443), size:Size(width:8, height:15))
        let apartementwindow71rectangle = Rectangle(rect:apartementwindow71rect)
        let apartementwindow71fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow71fillStyle, apartementwindow71rectangle)


        
        let apartementwindow72rect = Rect(topLeft:Point(x:801, y:463), size:Size(width:8, height:15))
        let apartementwindow72rectangle = Rectangle(rect:apartementwindow72rect)
        let apartementwindow72fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow72fillStyle, apartementwindow72rectangle)
        
        let apartementwindow73rect = Rect(topLeft:Point(x:814, y:463), size:Size(width:8, height:15))
        let apartementwindow73rectangle = Rectangle(rect:apartementwindow73rect)
        let apartementwindow73fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow73fillStyle, apartementwindow73rectangle)
        
        let apartementwindow74rect = Rect(topLeft:Point(x:827, y:463), size:Size(width:8, height:15))
        let apartementwindow74rectangle = Rectangle(rect:apartementwindow74rect)
        let apartementwindow74fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow74fillStyle, apartementwindow74rectangle)
        
        let apartementwindow75rect = Rect(topLeft:Point(x:840, y:463), size:Size(width:8, height:15))
        let apartementwindow75rectangle = Rectangle(rect:apartementwindow75rect)
        let apartementwindow75fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow75fillStyle, apartementwindow75rectangle)
        
        let apartementwindow76rect = Rect(topLeft:Point(x:853, y:463), size:Size(width:8, height:15))
        let apartementwindow76rectangle = Rectangle(rect:apartementwindow76rect)
        let apartementwindow76fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow76fillStyle, apartementwindow76rectangle)
        
        let apartementwindow77rect = Rect(topLeft:Point(x:866, y:463), size:Size(width:8, height:15))
        let apartementwindow77rectangle = Rectangle(rect:apartementwindow77rect)
        let apartementwindow77fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow77fillStyle, apartementwindow77rectangle)
        
        let apartementwindow78rect = Rect(topLeft:Point(x:879, y:463), size:Size(width:8, height:15))
        let apartementwindow78rectangle = Rectangle(rect:apartementwindow78rect)
        let apartementwindow78fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow78fillStyle, apartementwindow78rectangle)
        
        let apartementwindow79rect = Rect(topLeft:Point(x:892, y:463), size:Size(width:8, height:15))
        let apartementwindow79rectangle = Rectangle(rect:apartementwindow79rect)
        let apartementwindow79fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow79fillStyle, apartementwindow79rectangle)


        // row 4

        
        let apartementwindow80rect = Rect(topLeft:Point(x:801, y:483), size:Size(width:8, height:15))
        let apartementwindow80rectangle = Rectangle(rect:apartementwindow80rect)
        let apartementwindow80fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow80fillStyle, apartementwindow80rectangle)
        
        let apartementwindow81rect = Rect(topLeft:Point(x:814, y:483), size:Size(width:8, height:15))
        let apartementwindow81rectangle = Rectangle(rect:apartementwindow81rect)
        let apartementwindow81fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow81fillStyle, apartementwindow81rectangle)
        
        let apartementwindow82rect = Rect(topLeft:Point(x:827, y:483), size:Size(width:8, height:15))
        let apartementwindow82rectangle = Rectangle(rect:apartementwindow82rect)
        let apartementwindow82fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow82fillStyle, apartementwindow82rectangle)
        
        let apartementwindow83rect = Rect(topLeft:Point(x:840, y:483), size:Size(width:8, height:15))
        let apartementwindow83rectangle = Rectangle(rect:apartementwindow83rect)
        let apartementwindow83fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow83fillStyle, apartementwindow83rectangle)
        
        let apartementwindow84rect = Rect(topLeft:Point(x:853, y:483), size:Size(width:8, height:15))
        let apartementwindow84rectangle = Rectangle(rect:apartementwindow84rect)
        let apartementwindow84fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow84fillStyle, apartementwindow84rectangle)
        
        let apartementwindow85rect = Rect(topLeft:Point(x:866, y:483), size:Size(width:8, height:15))
        let apartementwindow85rectangle = Rectangle(rect:apartementwindow85rect)
        let apartementwindow85fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow85fillStyle, apartementwindow85rectangle)
        
        let apartementwindow86rect = Rect(topLeft:Point(x:879, y:483), size:Size(width:8, height:15))
        let apartementwindow86rectangle = Rectangle(rect:apartementwindow86rect)
        let apartementwindow86fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow86fillStyle, apartementwindow86rectangle)
        
        let apartementwindow87rect = Rect(topLeft:Point(x:892, y:483), size:Size(width:8, height:15))
        let apartementwindow87rectangle = Rectangle(rect:apartementwindow87rect)
        let apartementwindow87fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow87fillStyle, apartementwindow87rectangle)

        // row 5
        
        
        let apartementwindow88rect = Rect(topLeft:Point(x:801, y:503), size:Size(width:8, height:15))
        let apartementwindow88rectangle = Rectangle(rect:apartementwindow88rect)
        let apartementwindow88fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow88fillStyle, apartementwindow88rectangle)
        
        let apartementwindow89rect = Rect(topLeft:Point(x:814, y:503), size:Size(width:8, height:15))
        let apartementwindow89rectangle = Rectangle(rect:apartementwindow89rect)
        let apartementwindow89fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow89fillStyle, apartementwindow89rectangle)
        
        let apartementwindow90rect = Rect(topLeft:Point(x:827, y:503), size:Size(width:8, height:15))
        let apartementwindow90rectangle = Rectangle(rect:apartementwindow90rect)
        let apartementwindow90fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow90fillStyle, apartementwindow90rectangle)
        
        let apartementwindow91rect = Rect(topLeft:Point(x:840, y:503), size:Size(width:8, height:15))
        let apartementwindow91rectangle = Rectangle(rect:apartementwindow91rect)
        let apartementwindow91fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow91fillStyle, apartementwindow91rectangle)
        
        let apartementwindow92rect = Rect(topLeft:Point(x:853, y:503), size:Size(width:8, height:15))
        let apartementwindow92rectangle = Rectangle(rect:apartementwindow92rect)
        let apartementwindow92fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow92fillStyle, apartementwindow92rectangle)
        
        let apartementwindow93rect = Rect(topLeft:Point(x:866, y:503), size:Size(width:8, height:15))
        let apartementwindow93rectangle = Rectangle(rect:apartementwindow93rect)
        let apartementwindow93fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow93fillStyle, apartementwindow93rectangle)
        
        let apartementwindow94rect = Rect(topLeft:Point(x:879, y:503), size:Size(width:8, height:15))
        let apartementwindow94rectangle = Rectangle(rect:apartementwindow94rect)
        let apartementwindow94fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow94fillStyle, apartementwindow94rectangle)
        
        let apartementwindow95rect = Rect(topLeft:Point(x:892, y:503), size:Size(width:8, height:15))
        let apartementwindow95rectangle = Rectangle(rect:apartementwindow95rect)
        let apartementwindow95fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow95fillStyle, apartementwindow95rectangle)


        

        let apartementwindow96rect = Rect(topLeft:Point(x:801, y:523), size:Size(width:8, height:15))
        let apartementwindow96rectangle = Rectangle(rect:apartementwindow96rect)
        let apartementwindow96fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow96fillStyle, apartementwindow96rectangle)
        
        let apartementwindow97rect = Rect(topLeft:Point(x:814, y:523), size:Size(width:8, height:15))
        let apartementwindow97rectangle = Rectangle(rect:apartementwindow97rect)
        let apartementwindow97fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow97fillStyle, apartementwindow97rectangle)
        
        let apartementwindow98rect = Rect(topLeft:Point(x:827, y:523), size:Size(width:8, height:15))
        let apartementwindow98rectangle = Rectangle(rect:apartementwindow98rect)
        let apartementwindow98fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow98fillStyle, apartementwindow98rectangle)
        
        let apartementwindow99rect = Rect(topLeft:Point(x:840, y:523), size:Size(width:8, height:15))
        let apartementwindow99rectangle = Rectangle(rect:apartementwindow99rect)
        let apartementwindow99fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow99fillStyle, apartementwindow99rectangle)
        
        let apartementwindow100rect = Rect(topLeft:Point(x:853, y:523), size:Size(width:8, height:15))
        let apartementwindow100rectangle = Rectangle(rect:apartementwindow100rect)
        let apartementwindow100fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow100fillStyle, apartementwindow100rectangle)
        
        let apartementwindow101rect = Rect(topLeft:Point(x:866, y:523), size:Size(width:8, height:15))
        let apartementwindow101rectangle = Rectangle(rect:apartementwindow101rect)
        let apartementwindow101fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow101fillStyle, apartementwindow101rectangle)
        
        let apartementwindow102rect = Rect(topLeft:Point(x:879, y:523), size:Size(width:8, height:15))
        let apartementwindow102rectangle = Rectangle(rect:apartementwindow102rect)
        let apartementwindow102fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow102fillStyle, apartementwindow102rectangle)
        
        let apartementwindow103rect = Rect(topLeft:Point(x:892, y:523), size:Size(width:8, height:15))
        let apartementwindow103rectangle = Rectangle(rect:apartementwindow103rect)
        let apartementwindow103fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow103fillStyle, apartementwindow103rectangle)


                

        let apartementwindow104rect = Rect(topLeft:Point(x:801, y:543), size:Size(width:8, height:15))
        let apartementwindow104rectangle = Rectangle(rect:apartementwindow104rect)
        let apartementwindow104fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow104fillStyle, apartementwindow104rectangle)
        
        let apartementwindow105rect = Rect(topLeft:Point(x:814, y:543), size:Size(width:8, height:15))
        let apartementwindow105rectangle = Rectangle(rect:apartementwindow105rect)
        let apartementwindow105fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow105fillStyle, apartementwindow105rectangle)
        
        let apartementwindow106rect = Rect(topLeft:Point(x:827, y:543), size:Size(width:8, height:15))
        let apartementwindow106rectangle = Rectangle(rect:apartementwindow106rect)
        let apartementwindow106fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow106fillStyle, apartementwindow106rectangle)
        
        let apartementwindow107rect = Rect(topLeft:Point(x:840, y:543), size:Size(width:8, height:15))
        let apartementwindow107rectangle = Rectangle(rect:apartementwindow107rect)
        let apartementwindow107fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow107fillStyle, apartementwindow107rectangle)
        
        let apartementwindow108rect = Rect(topLeft:Point(x:853, y:543), size:Size(width:8, height:15))
        let apartementwindow108rectangle = Rectangle(rect:apartementwindow108rect)
        let apartementwindow108fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow108fillStyle, apartementwindow108rectangle)
        
        let apartementwindow109rect = Rect(topLeft:Point(x:866, y:543), size:Size(width:8, height:15))
        let apartementwindow109rectangle = Rectangle(rect:apartementwindow109rect)
        let apartementwindow109fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow109fillStyle, apartementwindow109rectangle)
        
        let apartementwindow110rect = Rect(topLeft:Point(x:879, y:543), size:Size(width:8, height:15))
        let apartementwindow110rectangle = Rectangle(rect:apartementwindow110rect)
        let apartementwindow110fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow110fillStyle, apartementwindow110rectangle)
        
        let apartementwindow111rect = Rect(topLeft:Point(x:892, y:543), size:Size(width:8, height:15))
        let apartementwindow111rectangle = Rectangle(rect:apartementwindow111rect)
        let apartementwindow111fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow111fillStyle, apartementwindow111rectangle)

        // set number 5 - another eight rows good luck!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

        let apartementwindow112rect = Rect(topLeft:Point(x:801, y:563), size:Size(width:8, height:15))
        let apartementwindow112rectangle = Rectangle(rect:apartementwindow112rect)
        let apartementwindow112fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow112fillStyle, apartementwindow112rectangle)
        
        let apartementwindow113rect = Rect(topLeft:Point(x:814, y:563), size:Size(width:8, height:15))
        let apartementwindow113rectangle = Rectangle(rect:apartementwindow113rect)
        let apartementwindow113fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow113fillStyle, apartementwindow113rectangle)
        
        let apartementwindow114rect = Rect(topLeft:Point(x:827, y:563), size:Size(width:8, height:15))
        let apartementwindow114rectangle = Rectangle(rect:apartementwindow114rect)
        let apartementwindow114fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow114fillStyle, apartementwindow114rectangle)
        
        let apartementwindow115rect = Rect(topLeft:Point(x:840, y:563), size:Size(width:8, height:15))
        let apartementwindow115rectangle = Rectangle(rect:apartementwindow115rect)
        let apartementwindow115fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow115fillStyle, apartementwindow115rectangle)
        
        let apartementwindow116rect = Rect(topLeft:Point(x:853, y:563), size:Size(width:8, height:15))
        let apartementwindow116rectangle = Rectangle(rect:apartementwindow116rect)
        let apartementwindow116fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow116fillStyle, apartementwindow116rectangle)
        
        let apartementwindow117rect = Rect(topLeft:Point(x:866, y:563), size:Size(width:8, height:15))
        let apartementwindow117rectangle = Rectangle(rect:apartementwindow117rect)
        let apartementwindow117fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow117fillStyle, apartementwindow117rectangle)
        
        let apartementwindow118rect = Rect(topLeft:Point(x:879, y:563), size:Size(width:8, height:15))
        let apartementwindow118rectangle = Rectangle(rect:apartementwindow118rect)
        let apartementwindow118fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow118fillStyle, apartementwindow118rectangle)
        
        let apartementwindow119rect = Rect(topLeft:Point(x:892, y:563), size:Size(width:8, height:15))
        let apartementwindow119rectangle = Rectangle(rect:apartementwindow119rect)
        let apartementwindow119fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow119fillStyle, apartementwindow119rectangle)

//row 2
        
        let apartementwindow120rect = Rect(topLeft:Point(x:801, y:563), size:Size(width:8, height:15))
        let apartementwindow120rectangle = Rectangle(rect:apartementwindow120rect)
        let apartementwindow120fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow120fillStyle, apartementwindow120rectangle)
        
        let apartementwindow121rect = Rect(topLeft:Point(x:814, y:563), size:Size(width:8, height:15))
        let apartementwindow121rectangle = Rectangle(rect:apartementwindow121rect)
        let apartementwindow121fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow121fillStyle, apartementwindow121rectangle)
        
        let apartementwindow122rect = Rect(topLeft:Point(x:827, y:563), size:Size(width:8, height:15))
        let apartementwindow122rectangle = Rectangle(rect:apartementwindow122rect)
        let apartementwindow122fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow122fillStyle, apartementwindow122rectangle)
        
        let apartementwindow123rect = Rect(topLeft:Point(x:840, y:563), size:Size(width:8, height:15))
        let apartementwindow123rectangle = Rectangle(rect:apartementwindow123rect)
        let apartementwindow123fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow123fillStyle, apartementwindow123rectangle)
        
        let apartementwindow124rect = Rect(topLeft:Point(x:853, y:563), size:Size(width:8, height:15))
        let apartementwindow124rectangle = Rectangle(rect:apartementwindow124rect)
        let apartementwindow124fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow124fillStyle, apartementwindow124rectangle)
        
        let apartementwindow125rect = Rect(topLeft:Point(x:866, y:563), size:Size(width:8, height:15))
        let apartementwindow125rectangle = Rectangle(rect:apartementwindow125rect)
        let apartementwindow125fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow125fillStyle, apartementwindow125rectangle)
        
        let apartementwindow126rect = Rect(topLeft:Point(x:879, y:563), size:Size(width:8, height:15))
        let apartementwindow126rectangle = Rectangle(rect:apartementwindow126rect)
        let apartementwindow126fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow126fillStyle, apartementwindow126rectangle)
        
        let apartementwindow127rect = Rect(topLeft:Point(x:892, y:563), size:Size(width:8, height:15))
        let apartementwindow127rectangle = Rectangle(rect:apartementwindow127rect)
        let apartementwindow127fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow127fillStyle, apartementwindow127rectangle)

// row 3
        
        let apartementwindow128rect = Rect(topLeft:Point(x:801, y:583), size:Size(width:8, height:15))
        let apartementwindow128rectangle = Rectangle(rect:apartementwindow128rect)
        let apartementwindow128fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow128fillStyle, apartementwindow128rectangle)
        
        let apartementwindow129rect = Rect(topLeft:Point(x:814, y:583), size:Size(width:8, height:15))
        let apartementwindow129rectangle = Rectangle(rect:apartementwindow129rect)
        let apartementwindow129fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow129fillStyle, apartementwindow129rectangle)
        
        let apartementwindow130rect = Rect(topLeft:Point(x:827, y:583), size:Size(width:8, height:15))
        let apartementwindow130rectangle = Rectangle(rect:apartementwindow130rect)
        let apartementwindow130fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow130fillStyle, apartementwindow130rectangle)
        
        let apartementwindow131rect = Rect(topLeft:Point(x:840, y:583), size:Size(width:8, height:15))
        let apartementwindow131rectangle = Rectangle(rect:apartementwindow131rect)
        let apartementwindow131fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow131fillStyle, apartementwindow131rectangle)
        
        let apartementwindow132rect = Rect(topLeft:Point(x:853, y:583), size:Size(width:8, height:15))
        let apartementwindow132rectangle = Rectangle(rect:apartementwindow132rect)
        let apartementwindow132fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow132fillStyle, apartementwindow132rectangle)
        
        let apartementwindow133rect = Rect(topLeft:Point(x:866, y:583), size:Size(width:8, height:15))
        let apartementwindow133rectangle = Rectangle(rect:apartementwindow133rect)
        let apartementwindow133fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow133fillStyle, apartementwindow133rectangle)
        
        let apartementwindow134rect = Rect(topLeft:Point(x:879, y:583), size:Size(width:8, height:15))
        let apartementwindow134rectangle = Rectangle(rect:apartementwindow134rect)
        let apartementwindow134fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow134fillStyle, apartementwindow134rectangle)
        
        let apartementwindow135rect = Rect(topLeft:Point(x:892, y:583), size:Size(width:8, height:15))
        let apartementwindow135rectangle = Rectangle(rect:apartementwindow135rect)
        let apartementwindow135fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow135fillStyle, apartementwindow135rectangle)


        // row 4

         
        let apartementwindow136rect = Rect(topLeft:Point(x:801, y:603), size:Size(width:8, height:15))
        let apartementwindow136rectangle = Rectangle(rect:apartementwindow136rect)
        let apartementwindow136fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow136fillStyle, apartementwindow136rectangle)
        
        let apartementwindow137rect = Rect(topLeft:Point(x:814, y:603), size:Size(width:8, height:15))
        let apartementwindow137rectangle = Rectangle(rect:apartementwindow137rect)
        let apartementwindow137fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow137fillStyle, apartementwindow137rectangle)
        
        let apartementwindow138rect = Rect(topLeft:Point(x:827, y:603), size:Size(width:8, height:15))
        let apartementwindow138rectangle = Rectangle(rect:apartementwindow138rect)
        let apartementwindow138fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow138fillStyle, apartementwindow138rectangle)
        
        let apartementwindow139rect = Rect(topLeft:Point(x:840, y:603), size:Size(width:8, height:15))
        let apartementwindow139rectangle = Rectangle(rect:apartementwindow139rect)
        let apartementwindow139fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow139fillStyle, apartementwindow139rectangle)
        
        let apartementwindow140rect = Rect(topLeft:Point(x:853, y:603), size:Size(width:8, height:15))
        let apartementwindow140rectangle = Rectangle(rect:apartementwindow140rect)
        let apartementwindow140fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow140fillStyle, apartementwindow140rectangle)
        
        let apartementwindow141rect = Rect(topLeft:Point(x:866, y:603), size:Size(width:8, height:15))
        let apartementwindow141rectangle = Rectangle(rect:apartementwindow141rect)
        let apartementwindow141fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow141fillStyle, apartementwindow141rectangle)
        
        let apartementwindow142rect = Rect(topLeft:Point(x:879, y:603), size:Size(width:8, height:15))
        let apartementwindow142rectangle = Rectangle(rect:apartementwindow142rect)
        let apartementwindow142fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow142fillStyle, apartementwindow142rectangle)
         
        let apartementwindow143rect = Rect(topLeft:Point(x:892, y:603), size:Size(width:8, height:15))
        let apartementwindow143rectangle = Rectangle(rect:apartementwindow143rect)
        let apartementwindow143fillStyle = FillStyle(color:Color(.orange))
        canvas.render(apartementwindow143fillStyle, apartementwindow143rectangle)

        let apartementdoorrect = Rect(topLeft:Point(x:840, y:625), size:Size(width:53, height:84))
        let apartementdoorrectangle = Rectangle(rect:apartementdoorrect)
        let apartementdoorfillStyle = FillStyle(color:Color(.lightgray))
        canvas.render(apartementdoorfillStyle, apartementdoorrectangle)

        let apartementline = Rect(topLeft:Point(x:866, y:625), size:Size(width:2, height:84))
        let apartementdoorrectangleline = Rectangle(rect:apartementline)
        let apartementdoorfillStyleline = FillStyle(color:Color(.black))
        canvas.render(apartementdoorfillStyleline, apartementdoorrectangleline)

 canvas.render(strokeStyle, fillStyle, lineWidth, ellipse)
        
}

    }
