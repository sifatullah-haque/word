import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Places extends StatefulWidget {
  @override
  State<Places> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<Places> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "কাউ মাত ঝুং সাম",
      "englishText": "Shopping Centre",
      "imagePath": "assets/places/1.jpg",
      "audioPath": "audio/places/1.mp3"
    },
    {
      "banglaText": "সেং চং",
      "englishText": "Shopping mall",
      "imagePath": "assets/places/2.jpg",
      "audioPath": "audio/places/2.mp3"
    },
    {
      "banglaText": "ছিউ কাপ চি ছেং",
      "englishText": "Supermarket",
      "imagePath": "assets/places/3.jpg",
      "audioPath": "audio/places/3.mp3"
    },
    {
      "banglaText": "পিন লেই তিম",
      "englishText": "Convenience store",
      "imagePath": "assets/places/4.jpg",
      "audioPath": "audio/places/4.mp3"
    },
    {
      "banglaText": "মিন পাউ পো",
      "englishText": "Bakery shop",
      "imagePath": "assets/places/5.jpg",
      "audioPath": "audio/places/5.mp3"
    },
    {
      "banglaText": "ঈয়ক ফং",
      "englishText": "Pharmacy",
      "imagePath": "assets/places/6.jpg",
      "audioPath": "audio/places/6.mp3"
    },
    {
      "banglaText": "ঝান থেং",
      "englishText": "Restaurant",
      "imagePath": "assets/places/7.jpg",
      "audioPath": "audio/places/7.mp3"
    },
    {
      "banglaText": "চাউ লে",
      "englishText": "Chinese restaurant",
      "imagePath": "assets/places/8.jpg",
      "audioPath": "audio/places/8.mp3"
    },
    {
      "banglaText": "চাউ তিম",
      "englishText": "Hotel",
      "imagePath": "assets/places/9.jpg",
      "audioPath": "audio/places/9.mp3"
    },
    {
      "banglaText": "ফাত লোং",
      "englishText": "Salon",
      "imagePath": "assets/places/10.jpg",
      "audioPath": "audio/places/10.mp3"
    },
    {
      "banglaText": "কাই ছি",
      "englishText": "Market",
      "imagePath": "assets/places/11.jpg",
      "audioPath": "audio/places/11.mp3"
    },
    {
      "banglaText": "ঝয় থং",
      "englishText": "Vegetable stalls",
      "imagePath": "assets/places/12.jpg",
      "audioPath": "audio/places/12.mp3"
    },
    {
      "banglaText": "চ্যু ইয়ু থং",
      "englishText": "Pork stalls",
      "imagePath": "assets/places/13.jpg",
      "audioPath": "audio/places/13.mp3"
    },
    {
      "banglaText": "নাআ ইয়ুক থং",
      "englishText": "Beef stalls",
      "imagePath": "assets/places/14.jpg",
      "audioPath": "audio/places/14.mp3"
    },
    {
      "banglaText": "কাই থং",
      "englishText": "Hen stalls",
      "imagePath": "assets/places/15.jpg",
      "audioPath": "audio/places/15.mp3"
    },
    {
      "banglaText": "তো ইয়ুক পো",
      "englishText": "Frozen meat stalls",
      "imagePath": "assets/places/16.jpg",
      "audioPath": "audio/places/16.mp3"
    },
    {
      "banglaText": "আন হোং",
      "englishText": "Bank",
      "imagePath": "assets/places/17.jpg",
      "audioPath": "audio/places/17.mp3"
    },
    {
      "banglaText": "হক হাউ",
      "englishText": "School",
      "imagePath": "assets/places/18.jpg",
      "audioPath": "audio/places/18.mp3"
    },
    {
      "banglaText": "ফেই কেই ঝয়ং",
      "englishText": "Airport",
      "imagePath": "assets/places/19.jpg",
      "audioPath": "audio/places/19.mp3"
    },
    {
      "banglaText": "লিন সি কোয়ান",
      "englishText": "Consulate",
      "imagePath": "assets/places/20.jpg",
      "audioPath": "audio/places/20.mp3"
    },
    {
      "banglaText": "ই লিন চ",
      "englishText": "Immigration departure",
      "imagePath": "assets/places/21.jpg",
      "audioPath": "audio/places/21.mp3"
    },
    {
      "banglaText": "ই ইয়ুন",
      "englishText": "Hospital",
      "imagePath": "assets/places/22.jpg",
      "audioPath": "audio/places/22.mp3"
    },
    {
      "banglaText": "চেং ঝা চু",
      "englishText": "Police Station",
      "imagePath": "assets/places/23.jpg",
      "audioPath": "audio/places/23.mp3"
    },
    {
      "banglaText": "ইউ",
      "englishText": "Post Office",
      "imagePath": "assets/places/24.jpg",
      "audioPath": "audio/places/24.mp3"
    },
    {
      "banglaText": "কো ছি",
      "englishText": "Company",
      "imagePath": "assets/places/25.jpg",
      "audioPath": "audio/places/25.mp3"
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
        title: Text('Places', style: TextStyle(color: ColorIs.wColor)),
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
