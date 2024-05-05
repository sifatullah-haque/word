import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';
import 'package:word/pages/class1/body.dart';
import 'package:word/pages/class1/colors.dart';
import 'package:word/pages/class1/directions.dart';
import 'package:word/pages/class1/familyPage.dart';
import 'package:word/pages/class1/greetings.dart';
import 'package:word/pages/class1/number_page.dart';
import 'package:word/pages/class1/taste.dart';
import 'package:word/pages/searchPage.dart';
import 'package:word/pages/class1/time.dart';
import 'package:word/pages/class1/weather.dart';
import 'package:word/pages/sheet_master/accessories.dart';
import 'package:word/pages/sheet_master/bedroom.dart';
import 'package:word/pages/sheet_master/body_care.dart';
import 'package:word/pages/sheet_master/clothings.dart';
import 'package:word/pages/sheet_master/cooking.dart';
import 'package:word/pages/sheet_master/drinks.dart';
import 'package:word/pages/sheet_master/electrical_appliance.dart';
import 'package:word/pages/sheet_master/food.dart';
import 'package:word/pages/sheet_master/fruit.dart';
import 'package:word/pages/sheet_master/home_clearning.dart';
import 'package:word/pages/sheet_master/home_items.dart';
import 'package:word/pages/sheet_master/kitchenwere.dart';
import 'package:word/pages/sheet_master/living_creature.dart';
import 'package:word/pages/sheet_master/pet.dart';
import 'package:word/pages/sheet_master/places.dart';
import 'package:word/pages/sheet_master/sea_food.dart';
import 'package:word/pages/sheet_master/seasoning.dart';
import 'package:word/pages/sheet_master/sickness.dart';
import 'package:word/pages/sheet_master/simple_conversations.dart';
import 'package:word/pages/sheet_master/soup_bases.dart';
import 'package:word/pages/sheet_master/study_room.dart';
import 'package:word/pages/sheet_master/toilet_articles.dart';
import 'package:word/pages/sheet_master/transportations.dart';
import 'package:word/pages/sheet_master/vegetable.dart';
import 'package:word/pages/sheet_master/verb.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorIs.backgroundColor,
      appBar: AppBar(
        title: Text(
          "Let's get started",
          style: TextStyle(color: ColorIs.wColor),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        centerTitle: true,
        backgroundColor: ColorIs.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPage()),
                    );
                  },
                  child: Container(
                      height: 80.h,
                      decoration: BoxDecoration(
                        color: ColorIs.wColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //text about searching
                            const Text(
                              'Search for word',
                              style: TextStyle(
                                  color: ColorIs.textColor,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w300),
                            ),
                            //right arrow icon in primary color
                            Container(
                              height: 40.h,
                              width: 40.h,
                              decoration: BoxDecoration(
                                color: ColorIs.primaryColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Icon(
                                CupertinoIcons.arrow_right,
                                color: ColorIs.wColor,
                              ),
                            )
                          ],
                        ),
                      )),
                )),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              flex: 10,
              child: GridView.builder(
                itemCount: 34, // Number of containers/pages
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigate to the corresponding page
                      switch (index) {
                        case 0:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NumberPage()),
                          );
                          break;
                        case 1:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FamilyPage()),
                          );
                          break;
                        case 2:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Directions()),
                          );
                          break;
                        case 3:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Weather()),
                          );
                          break;
                        case 4:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ColorsPage()),
                          );
                          break;
                        case 5:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Greetings()),
                          );
                          break;
                        case 6:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Time()),
                          );
                          break;
                        case 7:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Body()),
                          );
                          break;
                        case 8:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BodyCare()),
                          );
                          break;
                        case 9:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeItems()),
                          );
                          break;
                        case 10:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeCleaning()),
                          );
                          break;
                        case 11:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bedroom()),
                          );
                          break;
                        case 12:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StudyRoom()),
                          );
                          break;
                        case 13:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Kitchenware()),
                          );
                          break;
                        case 14:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ElectricalAppliance()),
                          );
                          break;
                        case 15:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ToiletArticles()),
                          );
                          break;
                        case 16:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Food()),
                          );
                          break;
                        case 17:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SeaFood()),
                          );
                          break;
                        case 18:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cooking()),
                          );
                          break;
                        case 19:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Vegetable()),
                          );
                          break;
                        case 20:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SoupBases()),
                          );
                          break;
                        case 21:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Seasoning()),
                          );
                          break;
                        case 22:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Fruits()),
                          );
                          break;
                        case 23:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Drinks()),
                          );
                          break;
                        case 24:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Clothings()),
                          );
                          break;
                        case 25:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Accessories()),
                          );
                          break;
                        case 26:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sickness()),
                          );
                          break;
                        case 27:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Pet()),
                          );
                          break;
                        case 28:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LivingCreature()),
                          );
                          break;
                        case 29:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Places()),
                          );
                          break;
                        case 30:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Transportations()),
                          );
                          break;
                        case 31:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Verb()),
                          );
                          break;
                        case 32:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SimpleConversation()),
                          );
                          break;
                        case 33:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Taste()),
                          );
                          break;
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: ColorIs.wColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          _getTextForIndex(index),
                          style: TextStyle(
                              color: ColorIs.textColor, fontSize: 20.sp),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getTextForIndex(int index) {
    // Define your texts for each container here
    switch (index) {
      //class1 from the exel sheet start here
      case 0:
        return "Numbers";
      case 1:
        return "Family";
      case 2:
        return "Directions";

      case 3:
        return "Weather";
      case 4:
        return "Colors";
      case 5:
        return "Greetings";
      case 6:
        return "Time"; //before Colors in the exel sheet
      case 7:
        return "Body";
      case 8:
        return "Body\nCare";
      //sheet master page start here
      case 9:
        return "Home\nItems";
      case 10:
        return "Home\nCleaning";
      case 11:
        return "Bedroom";
      case 12:
        return "Study\nRoom";
      case 13:
        return "Kitchen\nware";
      case 14:
        return "Electrical\nAppliances";
      case 15:
        return "Toilet\nArticles";
      case 16:
        return "Food";
      case 17:
        return "Seafood"; //before Colors in the exel sheet
      case 18:
        return "Cooking";
      case 19:
        return "Vegetables";

      case 20:
        return "Soup\nBases";
      case 21:
        return "Seasonings";
      case 22:
        return "Fruits";
      case 23:
        return "Drinks";
      case 24:
        return "Clothings";
      case 25:
        return "Accessories";
      case 26:
        return "Sickness";

      case 27:
        return "Pet";
      case 28:
        return "Living\nCreatures";
      case 29:
        return "Places";
      case 30:
        return "Transport";
      case 31:
        return "Verb";
      case 32:
        return "Simple\nConvo";
      case 33:
        return "Taste";

      default:
        return "Text $index"; // Placeholder text for additional containers
    }
  }
}

class CountryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Page'),
      ),
      body: Center(
        child: Text('Country Content'),
      ),
    );
  }
}
