import 'package:flutter/material.dart';
import 'package:your_book/app/modules/book/book_form.dart';
import 'package:your_book/app/modules/home/home_page.dart';
import 'package:your_book/app/utils/theme/app_themes.dart';

class AppYourBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.defaultTheme,
      // home: HomePage(),
      home: BookForm(),
    );
  }
}
