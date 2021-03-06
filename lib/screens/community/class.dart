import 'package:fitness/components/color_dot.dart';
import 'package:fitness/components/image_slider.dart';
import 'package:fitness/components/main_responsive_scaffold.dart';
import 'package:fitness/components/requirements.dart';
import 'package:fitness/constants.dart';
import 'package:fitness/model/class.dart';
import 'package:fitness/model/require_item.dart';
import 'package:fitness/components/nav_second_bar.dart';
import 'package:flutter/material.dart';

class CommunityClassScreen extends StatefulWidget {
  _CommunityClasssScreenState createState() => _CommunityClasssScreenState();
}

class _CommunityClasssScreenState extends State<CommunityClassScreen> {
  Class cls;
  void initState() {
    super.initState();
    cls = Class(
      name: 'Boxing Class',
      date: '17-Dec-2020',
      period: '7 AM - 8 AM',
      description:
          'Brief description for this activity .. Brief description for this activity .. Brief description for this activity .. Brief description for this activity .. Brief description for this activity .. Brief description for this activity .. ',
      type: 'Beginner',
      images: [
        'exercise-photo1',
        'exercise-photo2',
        'exercise-photo3',
      ],
    );
  }

  Widget build(BuildContext context) {
    return MainResponsiveScaffold(
      title: cls.name,
      pageIndex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageSlider(
            images: cls.images,
            dotColor: primaryColor,
            titleText: BlackText(cls.name, 24, true),
            bulletBottom: true,
          ),
          Padding(
            padding: mainHrPadding,
            child: PrimaryText(cls.type, 12, true),
          ),
          SizedBox(height: 20),
          Container(
            padding: mainHrPadding,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Image(
                        image: getIcon('calendar'),
                      ),
                      SizedBox(width: 20),
                      BlackText(cls.date, 14, true),
                      Expanded(child: SizedBox()),
                      GreyText(cls.period, 11, true),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    cls.description,
                    style: TextStyle(fontSize: 11, color: greyTextColor),
                  ),
                ),
              ],
            ),
          ),
          NavSecondBar(
              title: 'TB Building, Tahlia Street, Riyadh',
              titleActive: true,
              prefixIcon: 'send'),
          Container(
            padding: mainHrPadding,
            child: Column(
              children: [
                RequirementsBlock(items: [
                  RequireItem(field: 'Boxing Kit', require: true),
                  RequireItem(field: 'Boxing Clothes', require: true),
                  RequireItem(field: 'Water Bottle', require: false),
                ])
              ],
            ),
          ),
          PrimaryBlockButton(
            label: 'Join',
            action: () => {},
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
