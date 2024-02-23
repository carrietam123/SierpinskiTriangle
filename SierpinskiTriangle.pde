private int bl;
public void setup(){
size(400, 400);
background(225);
bl= 20;
sierpinski(50, height - 50, 300);
}
public void draw()
{

}

public void sierpinski(int x, int y, int len) {
 if (len <= bl) {
            triangle(x, y, x + len, y, x + len / 2, y - len);
        } else {
            sierpinski(x, y, len / 2);
            sierpinski(x + len / 2, y, len / 2);
            sierpinski(x + len / 4, y - len / 2, len / 2);
        }
}
