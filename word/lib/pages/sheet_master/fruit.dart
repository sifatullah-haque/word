import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Fruits extends StatefulWidget {
  @override
  State<Fruits> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<Fruits> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "ক চাপ",
      "englishText": "Juice",
      "imagePath": "assets/fruits/1.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Fruit/1/Juice.mp3"
    },
    {
      "banglaText": "ঝাং",
      "englishText": "Orange",
      "imagePath": "assets/fruits/2.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Fruit/1/Orange.mp3"
    },
    {
      "banglaText": "লেই",
      "englishText": "Pear",
      "imagePath": "assets/fruits/3.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Fruit/1/Pear.mp3"
    },
    {
      "banglaText": "ভেং কো",
      "englishText": "Apple",
      "imagePath": "assets/fruits/4.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Fruit/1/Apple.mp3"
    },
    {
      "banglaText": "মাত কোয়া",
      "englishText": "Melon",
      "imagePath": "assets/fruits/5.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Fruit/1/Melon.mp3"
    },
    {
      "banglaText": "পোলো",
      "englishText": "Pineapple",
      "imagePath": "assets/fruits/6.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Fruit/1/Pineapple.mp3"
    },
    {
      "banglaText": "হং চিউ",
      "englishText": "Banan",
      "imagePath": "assets/fruits/7.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Fruit/1/Banan.mp3"
    },
    {
      "banglaText": "মংকো",
      "englishText": "Mango",
      "imagePath": "assets/fruits/8.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Fruit/1/Mango.mp3"
    },
    {
      "banglaText": "থাই চি",
      "englishText": "Grapes",
      "imagePath": "assets/fruits/9.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Fruit/1/Grapes.mp3"
    },
    {
      "banglaText": "সাই কোয়া",
      "englishText": "Watermelon",
      "imagePath": "assets/fruits/10.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Fruit/1/Watermelon.mp3"
    },
    {
      "banglaText": "মো কোয়া",
      "englishText": "Papaya",
      "imagePath": "assets/fruits/11.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Fruit/1/Papaya.mp3"
    },
    {
      "banglaText": "লেং মং",
      "englishText": "Lemon",
      "imagePath": "assets/fruits/12.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Fruit/1/Lemon.mp3"
    },
    {
      "banglaText": "সি তো পেলে",
      "englishText": "Strawberry",
      "imagePath": "assets/fruits/13.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Fruit/1/Strawberry.mp3"
    }
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
        title: Text('Fruit', style: TextStyle(color: ColorIs.wColor)),
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
