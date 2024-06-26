import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class ToiletArticles extends StatefulWidget {
  @override
  State<ToiletArticles> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<ToiletArticles> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "ঝি ছো",
      "englishText": "Toilet",
      "imagePath": "assets/household/13.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Toilet.mp3"
    },
    {
      "banglaText": "ঝি চি",
      "englishText": "Toilet paper",
      "imagePath": "assets/household/14.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Toilet paper.mp3"
    },
    {
      "banglaText": "ঝি চি কা",
      "englishText": "Toilet paper holder",
      "imagePath": "assets/household/15.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Toilet/1/Toilet paper holder.mp3"
    },
    {
      "banglaText": "ছাই ছাই পান",
      "englishText": "Washbasins",
      "imagePath": "assets/household/16.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Washbasins.mp3"
    },
    {
      "banglaText": "মোকান",
      "englishText": "Towel",
      "imagePath": "assets/household/17.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Towel.mp3"
    },
    {
      "banglaText": "মোকান  কা",
      "englishText": "Towel rack",
      "imagePath": "assets/household/18.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Towel rack.mp3"
    },
    {
      "banglaText": "আ ঝাত",
      "englishText": "Tooth brush",
      "imagePath": "assets/household/19.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Tooth brush.mp3"
    },
    {
      "banglaText": "ngaa gou",
      "englishText": "Toothpaste",
      "imagePath": "assets/household/20.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Toothpaste.mp3"
    },
    {
      "banglaText": "মুক জক লউ",
      "englishText": "Shower jel",
      "imagePath": "assets/household/21.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Shower jel.mp3"
    },
    {
      "banglaText": "ফান কা",
      "englishText": "Soap",
      "imagePath": "assets/household/22.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Soap.mp3"
    },
    {
      "banglaText": "ছাই থাও ছয়",
      "englishText": "Shampoo",
      "imagePath": "assets/household/23.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Shampoo.mp3"
    },
    {
      "banglaText": "উফা সয়",
      "englishText": "Conditioner",
      "imagePath": "assets/household/24.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Conditioner.mp3"
    },
    {
      "banglaText": "ঝাত",
      "englishText": "Brush",
      "imagePath": "assets/household/25.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Brush.mp3"
    },
    {
      "banglaText": "ঝিত সেই লউ",
      "englishText": "Water heater",
      "imagePath": "assets/household/26.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Water heater.mp3"
    },
    {
      "banglaText": "ঝুক কক",
      "englishText": "Bathtub",
      "imagePath": "assets/household/27.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Bathtub.mp3"
    },
    {
      "banglaText": "সয় থং",
      "englishText": "Bucket",
      "imagePath": "assets/household/28.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Bucket.mp3"
    },
    {
      "banglaText": "তেই থো",
      "englishText": "Mop",
      "imagePath": "assets/household/29.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Mop.mp3"
    },
    {
      "banglaText": "তেই পো",
      "englishText": "Ground cloth",
      "imagePath": "assets/household/30.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Toilet/1/Ground cloth.mp3"
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
        title: Text('Toilet Articles', style: TextStyle(color: ColorIs.wColor)),
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
