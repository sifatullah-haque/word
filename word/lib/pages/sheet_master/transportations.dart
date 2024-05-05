import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Transportations extends StatefulWidget {
  @override
  State<Transportations> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<Transportations> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "তেই থিত",
      "englishText": "MTR",
      "imagePath": "assets/transportation/1.jpg",
      "audioPath": "audio/transportation/1.mp3"
    },
    {
      "banglaText": "তেই থিত চাম",
      "englishText": "MTR Station",
      "imagePath": "assets/transportation/2.jpg",
      "audioPath": "audio/transportation/2.mp3"
    },
    {
      "banglaText": "বাছি",
      "englishText": "Bus",
      "imagePath": "assets/transportation/3.jpg",
      "audioPath": "audio/transportation/3.mp3"
    },
    {
      "banglaText": "বাছি চাম",
      "englishText": "Bus station",
      "imagePath": "assets/transportation/4.jpg",
      "audioPath": "audio/transportation/4.mp3"
    },
    {
      "banglaText": "ছি পা",
      "englishText": "Mini-Bus",
      "imagePath": "assets/transportation/5.jpg",
      "audioPath": "audio/transportation/5.mp3"
    },
    {
      "banglaText": "ছি পা চাম",
      "englishText": "Mini-bus station",
      "imagePath": "assets/transportation/6.jpg",
      "audioPath": "audio/transportation/6.mp3"
    },
    {
      "banglaText": "তেক ছি",
      "englishText": "Taxi",
      "imagePath": "assets/transportation/7.jpg",
      "audioPath": "audio/transportation/7.mp3"
    },
    {
      "banglaText": "তেক ছি চাম",
      "englishText": "Taxi station",
      "imagePath": "assets/transportation/8.jpg",
      "audioPath": "audio/transportation/8.mp3"
    },
    {
      "banglaText": "ফ ছে",
      "englishText": "Train",
      "imagePath": "assets/transportation/9.jpg",
      "audioPath": "audio/transportation/9.mp3"
    },
    {
      "banglaText": "ফ  ছে চাম",
      "englishText": "Train Station",
      "imagePath": "assets/transportation/10.jpg",
      "audioPath": "audio/transportation/10.mp3"
    },
    {
      "banglaText": "তিয়েন ছ",
      "englishText": "Tram",
      "imagePath": "assets/transportation/11.jpg",
      "audioPath": "audio/transportation/11.mp3"
    },
    {
      "banglaText": "তিয়েন ছ  চাম",
      "englishText": "Tram Station",
      "imagePath": "assets/transportation/12.jpg",
      "audioPath": "audio/transportation/12.mp3"
    },
    {
      "banglaText": "ছ গান ছি",
      "englishText": "Private Car",
      "imagePath": "assets/transportation/13.jpg",
      "audioPath": "audio/transportation/13.mp3"
    },
    {
      "banglaText": "ত ঝইয়ান",
      "englishText": "Ferry",
      "imagePath": "assets/transportation/14.jpg",
      "audioPath": "audio/transportation/14.mp3"
    },
    {
      "banglaText": "পাতা থং",
      "englishText": "Octopus",
      "imagePath": "assets/transportation/15.jpg",
      "audioPath": "audio/transportation/15.mp3"
    },
    {
      "banglaText": "ফেই কেই",
      "englishText": "Airplane",
      "imagePath": "assets/transportation/16.jpg",
      "audioPath": "audio/transportation/16.mp3"
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
        title: Text('Transportation', style: TextStyle(color: ColorIs.wColor)),
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
