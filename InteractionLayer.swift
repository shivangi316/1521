 import Igis
import Scenes

  /*
     This class is responsible for the interaction Layer.
     Internally, it maintains the RenderableEntities for this layer.
   */


class InteractionLayer :  Layer, KeyDownHandler{
    let ball = Ball()
    let paddleLeft = Paddle(rect:Rect(size:Size(width:10, height:100)))
    let paddleRight = Paddle(rect:Rect(size:Size(width:10, height:100)))
      init() {
          // Using a meaningful name can be helpful for debugging
          super.init(name:"Interaction")

          // We insert our RenderableEntities in the constructor
          insert(entity: ball, at: .front)
          ball.changeVelocity(velocityX: 3, velocityY: 5)
          insert(entity:paddleLeft, at: .front)
          insert(entity: paddleRight, at: .front)
      }


      override func preCalculate(canvas: Canvas) {
          let ballBoundingRect = ball.boundingRect()
          let leftPaddleBoundingRect = paddleLeft.boundingRect()
      let leftPaddlContainment = leftPaddleBoundingRect.containment(target: ballBoundingRect)
      if leftPaddlContainment.contains(.contact) && leftPaddlContainment.contains(.overlapsRight) {
          print("LEFT PADDLE IMPACTED")
      }

      let rightPaddleBoundingRect = paddleRight.boundingRect()
      let rightPaddlContainment = rightPaddleBoundingRect.containment(target: ballBoundingRect)
      if rightPaddlContainment.contains(.contact) && rightPaddlContainment.contains(.overlapsLeft) {
          print("RIGHT PADDLE IMPACTED")
      }
      }
      override func preSetup(canvasSize: Size, canvas: Canvas) {
          let paddleMargin = 100
        paddleLeft.move(to:Point(x: 10, y: canvasSize.center.y))
        paddleRight.move(to:Point(x:canvasSize.width - paddleMargin, y: canvasSize.center.y))
        
        dispatcher.registerKeyDownHandler(handler: self)
   }
      override func postTeardown() {
      dispatcher.unregisterKeyDownHandler(handler: self)
      }
      func onKeyDown(key:String, code:String, ctrlKey:Bool, shiftKey: Bool, altKey: Bool, metaKey:Bool)

      {
          switch code{
          case "KeyW":
              paddleLeft.moveUp()
          case "KeyS":
              paddleLeft.moveDown()
          case "ArrowUp":
               paddleRight.moveUp()
          case "ArrowDown":
              paddleRight.moveDown()
          default:
              print("unexpected error with key down handler")
          }
              
      }

  }

