//: [Previous](@previous)
//: # Exercise - Loops and Conditionals
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![sloan-no-grid.png](sloan-no-grid.png "Sloan")
 ![sloan-with-grid.png](sloan-with-grid.png "Sloan")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * iteration (use of loops)
 * conditional (if statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLOR CONSTANTS
let deepOrange = Color(hue: 12, saturation: 78, brightness: 92, alpha: 100)
let lightBlue = Color(hue: 195, saturation: 63, brightness: 92, alpha: 100)
let neonGreen = Color(hue: 107, saturation: 61, brightness: 93, alpha: 100)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.


// make the background orange
canvas.drawShapesWithBorders = false
canvas.fillColor = deepOrange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// write "sloan"
canvas.textColor = Color.white
canvas.drawText(message: "sloan", at: Point(x: 152, y: 425), size: 70)

// draw the pillars

canvas.defaultLineWidth = 50

// using a loop we can seperate the green and blue pillars
for NumberOfLine in stride(from: 0, through: 400, by: 50) {
    
    print(NumberOfLine)
    //dividing NumberOfLine with 50 gives us a Number that is either even or odd
    let Number = NumberOfLine/50
    
    //if that number is even we draw a green pillar
    
    if Number % 2 == 0 {
        print(2)
        canvas.lineColor = neonGreen
        canvas.drawLine(from: Point(x: NumberOfLine - 25, y: 75), to: Point(x: NumberOfLine - 25, y: 400))
    } else if Number % 2 == 1 {
        canvas.lineColor = lightBlue
        canvas.drawLine(from: Point(x: NumberOfLine - 25, y: 0), to: Point(x: NumberOfLine - 25, y: 350))
    }
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

