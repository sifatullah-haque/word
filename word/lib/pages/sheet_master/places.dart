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
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Company.mp3"
    },
    {
      "banglaText": "সেং চং",
      "englishText": "Shopping mall",
      "imagePath": "assets/places/2.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Shopping mall.mp3"
    },
    {
      "banglaText": "ছিউ কাপ চি ছেং",
      "englishText": "Supermarket",
      "imagePath": "assets/places/3.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Supermarket.mp3"
    },
    {
      "banglaText": "পিন লেই তিম",
      "englishText": "Convenience store",
      "imagePath": "assets/places/4.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Convenience store.mp3"
    },
    {
      "banglaText": "মিন পাউ পো",
      "englishText": "Bakery shop",
      "imagePath": "assets/places/5.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Bakery shop.mp3"
    },
    {
      "banglaText": "ঈয়ক ফং",
      "englishText": "Pharmacy",
      "imagePath": "assets/places/6.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Pharmacy.mp3"
    },
    {
      "banglaText": "ঝান থেং",
      "englishText": "Restaurant",
      "imagePath": "assets/places/7.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Restaurant.mp3"
    },
    {
      "banglaText": "চাউ লে",
      "englishText": "Chinese restaurant",
      "imagePath": "assets/places/8.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Places/1/Chinese restaurant.mp3"
    },
    {
      "banglaText": "চাউ তিম",
      "englishText": "Hotel",
      "imagePath": "assets/places/9.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Hotel.mp3"
    },
    {
      "banglaText": "ফাত লোং",
      "englishText": "Salon",
      "imagePath": "assets/places/10.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Salon.mp3"
    },
    {
      "banglaText": "কাই ছি",
      "englishText": "Market",
      "imagePath": "assets/places/11.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Market.mp3"
    },
    {
      "banglaText": "ঝয় থং",
      "englishText": "Vegetable stalls",
      "imagePath": "assets/places/12.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Vegetable stalls.mp3"
    },
    {
      "banglaText": "চ্যু ইয়ু থং",
      "englishText": "Pork stalls",
      "imagePath": "assets/places/13.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Pork stalls.mp3"
    },
    {
      "banglaText": "নাআ ইয়ুক থং",
      "englishText": "Beef stalls",
      "imagePath": "assets/places/14.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Beef stalls.mp3"
    },
    {
      "banglaText": "কাই থং",
      "englishText": "Hen stalls",
      "imagePath": "assets/places/15.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Hen stalls.mp3"
    },
    {
      "banglaText": "তো ইয়ুক পো",
      "englishText": "Frozen meat stalls",
      "imagePath": "assets/places/16.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Places/1/Frozen meat stalls.mp3"
    },
    {
      "banglaText": "আন হোং",
      "englishText": "Bank",
      "imagePath": "assets/places/17.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Bank.mp3"
    },
    {
      "banglaText": "হক হাউ",
      "englishText": "School",
      "imagePath": "assets/places/18.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/School.mp3"
    },
    {
      "banglaText": "ফেই কেই ঝয়ং",
      "englishText": "Airport",
      "imagePath": "assets/places/19.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Airport.mp3"
    },
    {
      "banglaText": "লিন সি কোয়ান",
      "englishText": "Consulate",
      "imagePath": "assets/places/20.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Consulate.mp3"
    },
    {
      "banglaText": "ই লিন চ",
      "englishText": "Immigration departure",
      "imagePath": "assets/places/21.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Places/1/Immigration departure.mp3"
    },
    {
      "banglaText": "ই ইয়ুন",
      "englishText": "Hospital",
      "imagePath": "assets/places/22.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Hospital.mp3"
    },
    {
      "banglaText": "চেং ঝা চু",
      "englishText": "Police Station",
      "imagePath": "assets/places/23.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Police Station.mp3"
    },
    {
      "banglaText": "ইউ",
      "englishText": "Post Office",
      "imagePath": "assets/places/24.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Post Office.mp3"
    },
    {
      "banglaText": "কো ছি",
      "englishText": "Company",
      "imagePath": "assets/places/25.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Places/1/Company.mp3"
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
