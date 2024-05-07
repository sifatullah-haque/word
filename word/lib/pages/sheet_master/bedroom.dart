import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Bedroom extends StatefulWidget {
  @override
  State<Bedroom> createState() => _BedroomState();
}

class _BedroomState extends State<Bedroom> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "ছয় ফং",
      "englishText": "Bedroom",
      "imagePath": "assets/bedroom/1.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Bedroom.mp3"
    },
    {
      "banglaText": "পি পি ফং",
      "englishText": "Baby's room",
      "imagePath": "assets/bedroom/2.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Baby room.mp3"
    },
    {
      "banglaText": "চয় মাত ফং",
      "englishText": "Store room",
      "imagePath": "assets/bedroom/3.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Store room.mp3"
    },
    {
      "banglaText": "ঝং",
      "englishText": "Bed",
      "imagePath": "assets/bedroom/4.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Bed.mp3"
    },
    {
      "banglaText": "ছংতাউ কেই",
      "englishText": "Beside cabinet",
      "imagePath": "assets/bedroom/5.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Beside cabinet.mp3"
    },
    {
      "banglaText": "ঝং জুক",
      "englishText": "Mattress",
      "imagePath": "assets/bedroom/6.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Mattress.mp3"
    },
    {
      "banglaText": "ঝং তান",
      "englishText": "Sheet",
      "imagePath": "assets/bedroom/7.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Sheet.mp3"
    },
    {
      "banglaText": "চাম থাও",
      "englishText": "Pillow",
      "imagePath": "assets/bedroom/8.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Pillow.mp3"
    },
    {
      "banglaText": "চাম থাও তয়",
      "englishText": "Pillowcases",
      "imagePath": "assets/bedroom/9.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Pillowcases.mp3"
    },
    {
      "banglaText": "পেই তয়",
      "englishText": "Quilt Cover",
      "imagePath": "assets/bedroom/10.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Quilt Cover.mp3"
    },
    {
      "banglaText": "মিন পেই",
      "englishText": "Quilt",
      "imagePath": "assets/bedroom/11.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Quilt.mp3"
    },
    {
      "banglaText": "মোকান পেই",
      "englishText": "Towel blanket",
      "imagePath": "assets/bedroom/12.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Towel blanket.mp3"
    },
    {
      "banglaText": "ফেই",
      "englishText": "Blanket",
      "imagePath": "assets/bedroom/13.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Blanket.mp3"
    },
    {
      "banglaText": "চিপ ফেই",
      "englishText": "Fold the blanket",
      "imagePath": "assets/bedroom/14.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Fold the blanket.mp3"
    },
    {
      "banglaText": "জি কোয়াই",
      "englishText": "Wardrobe",
      "imagePath": "assets/bedroom/15.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Wardrobe.mp3"
    },
    {
      "banglaText": "কোয়ই থং",
      "englishText": "Drawer",
      "imagePath": "assets/bedroom/16.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Drawer.mp3"
    },
    {
      "banglaText": "ই কা",
      "englishText": "Hanger",
      "imagePath": "assets/bedroom/17.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Bedroom/1/Hanger.mp3"
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
        title: Text('Bedroom', style: TextStyle(color: ColorIs.wColor)),
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
