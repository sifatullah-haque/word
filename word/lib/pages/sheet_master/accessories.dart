import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Accessories extends StatefulWidget {
  @override
  State<Accessories> createState() => _AccessoriesState();
}

class _AccessoriesState extends State<Accessories> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "ফাত ক্যাপ",
      "englishText": "Clip",
      "imagePath": "assets/accessories/1.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Accessories/1/Clip.mp3"
    },
    {
      "banglaText": "আন কেং",
      "englishText": "Glasses",
      "imagePath": "assets/accessories/2.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Accessories/1/Glasses.mp3"
    },
    {
      "banglaText": "তাই ইয়ং আন কেং",
      "englishText": "Sun glasses",
      "imagePath": "assets/accessories/3.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Accessories/1/Sun glasses.mp3"
    },
    {
      "banglaText": "কেয়ং লিন",
      "englishText": "Necklace",
      "imagePath": "assets/accessories/4.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Accessories/1/Necklace.mp3"
    },
    {
      "banglaText": "ইয়ু ওয়ান",
      "englishText": "Earring",
      "imagePath": "assets/accessories/5.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Accessories/1/Earring.mp3"
    },
    {
      "banglaText": "সাউ পিউ",
      "englishText": "Watch",
      "imagePath": "assets/accessories/6.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Accessories/1/Watch.mp3"
    },
    {
      "banglaText": "সাই তয়",
      "englishText": "Hand bag",
      "imagePath": "assets/accessories/7.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Accessories/1/Hand bag.mp3"
    },
    {
      "banglaText": "আন পাউ",
      "englishText": "Wallets",
      "imagePath": "assets/accessories/8.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Accessories/1/Wallets.mp3"
    },
    {
      "banglaText": "আন সি পাউ",
      "englishText": "Briefcase",
      "imagePath": "assets/accessories/9.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Accessories/1/Briefcase.mp3"
    },
    {
      "banglaText": "পুই লং",
      "englishText": "Back pack",
      "imagePath": "assets/accessories/10.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Accessories/1/Back pack.mp3"
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
        title: Text('Accessories', style: TextStyle(color: ColorIs.wColor)),
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
