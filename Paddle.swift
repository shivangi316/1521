import Igis
import Scenes
class Paddle: RenderableEntity {
    var rectangle: Rectangle
    var velocity = Point(x: 0, y: 31)
    init(rect:Rect) {
        rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)

        // Using a meaningful name can be helpful for debugging
        super.init(name: "Paddle")
    }

    override func calculate(canvasSize: Size) {
        if rectangle.rect.top < 0 {
            rectangle.rect.topLeft.y = 0
        }

        if rectangle.rect.bottom > canvasSize.height {
            rectangle.rect.topLeft.y = canvasSize.height - rectangle.rect.height
        }
    }
    override func render(canvas:Canvas) {
        let strokeStyle = StrokeStyle(color:Color(.black))
        let fillStyle = FillStyle(color:Color(.white))
        let lineWidth = LineWidth(width:2)
        canvas.render(strokeStyle, fillStyle, lineWidth, rectangle)
    }

    func move(to point:Point) {
        rectangle.rect.topLeft = point
    }

    func moveUp() {
        rectangle.rect.topLeft -= velocity
    }

    func moveDown() {
        rectangle.rect.topLeft += velocity
    }
    
    override func boundingRect() ->  Rect {
        return rectangle.rect
}
}
