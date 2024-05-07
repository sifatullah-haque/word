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
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Chili.mp3"
    },
    {
      "banglaText": "ঝোং",
      "englishText": "Spring Onions",
      "imagePath": "assets/cooking/5.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Spring Onions.mp3"
    },
    {
      "banglaText": "কন ঝোং",
      "englishText": "Dried onions",
      "imagePath": "assets/cooking/6.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Dried onions.mp3"
    },
    {
      "banglaText": "ইয়োং ঝোং",
      "englishText": "Onions",
      "imagePath": "assets/cooking/7.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/onions.mp3"
    },
    {
      "banglaText": "ঝেং চিউ",
      "englishText": "Green peppers",
      "imagePath": "assets/cooking/8.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Green peppers.mp3"
    },
    {
      "banglaText": "সুন থাউ",
      "englishText": "Garlic",
      "imagePath": "assets/cooking/9.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Garlic.mp3"
    },
    {
      "banglaText": "ঝয় সাম",
      "englishText": "Flowering cabbage",
      "imagePath": "assets/cooking/10.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Vegetable/1/Flowering cabbage.mp3"
    },
    {
      "banglaText": "সাং ঝয়",
      "englishText": "Lettuce",
      "imagePath": "assets/cooking/11.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Lettuce.mp3"
    },
    {
      "banglaText": "পো ঝয়",
      "englishText": "Spinach",
      "imagePath": "assets/cooking/12.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Spinach.mp3"
    },
    {
      "banglaText": "চি ঝয়",
      "englishText": "Cabbage ball",
      "imagePath": "assets/cooking/13.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/cabbage ball.mp3"
    },
    {
      "banglaText": "তোং ঝয়",
      "englishText": "Water spinach",
      "imagePath": "assets/cooking/14.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Water spinach.mp3"
    },
    {
      "banglaText": "পাক ঝয়",
      "englishText": "Chinese cabbage",
      "imagePath": "assets/cooking/15.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Vegetable/1/Chinese cabbage.mp3"
    },
    {
      "banglaText": "ফোকমো ইয়্যুন",
      "englishText": "Watercress",
      "imagePath": "assets/cooking/16.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Watercress.mp3"
    },
    {
      "banglaText": "কাই লান",
      "englishText": "Chinese broccoli",
      "imagePath": "assets/cooking/17.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Vegetable/1/Chinese broccoti.mp3"
    },
    {
      "banglaText": "ইয়ে ঝয় ফা",
      "englishText": "Cauliflower",
      "imagePath": "assets/cooking/18.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Cauliflower.mp3"
    },
    {
      "banglaText": "সাইলাণ ফা",
      "englishText": "Broccoli",
      "imagePath": "assets/cooking/19.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/broccoli.mp3"
    },
    {
      "banglaText": "তোং কূ",
      "englishText": "Straw mushroom",
      "imagePath": "assets/cooking/20.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Straw mushroom.mp3"
    },
    {
      "banglaText": "মাত থং",
      "englishText": "Honey Beans",
      "imagePath": "assets/cooking/21.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Honey Beans.mp3"
    },
    {
      "banglaText": "ঝেং তাউ",
      "englishText": "Green beans",
      "imagePath": "assets/cooking/22.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Green beans.mp3"
    },
    {
      "banglaText": "তোং কূ",
      "englishText": "Chinese Mushrooms",
      "imagePath": "assets/cooking/23.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Vegetable/1/chinese Mushrooms.mp3"
    },
    {
      "banglaText": "মকূ",
      "englishText": "Mushrooms",
      "imagePath": "assets/cooking/24.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Mushrooms.mp3"
    },
    {
      "banglaText": "স্যু চাই",
      "englishText": "Potato",
      "imagePath": "assets/cooking/25.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Potato.mp3"
    },
    {
      "banglaText": "তোং কোয়া",
      "englishText": "Melon",
      "imagePath": "assets/cooking/26.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Melon.mp3"
    },
    {
      "banglaText": "তাউ কক",
      "englishText": "Beans",
      "imagePath": "assets/cooking/27.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Beans.mp3"
    },
    {
      "banglaText": "ফান স্যু",
      "englishText": "Sweet Potato",
      "imagePath": "assets/cooking/28.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Sweet Potato.mp3"
    },
    {
      "banglaText": "আই কোয়া",
      "englishText": "Eggplant",
      "imagePath": "assets/cooking/29.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Eggplant.mp3"
    },
    {
      "banglaText": "হংলো পা",
      "englishText": "Carrot",
      "imagePath": "assets/cooking/30.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Carrot.mp3"
    },
    {
      "banglaText": "ঝেং কোয়া",
      "englishText": "Cucumber",
      "imagePath": "assets/cooking/31.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Cucumber.mp3"
    },
    {
      "banglaText": "কোয়া",
      "englishText": "Zucchini",
      "imagePath": "assets/cooking/32.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Zucchini.mp3"
    },
    {
      "banglaText": "সুক মাই",
      "englishText": "Corn",
      "imagePath": "assets/cooking/33.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Corn.mp3"
    },
    {
      "banglaText": "ঝেং লো পা",
      "englishText": "Green radish",
      "imagePath": "assets/cooking/34.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Green radish.mp3"
    },
    {
      "banglaText": "ফান খেই",
      "englishText": "Tomato",
      "imagePath": "assets/cooking/35.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Tomato.mp3"
    },
    {
      "banglaText": "আ ঝয়",
      "englishText": "Sprouts",
      "imagePath": "assets/cooking/36.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Sprouts.mp3"
    },
    {
      "banglaText": "লিন নাও",
      "englishText": "Lotus root",
      "imagePath": "assets/cooking/37.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Lotus root.mp3"
    },
    {
      "banglaText": "কাউ ঝয়",
      "englishText": "Chives",
      "imagePath": "assets/cooking/38.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Chives.mp3"
    },
    {
      "banglaText": "তাউ ফু",
      "englishText": "Tofu",
      "imagePath": "assets/cooking/39.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Vegetable/1/Tofu.mp3"
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
