import 'package:flutter/material.dart';
import 'package:your_book/app/utils/theme/app_colors.dart';

class ListPages extends StatelessWidget {
  final List<String> listPages;

  ListPages({
    this.listPages,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      itemCount: listPages.length,
      itemBuilder: (BuildContext context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.primaryColor,
          ),
          child: Center(
            child: Text(
              listPages[index],
            ),
          ),
        );
      },
    );
  }
}
