import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Directions extends StatefulWidget {
  @override
  State<Directions> createState() => _directionsState();
}

class _directionsState extends State<Directions> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      'banglaText': 'সয়ং',
      'englishText': 'Up',
      'imagePath': 'assets/familyPage/2.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Up.mp3'
    },
    {
      'banglaText': 'হা',
      'englishText': 'Down',
      'imagePath': 'assets/familyPage/1.png',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Down.mp3'
    },
    {
      'banglaText': 'ইয়াও',
      'englishText': 'Left',
      'imagePath': 'assets/familyPage/3.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Right.mp3'
    },
    {
      'banglaText': 'চ',
      'englishText': 'Right',
      'imagePath': 'assets/familyPage/4.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Left.mp3'
    },
    {
      'banglaText': 'ঝিনি মিন',
      'englishText': 'In front of',
      'imagePath': 'assets/familyPage/5.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/In_front_of.mp3'
    },
    {
      'banglaText': 'ইয়াপ পিন',
      'englishText': 'In the middle',
      'imagePath': 'assets/familyPage/6.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/In_the_middle.mp3'
    },
    {
      'banglaText': 'হাওমিন',
      'englishText': 'At the back',
      'imagePath': 'assets/familyPage/7.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/At_the_back.mp3'
    },
    {
      'banglaText': 'কাত লেই',
      'englishText': 'Next to',
      'imagePath': 'assets/familyPage/8.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Next_to.mp3'
    },
    {
      'banglaText': 'লই মিন',
      'englishText': 'Inside',
      'imagePath': 'assets/familyPage/9.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Inside.mp3'
    },
    {
      'banglaText': 'হা পিন',
      'englishText': 'Outside',
      'imagePath': 'assets/familyPage/10.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Out_side.mp3'
    },
    {
      'banglaText': 'সয়ং পিন',
      'englishText': 'Upper part',
      'imagePath': 'assets/familyPage/11.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Upper_part.mp3'
    },
    {
      'banglaText': 'হা পিন',
      'englishText': 'Lower part',
      'imagePath': 'assets/familyPage/12.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Lower_part.mp3'
    },
    {
      'banglaText': 'গাই তাউ',
      'englishText': 'Street front part',
      'imagePath': 'assets/familyPage/13.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Street_front_part.mp3'
    },
    {
      'banglaText': 'গাই মেই',
      'englishText': 'Street back part',
      'imagePath': 'assets/familyPage/14.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Street_back_part.mp3'
    },
    {
      'banglaText': 'গাই হাও',
      'englishText': 'Street corner',
      'imagePath': 'assets/familyPage/15.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Street_corner.mp3'
    },
    {
      'banglaText': 'তয়ই মিন',
      'englishText': 'Opposite side',
      'imagePath': 'assets/familyPage/16.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Opposite_side.mp3'
    },
    {
      'banglaText': 'ঝুত হাও',
      'englishText': 'Exit',
      'imagePath': 'assets/familyPage/17.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Exit.mp3'
    },
    {
      'banglaText': 'ইয়াপ হাও',
      'englishText': 'Entrance',
      'imagePath': 'assets/familyPage/18.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Entrance.mp3'
    },
    {
      'banglaText': 'চুনয়ান',
      'englishText': 'Corner',
      'imagePath': 'assets/familyPage/19.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Direction/0/Corner.mp3'
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
        title: Text('Directions', style: TextStyle(color: ColorIs.wColor)),
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
