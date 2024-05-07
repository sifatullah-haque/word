import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Verb extends StatefulWidget {
  @override
  State<Verb> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<Verb> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "হেই সান",
      "englishText": "Wake up",
      "imagePath": "assets/actions/1.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Bite.mp3"
    },
    {
      "banglaText": "ফান কাও",
      "englishText": "Sleeping",
      "imagePath": "assets/actions/2.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Sleeping.mp3"
    },
    {
      "banglaText": "হেই সান",
      "englishText": "Stand up",
      "imagePath": "assets/actions/3.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Stand up.mp3"
    },
    {
      "banglaText": "ঝ তেই",
      "englishText": "Sit down",
      "imagePath": "assets/actions/4.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Sit down.mp3"
    },
    {
      "banglaText": "তোক স্যু",
      "englishText": "Study",
      "imagePath": "assets/actions/5.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Study.mp3"
    },
    {
      "banglaText": "সে চি",
      "englishText": "Writing",
      "imagePath": "assets/actions/6.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Writing.mp3"
    },
    {
      "banglaText": "চাউ",
      "englishText": "Run",
      "imagePath": "assets/actions/7.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Run.mp3"
    },
    {
      "banglaText": "থিউ",
      "englishText": "Jump",
      "imagePath": "assets/actions/8.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Jump.mp3"
    },
    {
      "banglaText": "হাই ফান কোং",
      "englishText": "Go to work",
      "imagePath": "assets/actions/9.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Go to work.mp3"
    },
    {
      "banglaText": "হই চ ইয়ে",
      "englishText": "To work",
      "imagePath": "assets/actions/10.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/To work.mp3"
    },
    {
      "banglaText": "ঝুং লয়ং",
      "englishText": "Take a shower",
      "imagePath": "assets/actions/11.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Take a shower.mp3"
    },
    {
      "banglaText": "মাত সান",
      "englishText": "Dry your body",
      "imagePath": "assets/actions/12.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Dry your body.mp3"
    },
    {
      "banglaText": "চয়োক সাম",
      "englishText": "Change your clothes",
      "imagePath": "assets/actions/13.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Change your clothes.mp3"
    },
    {
      "banglaText": "ঝুই থাউ",
      "englishText": "Dry your hair",
      "imagePath": "assets/actions/14.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Dry your hair.mp3"
    },
    {
      "banglaText": "চছ থাউ",
      "englishText": "Comb your hair",
      "imagePath": "assets/actions/15.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Comb your hair.mp3"
    },
    {
      "banglaText": "কিন মিন",
      "englishText": "Meet",
      "imagePath": "assets/actions/16.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Meet.mp3"
    },
    {
      "banglaText": "কং",
      "englishText": "Talk",
      "imagePath": "assets/actions/17.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Talk.mp3"
    },
    {
      "banglaText": "ঝয়ং ক",
      "englishText": "Sing",
      "imagePath": "assets/actions/18.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Sing.mp3"
    },
    {
      "banglaText": "ইয়াও সেক",
      "englishText": "Take a rest",
      "imagePath": "assets/actions/19.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Take a rest.mp3"
    },
    {
      "banglaText": "হাক হাউ হাক মিন",
      "englishText": "Get angry",
      "imagePath": "assets/actions/20.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Verb/1/Get angry.mp3"
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
        title: Text('Verb', style: TextStyle(color: ColorIs.wColor)),
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
