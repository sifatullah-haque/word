import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Seasoning extends StatefulWidget {
  @override
  State<Seasoning> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<Seasoning> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "থং",
      "englishText": "Sugar",
      "imagePath": "assets/foods/9.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Sugar.mp3"
    },
    {
      "banglaText": "ইম",
      "englishText": "Salt",
      "imagePath": "assets/foods/10.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Salt.mp3"
    },
    {
      "banglaText": "সি  ইয়াও",
      "englishText": "Soy sauce",
      "imagePath": "assets/foods/11.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Soy sauce.mp3"
    },
    {
      "banglaText": "লো ঝাউ",
      "englishText": "Dark soy sauce",
      "imagePath": "assets/foods/12.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Dark soy sauce.mp3"
    },
    {
      "banglaText": "সান ফান",
      "englishText": "Cornstarch",
      "imagePath": "assets/foods/13.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Cornstarch.mp3"
    },
    {
      "banglaText": "কাই ফান",
      "englishText": "Chicken Powder",
      "imagePath": "assets/foods/14.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Chicken Powder.mp3"
    },
    {
      "banglaText": "ফা সাং ইয়াও",
      "englishText": "Peanut oil",
      "imagePath": "assets/foods/15.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Peanut oil.mp3"
    },
    {
      "banglaText": "হউ ঝাউ",
      "englishText": "Oyster sauce",
      "imagePath": "assets/foods/16.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Oyster sauce.mp3"
    },
    {
      "banglaText": "মা  ইয়াও",
      "englishText": "Seame oil",
      "imagePath": "assets/foods/17.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Seame oil.mp3"
    },
    {
      "banglaText": "খে চাপ",
      "englishText": "Ketchup",
      "imagePath": "assets/foods/18.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Ketchup.mp3"
    },
    {
      "banglaText": "মাত থং",
      "englishText": "Honey",
      "imagePath": "assets/foods/19.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Honey.mp3"
    },
    {
      "banglaText": "ঝোউ",
      "englishText": "Vinegar",
      "imagePath": "assets/foods/20.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Vinegar.mp3"
    },
    {
      "banglaText": "চাউ",
      "englishText": "Wine",
      "imagePath": "assets/foods/21.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Wine.mp3"
    },
    {
      "banglaText": "উ চিউ ফান",
      "englishText": "Pepper",
      "imagePath": "assets/foods/22.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Peper.mp3"
    },
    {
      "banglaText": "লাত চিউ চয়ং",
      "englishText": "Chili sauce",
      "imagePath": "assets/foods/23.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Seasoning/1/Chili sauce.mp3"
    },
  ];
  AudioPlayer? audioPlayer;
  bool isPlaying = false;
  int? currentlyPlayingIndex;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    audioPlayer?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorIs.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorIs.primaryColor,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: Text('Seasoning', style: TextStyle(color: ColorIs.wColor)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 15.h), // Space between AppBar and GridView
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 containers per row
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0, // You can adjust this ratio as needed
                ),
                itemCount: containerData.length,
                itemBuilder: (context, index) {
                  // Extract data for each container
                  final data = containerData[index];
                  // Check if the current index matches the index of the container that is currently playing audio
                  final bool isCurrentlyPlaying =
                      currentlyPlayingIndex == index;
                  return Container(
                    height: 192.h,
                    width: 192.h,
                    decoration: BoxDecoration(
                      color: ColorIs.wColor,
                      borderRadius: BorderRadius.circular(10.h),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6.0, vertical: 3.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data['banglaText'],
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w300,
                                        color: ColorIs.textColor,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      data['englishText'],
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w400,
                                        color: ColorIs.textColor,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () async {
                                    if (currentlyPlayingIndex == index) {
                                      // If the clicked container is already playing audio, stop it
                                      await audioPlayer?.stop();
                                      setState(() {
                                        currentlyPlayingIndex = null;
                                      });
                                    } else {
                                      // Otherwise, stop the currently playing audio (if any) and start playing the audio of the clicked container
                                      await audioPlayer?.stop();
                                      await audioPlayer?.play(
                                          AssetSource(data['audioPath']));
                                      setState(() {
                                        currentlyPlayingIndex = index;
                                      });
                                    }
                                  },
                                  child: Icon(
                                    isCurrentlyPlaying
                                        ? Icons.pause_circle_filled
                                        : Icons.play_circle_fill_rounded,
                                    size: 35.0,
                                    color: ColorIs.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Container(
                            height: 120.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(data['imagePath']),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.h),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
