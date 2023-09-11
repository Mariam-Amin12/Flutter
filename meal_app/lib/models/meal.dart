class Meal
{
  final String id;
  final String title;
  final List<String> categories;
  final String imageUrl;
  final List<String>ingredients;
  final List <String>steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian ;
   bool isselected;

   Meal({
    required this.isselected,
    required this.id,
    required this.title,
    required this.duration,
    required this.categories,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,

});

  // setisselected (bool b)
  // {
  //   isselected =b;
  // }
}
enum Complexity
{
  Simple ,
  Challenging,
  Hard
}
enum Affordability
{
  Affordable,
  Pricey,
  Luxurious,
}
