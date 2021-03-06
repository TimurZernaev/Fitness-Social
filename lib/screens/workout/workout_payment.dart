import 'package:fitness/components/credit_card.dart';
import 'package:fitness/components/credit_text.dart';
import 'package:fitness/components/main_responsive_scaffold.dart';
import 'package:fitness/components/main_scaffold.dart';
import 'package:fitness/components/round_checkbox.dart';
import 'package:fitness/components/rounded_raised_button.dart';
import 'package:fitness/components/tabbar.dart';
import 'package:fitness/constants.dart';
import 'package:fitness/data/string.dart';
import 'package:fitness/model/tabbar_item.dart';
import 'package:fitness/screens/workout/goal_action_run.dart';
import 'package:fitness/utils/navigation_util.dart';
import 'package:flutter/material.dart';

class WorkoutPaymentScreen extends StatefulWidget {
  _WorkoutPaymentScreenState createState() => _WorkoutPaymentScreenState();
}

class _WorkoutPaymentScreenState extends State<WorkoutPaymentScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  String cardNumber;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void purchasePlan(BuildContext context) {
    navPush(context, GoalActionRunScreen());
  }

  Widget build(BuildContext context) {
    return MainScaffold(
      title: 'workout',
      pageIndex: 1,
      child: Container(
        width: getWindowWidth(context),
        /* margin: EdgeInsets.symmetric(
          horizontal: 30,
        ), */
        child: Column(
          children: [
            SizedBox(height: 20),
            BlackText(strPaymentPlaceholder, 16, false, true),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryText('20 SAR', 28, true),
                SizedBox(width: 10),
                BlackText('per month', 28, true)
              ],
            ),
            SizedBox(height: 20),
            /* Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 2,
                    color: secondaryColor,
                  ),
                  insets: EdgeInsets.only(left: 25, right: 60, bottom: 4),
                ),
                labelColor: textColor,
                labelPadding: EdgeInsets.all(0),
                labelStyle: TextStyle(fontSize: 12, fontWeight: Bold),
                tabs: [
                  Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: Tab(
                      text: 'TEXT',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Tab(
                      text: 'VISA',
                    ),
                  ),
                  Tab(text: 'MASTERCARD'),
                ],
                controller: _tabController,
              ),
            ),
            Expanded(
              flex: 4,
              child: TabBarView(
                children: [
                  CreditTextView(),
                  CreditCardView(),
                  Text('Person'),
                ],
                controller: _tabController,
              ),
            ), */
            Tabbar(
              height: getWindowHeight(context) - 500,
              small: true,
              items: [
                TabbarItem(label: 'TEXT', page: CreditTextView()),
                TabbarItem(label: 'VISA', page: CreditCardView()),
                TabbarItem(label: 'MASTERCARD', page: Text('Person')),
              ],
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RoundCheckbox(),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(height: 1),
                        SizedBox(height: 12),
                        RichText(
                          text: TextSpan(
                            text: 'Try Out The Service For Free \nFor ',
                            style: TextStyle(color: textColor, fontSize: 14),
                            children: [
                              TextSpan(
                                text: '30 Days',
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        Divider(height: 1),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            /* Expanded(child: SizedBox(height: 1)), */
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: SizedBox(
                width: double.infinity,
                child: RoundedRaisedButton(
                  label: 'Proceed',
                  filled: true,
                  action: () => purchasePlan(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
