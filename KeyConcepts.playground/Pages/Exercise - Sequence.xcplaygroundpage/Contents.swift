//: [Previous](@previous) / [Next](@next)
//: # Exercise - Sequence
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![tjamc-no-grid.png](tjamc-no-grid.png "The Jesus and Mary Chain")
 ![tjamc-with-grid.png](tjamc-with-grid.png "The Jesus and Mary Chain")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let grey = Color(hue: 219, saturation: 1, brightness: 82, alpha: 100)
let lightBlue = Color(hue: 205, saturation: 74, brightness: 77, alpha: 75)
let lightRed = Color(hue: 4, saturation: 78, brightness: 92, alpha: 100)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.

// No border, has a fill
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
//canvas.drawEllipse(at: Point(x: 100, y: 100), width: 50, height: 75)

//// Has a border, no fill
//canvas.drawShapesWithBorders = true
//canvas.drawShapesWithFill = false
//canvas.drawEllipse(at: Point(x: 200, y: 100), width: 50, height: 75)

//set the backgroud colour to grey
canvas.fillColor = grey
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//create a text "the jesus and mary chain"
canvas.fillColor = Color.black
canvas.drawText(message: "the jesus", at: Point(x:  10, y: 450), size: 40)
canvas.drawText(message: "and mary chain", at: Point(x: 10, y: 405), size: 40 )

// create the red circle
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 100
canvas.borderColor = lightRed
canvas.drawEllipse(at: Point(x: 200, y: 200), width: 275, height: 275)

//create the blue circle
canvas.borderColor = lightBlue
canvas.drawEllipse(at: Point(x: 350, y: 200), width: 275, height: 275)

//write down the date
canvas.drawText(message: "friday \ndecember 4 1987 \n8m show", at: Point(x: 15, y: 540), size: 10 )

// write down the second text
canvas.drawText(message: "with \nsocial disortion\nand opal", at: Point(x: 115, y: 540), size: 10 )

// write down location
canvas.drawText(message: "hollywood palladium \n6215 sunset blvd. \nlos angeles, california", at: Point(x: 250, y: 540), size: 10 )

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

