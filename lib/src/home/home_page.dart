import 'package:assecad/src/core/core.dart';
import 'package:flutter/material.dart';

import 'home_controller.dart';
import 'home_state.dart';
import 'widgets/grid_dashboard/grid_dashboard_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getItems();

    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.success) {
      return Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 75,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Olá,",
                          style: AppTextStyles.title,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Claysllan Xavier",
                          style: AppTextStyles.titleBold,
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.notifications_none,
                        size: 24,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                GridDashboardWidget(
                  items: controller.items!,
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.blue),
          ),
        ),
      );
    }
  }
}
