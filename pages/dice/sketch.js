'use strict';

class Die //Models one single dice cube
{

    constructor(x, y) //Constructor
    {
        this.x = x;
        this.y = y;
        this.rand = Math.floor(Math.random() * 6 + 1);
        console.log(this.rand)
    }

    show() {

        if (mousePressed) {
            if (this.rand == 1) {
                fill(255, 255, 255);
                rect(this.x, this.y, 100, 100);

                fill(0, 0, 0);
                ellipse(this.x + 50, this.y + 50, 20, 20);
            }
            if (this.rand == 2) {
                fill(255, 255, 255);
                rect(this.x, this.y, 100, 100);

                fill(0, 0, 0);
                ellipse(this.x + 25, this.y + 25, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 75, this.y + 75, 20, 20);
            }
            if (this.rand == 3) {
                fill(255, 255, 255);
                rect(this.x, this.y, 100, 100);

                fill(0, 0, 0);
                ellipse(this.x + 25, this.y + 25, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 75, this.y + 75, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 50, this.y + 50, 20, 20);
            }
            if (this.rand == 4) {
                fill(255, 255, 255);
                rect(this.x, this.y, 100, 100);

                fill(0, 0, 0);
                ellipse(this.x + 25, this.y + 25, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 75, this.y + 25, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 25, this.y + 75, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 75, this.y + 75, 20, 20);
            }
            if (this.rand == 5) {
                fill(255, 255, 255);
                rect(this.x, this.y, 100, 100);

                fill(0, 0, 0);
                ellipse(this.x + 25, this.y + 25, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 75, this.y + 25, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 25, this.y + 75, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 75, this.y + 75, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 50, this.y + 50, 20, 20);
            }
            if (this.rand == 6) {
                fill(255, 255, 255);
                rect(this.x, this.y, 100, 100);

                fill(0, 0, 0);
                ellipse(this.x + 25, this.y + 25, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 75, this.y + 25, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 25, this.y + 75, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 75, this.y + 75, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 25, this.y + 50, 20, 20);
                fill(0, 0, 0);
                ellipse(this.x + 75, this.y + 50, 20, 20);
            }

        }

    }

}


var total;

function setup() {
    createCanvas(600, 600);
    noLoop();

}

function draw() {
    background(0);

    var dieX = 50;
    var dieY = 50;
    total = 0;

    for (var i = 0; i < 9; i++) {

        var dice = new Die(dieX, dieY);
        dice.show();

        if (dieX < 450) {
            dieX += 200;
        } else if (dieY < 300) {
            dieX = 50;
            dieY += 150;
        }

        total += dice.rand;
    }

    fill(255, 255, 255);
    textSize(25);
    text("Total:" + total, 10, 590);

}


function mousePressed() {
    redraw();
}
