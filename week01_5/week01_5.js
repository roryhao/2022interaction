
function setup() {
    initializeFields();
    createCanvas(500, 500);
    background(color(0xCA, 0xD6, 0x77));
    stroke(255, 0, 0);
}

function draw() {
    if (mouseIsPressed) {
        line(mouseX, mouseY, pmouseX, pmouseY);
    }
}

function keyPressed() {
    if (key == '1')
        stroke(color(0x48, 0x4B, 0x38));
    if (key == '2')
        stroke(color(0x47, 0x1A, 0x6C));
    if (key == '3')
        stroke(color(0x12, 0x9F, 0xE3));
}

function initializeFields() {
}
