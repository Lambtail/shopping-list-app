


PImage shopping;
PFont productSansBold;
PFont productSansRegular;
String shoppingListItem = "";

void setup(){
    frameRate(30);
    size(1000, 500);
    surface.setTitle("ShopHard");
    background(#ffffff);
    
    shopping  =  loadImage("shophardlogo3.png");
    surface.setIcon(shopping);  //adds the app icon
    
    image(shopping, width - (width* 0.2), 0, width * 0.2, width * 0.2);
    
    productSansBold  =  createFont("prdsnsb.ttf", 40, true);
    productSansRegular = createFont("psr.ttf", 30, true);
    
    // text
    //font1  =  createFont("Arial", 400, true);
    //textAlign(LEFT); 
    //fill(0);
    //textSize(40);
    //text("Shopping Hard or Hardly Shopping", width * 0.05, height * 0.15);
    
    
    //// line
    //stroke(255);     //stroke color
    //strokeWeight(4);
    //line(10,10,width/2, height*2/3); 
    
}

void draw(){
  
  shopping  =  loadImage("shophardlogo3.png");
  size(1000, 500);
  background(#ffffff);
  image(shopping, width - (width* 0.2), 0, width * 0.2, width * 0.2);
  fill(255);
  
  textAlign(LEFT);
  fill(0);
  textFont(productSansBold);
  textSize(40);
  text("ShopHard, your Smart Shopping List", width * 0.05, height * 0.15);
  
  textSize(30);
  textFont(productSansRegular);
  text("Enter Item: " + shoppingListItem, width * 0.05, height * 0.45);
  text("Shopping hard or hardly shopping", width * 0.05, height * 0.25);

    //delay(500);
    
}

void mousePressed() {
  //msg=INIT_MSG;  //Reset message, prepare for a new message
  //println(getExternalDataFromMealDB("Stroganoff"));
  //println(formatInformationFromMealDB("Stroganoff"));
}

void keyPressed() {
  String characterToString = Character.toString(key);
  if (Character.isLetter(key)) {
    println(characterToString);
    shoppingListItem += characterToString;
  } else {
    println("Not a letter");
    println(key);
    println(keyCode);
  }
  
  // Check if backspace was pressed
  if (keyCode == 8){
    if (shoppingListItem.length() > 0) {
      String newString = shoppingListItem.substring(0, shoppingListItem.length() -1);
      shoppingListItem = newString;
      println(shoppingListItem);
    }
  }
  
  // Check if space was pressed
  if (keyCode == 32){
    shoppingListItem += " ";
  }

}
