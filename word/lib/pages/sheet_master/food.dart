import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Food extends StatefulWidget {
  @override
  State<Food> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<Food> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "কাই",
      "englishText": "Chicken",
      "imagePath": "assets/food/1.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Chicken.mp3"
    },
    {
      "banglaText": "কাই পেই",
      "englishText": "Chicken spleen",
      "imagePath": "assets/food/2.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Chicken spleen.mp3"
    },
    {
      "banglaText": "কাই ইয়ক",
      "englishText": "Chicken Wing",
      "imagePath": "assets/food/3.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Chicken Wing.mp3"
    },
    {
      "banglaText": "তান",
      "englishText": "Egg",
      "imagePath": "assets/food/4.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Egg.mp3"
    },
    {
      "banglaText": "ফেই তান",
      "englishText": "Preserved Egg",
      "imagePath": "assets/food/5.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Preserved Egg.mp3"
    },
    {
      "banglaText": "হাম তান",
      "englishText": "Salted Egg",
      "imagePath": "assets/food/6.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Salted Egg.mp3"
    },
    {
      "banglaText": "চ্যু ইয়ক",
      "englishText": "Pork",
      "imagePath": "assets/food/7.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Pork.mp3"
    },
    {
      "banglaText": "চ্যু ফা",
      "englishText": "Pork chop",
      "imagePath": "assets/food/8.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Pork chop.mp3"
    },
    {
      "banglaText": "চ্যু কোওয়াত",
      "englishText": "Pig bones",
      "imagePath": "assets/food/9.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Pig bones.mp3"
    },
    {
      "banglaText": "চ্যু কান",
      "englishText": "Pig Liver",
      "imagePath": "assets/food/10.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Pig Liver.mp3"
    },
    {
      "banglaText": "ফ থয়",
      "englishText": "Ham",
      "imagePath": "assets/food/11.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Ham.mp3"
    },
    {
      "banglaText": "আপ",
      "englishText": "Duck",
      "imagePath": "assets/food/12.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Duck.mp3"
    },
    {
      "banglaText": "আও ফা",
      "englishText": "Steak",
      "imagePath": "assets/food/13.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Steak.mp3"
    },
    {
      "banglaText": "আও ইয়ক",
      "englishText": "Beef",
      "imagePath": "assets/food/14.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Beef.mp3"
    },
    {
      "banglaText": "আও কয়াত",
      "englishText": "Beef bone",
      "imagePath": "assets/food/15.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Beef bone.mp3"
    },
    {
      "banglaText": "মাই",
      "englishText": "Rice",
      "imagePath": "assets/food/16.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Rice.mp3"
    },
    {
      "banglaText": "ফান",
      "englishText": "Cooking rice",
      "imagePath": "assets/food/17.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Cooking rice.mp3"
    },
    {
      "banglaText": "ফান ছি",
      "englishText": "Bean vermicelli",
      "imagePath": "assets/food/18.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Bean vermicelli.mp3"
    },
    {
      "banglaText": "মিন পাও",
      "englishText": "Bread",
      "imagePath": "assets/food/19.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Bread.mp3"
    },
    {
      "banglaText": "ফং পাও",
      "englishText": "Sandwich Bread",
      "imagePath": "assets/food/20.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Sandwich Bread.mp3"
    },
    {
      "banglaText": "সামান চি",
      "englishText": "Sandwiches",
      "imagePath": "assets/food/21.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Sandwiches.mp3"
    },
    {
      "banglaText": "তোছি",
      "englishText": "Toast",
      "imagePath": "assets/food/22.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Toast.mp3"
    },
    {
      "banglaText": "আও লাই",
      "englishText": "Milk",
      "imagePath": "assets/food/23.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Milk.mp3"
    },
    {
      "banglaText": "আও ইয়াও",
      "englishText": "Butter",
      "imagePath": "assets/food/24.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Butter.mp3"
    },
    {
      "banglaText": "তান কো",
      "englishText": "Cake",
      "imagePath": "assets/food/25.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Cake.mp3"
    },
    {
      "banglaText": "কুন চাই মিন",
      "englishText": "Instant noodles",
      "imagePath": "assets/food/26.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Instant noodles.mp3"
    },
    {
      "banglaText": "থং  সাম ফান",
      "englishText": "Macaroni",
      "imagePath": "assets/food/27.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Macaroni.mp3"
    },
    {
      "banglaText": "ই তালে ফান",
      "englishText": "Spaghetti",
      "imagePath": "assets/food/28.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Spaghetti.mp3"
    },
    {
      "banglaText": "চোক",
      "englishText": "Congee",
      "imagePath": "assets/food/29.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Congee.mp3"
    },
    {
      "banglaText": "মিন",
      "englishText": "Noodle",
      "imagePath": "assets/food/30.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Noodle.mp3"
    },
    {
      "banglaText": "মাই মিন",
      "englishText": "Rice Noodle",
      "imagePath": "assets/food/31.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Rice Noodle.mp3"
    },
    {
      "banglaText": "হ ফান",
      "englishText": "Fried rice noodle",
      "imagePath": "assets/food/32.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Fried rice noodle.mp3"
    },
    {
      "banglaText": "পেং কোণ",
      "englishText": "Biscuit",
      "imagePath": "assets/food/33.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Biscuit.mp3"
    },
    {
      "banglaText": "স্যুইত ভিন",
      "englishText": "Potato chips",
      "imagePath": "assets/food/34.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Potato chips.mp3"
    },
    {
      "banglaText": "স্যুইত কো",
      "englishText": "Ice cream",
      "imagePath": "assets/food/35.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Food/1/Ice cream.mp3"
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
        title: Text('Food', style: TextStyle(color: ColorIs.wColor)),
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
