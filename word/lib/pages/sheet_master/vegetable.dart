import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Vegetable extends StatefulWidget {
  @override
  State<Vegetable> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<Vegetable> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "লাত চিউ",
      "englishText": "Chili",
      "imagePath": "assets/cooking/4.jpg",
      "audioPath": "audio/cooking/4.mp3"
    },
    {
      "banglaText": "ঝোং",
      "englishText": "Spring Onions",
      "imagePath": "assets/cooking/5.jpg",
      "audioPath": "audio/cooking/5.mp3"
    },
    {
      "banglaText": "কন ঝোং",
      "englishText": "Dried onions",
      "imagePath": "assets/cooking/6.jpg",
      "audioPath": "audio/cooking/6.mp3"
    },
    {
      "banglaText": "ইয়োং ঝোং",
      "englishText": "Onions",
      "imagePath": "assets/cooking/7.jpg",
      "audioPath": "audio/cooking/7.mp3"
    },
    {
      "banglaText": "ঝেং চিউ",
      "englishText": "Green peppers",
      "imagePath": "assets/cooking/8.jpg",
      "audioPath": "audio/cooking/8.mp3"
    },
    {
      "banglaText": "সুন থাউ",
      "englishText": "Garlic",
      "imagePath": "assets/cooking/9.jpg",
      "audioPath": "audio/cooking/9.mp3"
    },
    {
      "banglaText": "ঝয় সাম",
      "englishText": "Flowering cabbage",
      "imagePath": "assets/cooking/10.jpg",
      "audioPath": "audio/cooking/10.mp3"
    },
    {
      "banglaText": "সাং ঝয়",
      "englishText": "Lettuce",
      "imagePath": "assets/cooking/11.jpg",
      "audioPath": "audio/cooking/11.mp3"
    },
    {
      "banglaText": "পো ঝয়",
      "englishText": "Spinach",
      "imagePath": "assets/cooking/12.jpg",
      "audioPath": "audio/cooking/12.mp3"
    },
    {
      "banglaText": "চি ঝয়",
      "englishText": "Cabbage ball",
      "imagePath": "assets/cooking/13.jpg",
      "audioPath": "audio/cooking/13.mp3"
    },
    {
      "banglaText": "তোং ঝয়",
      "englishText": "Water spinach",
      "imagePath": "assets/cooking/14.jpg",
      "audioPath": "audio/cooking/14.mp3"
    },
    {
      "banglaText": "পাক ঝয়",
      "englishText": "Chinese cabbage",
      "imagePath": "assets/cooking/15.jpg",
      "audioPath": "audio/cooking/15.mp3"
    },
    {
      "banglaText": "ফোকমো ইয়্যুন",
      "englishText": "Watercress",
      "imagePath": "assets/cooking/16.jpg",
      "audioPath": "audio/cooking/16.mp3"
    },
    {
      "banglaText": "কাই লান",
      "englishText": "Chinese broccoli",
      "imagePath": "assets/cooking/17.jpg",
      "audioPath": "audio/cooking/17.mp3"
    },
    {
      "banglaText": "ইয়ে ঝয় ফা",
      "englishText": "Cauliflower",
      "imagePath": "assets/cooking/18.jpg",
      "audioPath": "audio/cooking/18.mp3"
    },
    {
      "banglaText": "সাইলাণ ফা",
      "englishText": "Broccoli",
      "imagePath": "assets/cooking/19.jpg",
      "audioPath": "audio/cooking/19.mp3"
    },
    {
      "banglaText": "তোং কূ",
      "englishText": "Straw mushroom",
      "imagePath": "assets/cooking/20.jpg",
      "audioPath": "audio/cooking/20.mp3"
    },
    {
      "banglaText": "মাত থং",
      "englishText": "Honey Beans",
      "imagePath": "assets/cooking/21.jpg",
      "audioPath": "audio/cooking/21.mp3"
    },
    {
      "banglaText": "ঝেং তাউ",
      "englishText": "Green beans",
      "imagePath": "assets/cooking/22.jpg",
      "audioPath": "audio/cooking/22.mp3"
    },
    {
      "banglaText": "তোং কূ",
      "englishText": "Chinese Mushrooms",
      "imagePath": "assets/cooking/23.jpg",
      "audioPath": "audio/cooking/23.mp3"
    },
    {
      "banglaText": "মকূ",
      "englishText": "Mushrooms",
      "imagePath": "assets/cooking/24.jpg",
      "audioPath": "audio/cooking/24.mp3"
    },
    {
      "banglaText": "স্যু চাই",
      "englishText": "Potato",
      "imagePath": "assets/cooking/25.jpg",
      "audioPath": "audio/cooking/25.mp3"
    },
    {
      "banglaText": "তোং কোয়া",
      "englishText": "Melon",
      "imagePath": "assets/cooking/26.jpg",
      "audioPath": "audio/cooking/26.mp3"
    },
    {
      "banglaText": "তাউ কক",
      "englishText": "Beans",
      "imagePath": "assets/cooking/27.jpg",
      "audioPath": "audio/cooking/27.mp3"
    },
    {
      "banglaText": "ফান স্যু",
      "englishText": "Sweet Potato",
      "imagePath": "assets/cooking/28.jpg",
      "audioPath": "audio/cooking/28.mp3"
    },
    {
      "banglaText": "আই কোয়া",
      "englishText": "Eggplant",
      "imagePath": "assets/cooking/29.jpg",
      "audioPath": "audio/cooking/29.mp3"
    },
    {
      "banglaText": "হংলো পা",
      "englishText": "Carrot",
      "imagePath": "assets/cooking/30.jpg",
      "audioPath": "audio/cooking/30.mp3"
    },
    {
      "banglaText": "ঝেং কোয়া",
      "englishText": "Cucumber",
      "imagePath": "assets/cooking/31.jpg",
      "audioPath": "audio/cooking/31.mp3"
    },
    {
      "banglaText": "কোয়া",
      "englishText": "Zucchini",
      "imagePath": "assets/cooking/32.jpg",
      "audioPath": "audio/cooking/32.mp3"
    },
    {
      "banglaText": "সুক মাই",
      "englishText": "Corn",
      "imagePath": "assets/cooking/33.jpg",
      "audioPath": "audio/cooking/33.mp3"
    },
    {
      "banglaText": "ঝেং লো পা",
      "englishText": "Green radish",
      "imagePath": "assets/cooking/34.jpg",
      "audioPath": "audio/cooking/34.mp3"
    },
    {
      "banglaText": "ফান খেই",
      "englishText": "Tomato",
      "imagePath": "assets/cooking/35.jpg",
      "audioPath": "audio/cooking/35.mp3"
    },
    {
      "banglaText": "আ ঝয়",
      "englishText": "Sprouts",
      "imagePath": "assets/cooking/36.jpg",
      "audioPath": "audio/cooking/36.mp3"
    },
    {
      "banglaText": "লিন নাও",
      "englishText": "Lotus root",
      "imagePath": "assets/cooking/37.jpg",
      "audioPath": "audio/cooking/37.mp3"
    },
    {
      "banglaText": "কাউ ঝয়",
      "englishText": "Chives",
      "imagePath": "assets/cooking/38.jpg",
      "audioPath": "audio/cooking/38.mp3"
    },
    {
      "banglaText": "তাউ ফু",
      "englishText": "Tofu",
      "imagePath": "assets/cooking/39.jpg",
      "audioPath": "audio/cooking/39.mp3"
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
        title: Text('Vegetable', style: TextStyle(color: ColorIs.wColor)),
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
