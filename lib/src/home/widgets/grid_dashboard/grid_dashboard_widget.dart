import 'package:assecad/src/core/core.dart';
import 'package:flutter/material.dart';

import 'package:assecad/src/shared/models/Item.dart';

class GridDashboardWidget extends StatelessWidget {
  final List<ItemModel> items;

  const GridDashboardWidget({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: items.map((data) {
            return GestureDetector(
              onTap: () => _navigateRoute(context: context, url: data.url),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 42,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title,
                      style: AppTextStyles.cadtTitle,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      data.subtitle,
                      style: AppTextStyles.cardBody,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }

  _navigateRoute({required BuildContext context, required String url}) {
    if (url == 'exit') {
      Navigator.pushReplacementNamed(context, '/login');
    } else {
      Navigator.pushNamed(context, '/$url');
    }
  }
}
