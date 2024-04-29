import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';
import 'package:word/pages/familyPage.dart';
import 'package:word/pages/searchPage.dart';

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
                itemCount: 5, // Number of containers/pages
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
                                builder: (context) => FamilyPage()),
                          );
                          break;
                        case 1:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NumbersPage()),
                          );
                          break;
                        case 2:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CountryPage()),
                          );
                          break;
                        // Add cases for additional containers/pages
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
                          style: const TextStyle(
                              color: ColorIs.textColor, fontSize: 18.0),
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
      case 0:
        return "Family";
      case 1:
        return "Numbers";
      case 2:
        return "Country";
      // Add more cases for additional containers
      case 3:
        return "Directions";
      case 4:
        return "Colors";
      default:
        return "Text $index"; // Placeholder text for additional containers
    }
  }
}

class NumbersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers Page'),
      ),
      body: Center(
        child: Text('Numbers Content'),
      ),
    );
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
