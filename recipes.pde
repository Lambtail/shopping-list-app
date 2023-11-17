import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.io.UnsupportedEncodingException;

//Proposed API:
//www.themealdb.com/api/json/v1/1/search.php?s=Arrabiata

String formatInformationFromMealDB(String nameOfMeal) {
  
  JSONObject recipeInformation = getExternalDataFromMealDB(nameOfMeal);
  String result = "No recipe found";
  
  if (recipeInformation != null && recipeInformation.getJSONArray("data").size() > 0) {
    JSONObject ingredientInfo = recipeInformation.getJSONArray("data").getJSONObject(0);
    println(ingredientInfo);
    result = String.format("Ingredients: %s", 
                                   ingredientInfo.getString("strIngredient1"));
  }
  return result;
}

JSONObject getExternalDataFromMealDB(String mealName) {
  final String ENDPOINT = "https://www.themealdb.com/api/json/v1/1/search.php?";
  //s=Arrabiata
  
  String search = "s=";
  println(ENDPOINT + search + mealName);
  println(loadJSONObject(ENDPOINT + search + mealName));
  return loadJSONObject(ENDPOINT + search + mealName);
}
