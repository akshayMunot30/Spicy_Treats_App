import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/categories_screen.dart';
import '../screens/category_meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: 'Spicy Treats',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        // textTheme: ThemeData.light().textTheme.copyWith(
        //       bodyText1: TextStyle(
        //         color: Color.fromRGBO(20, 51, 51, 1),
        //       ),
        //       bodyText2: TextStyle(
        //         color: Color.fromRGBO(20, 51, 51, 1),
        //       ),
        //       headline6: TextStyle(
        //         fontSize: 18,
        //         fontFamily: 'RobtoCondensed',
        //       ),
        //     ),
        textTheme: GoogleFonts.ralewayTextTheme().copyWith(
          bodyText1: GoogleFonts.raleway(
            textStyle: textTheme.bodyText1,
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyText2: GoogleFonts.raleway(
            textStyle: textTheme.bodyText2,
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          headline6: GoogleFonts.robotoCondensed(
            textStyle: textTheme.headline6,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // home: CategoriesScreen(),
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
