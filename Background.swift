
import Scenes
import Igis

  /*
     This class is responsible for rendering the background.
   */


class Background : RenderableEntity {

   //  let rectangle: Rectangle
    var rect = Rect()
    init() {

        // let rect = Rect(topLeft:Point(x:0, y:0), size:Size(width:1240, height:550))
        // let rectangle = Rectangle(rect:rect)
        // let fillStyle = FillStyle(color:Color(.blue))
        
        
          // Using a meaningful name can be helpful for debugging
          super.init(name:"Background")
      }
    override func calculate(canvasSize: Size) {
        rect.size = canvasSize
    }

override func setup(canvasSize:Size, canvas:Canvas) {
        let skyrect = Rect(topLeft:Point(x:0, y:0), size:Size(width:1240, height:550))
        let skyrectangle = Rectangle(rect:skyrect)
        let skyfillStyle = FillStyle(color:Color(.lightblue))
        canvas.render(skyfillStyle, skyrectangle)

        let groundrect = Rect(topLeft:Point(x:0, y:550), size:Size(width:1240, height:550))
        let groundrectangle = Rectangle(rect:groundrect)
        let groundfillStyle = FillStyle(color:Color(.green))
        canvas.render(groundfillStyle, groundrectangle)
}

}
