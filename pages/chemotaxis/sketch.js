'use strict';
class Bacteria {

    //Constructor 

    constructor() {
        this.x = 50;
        this.y = 50;
        this.xIncrement = 2;
        this.yIncrement = 2;
    }

    show() {

        //body
        fill(240, 228, 10);
        ellipse(this.x, this.y, 35, 30);
        //eye
        fill(255, 255, 255);
        ellipse(this.x + 11, this.y, 5, 5);
        //stinger
        fill(0, 0, 0);
        triangle(this.x - 23, this.y, this.x - 15, this.y - 7, this.x - 15, this.y + 7);
        //stripes
        fill(0, 0, 0);
        rect(this.x, this.y - 13, 5, 27);
        fill(0, 0, 0);
        rect(this.x - 10, this.y - 13, 5, 27);
    }

    move() {
        this.x += (Math.random() * 5) - 2;
        this.y += (Math.random() * 5) - 2;

        if (this.x < 30 || this.x > width - 55) {
            this.xIncrement *= -1;
        }
        if (this.y < 30 || this.y > width - 55) {
            this.yIncrement *= -1;
        }

        this.x += this.xIncrement;
        this.y += this.yIncrement;

    }

}


var b = new Array();

function setup() {
    createCanvas(700, 700);

    for (var i = 0; i < 18; i++) {
        b[i] = new Bacteria();
    }
}

function draw() {
    background(16, 100, 173);
    fill(232, 222, 23);
    ellipse(70, 70, 90, 90);
    fill(20, 158, 13);
    rect(-5, 680, 805, 30);

    for (var i = 0; i < b.length; i++) {
        b[i].show();
        b[i].move();
    }
}

//////////////////////////////////////////////////////////////
