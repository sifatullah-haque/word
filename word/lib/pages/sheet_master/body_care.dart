import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class BodyCare extends StatefulWidget {
  @override
  State<BodyCare> createState() => _BodyCareState();
}

class _BodyCareState extends State<BodyCare> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      'banglaText': 'ছাই মিন',
      'englishText': 'Wash Face',
      'imagePath': 'assets/familyPage/2.jpeg',
      'audioPath': 'audio/1.mp3'
    },
    {
      'banglaText': 'ছাই ছাউ',
      'englishText': 'Wash Hand',
      'imagePath': 'assets/familyPage/1.png',
      'audioPath': 'audio/2.mp3'
    },
    {
      'banglaText': 'ঝাত আ',
      'englishText': 'Brush Teeth',
      'imagePath': 'assets/familyPage/3.jpeg',
      'audioPath': 'audio/3.mp3'
    },
    {
      'banglaText': 'মাত ছান',
      'englishText': 'Wipe your body',
      'imagePath': 'assets/familyPage/4.jpeg',
      'audioPath': 'audio/4.mp3'
    },
    {
      'banglaText': 'মাত হন',
      'englishText': 'Dry your body',
      'imagePath': 'assets/familyPage/5.jpeg',
      'audioPath': 'audio/5.mp3'
    },
    {
      'banglaText': 'মাত চই',
      'englishText': 'Wipe your mouth',
      'imagePath': 'assets/familyPage/6.jpeg',
      'audioPath': 'audio/6.mp3'
    },
    {
      'banglaText': 'ছাই সাম',
      'englishText': 'Wash the clothes',
      'imagePath': 'assets/familyPage/7.jpeg',
      'audioPath': 'audio/7.mp3'
    },
    {
      'banglaText': 'চিন চি ক্যাপ',
      'englishText': 'Trim your nails',
      'imagePath': 'assets/familyPage/8.jpeg',
      'audioPath': 'audio/8.mp3'
    },
    {
      'banglaText': 'চিন থাউফাত',
      'englishText': 'Haircut',
      'imagePath': 'assets/familyPage/9.jpeg',
      'audioPath': 'audio/9.mp3'
    },
    {
      'banglaText': 'সয়ং ফু ক',
      'englishText': 'Moisturizing cream',
      'imagePath': 'assets/familyPage/10.jpeg',
      'audioPath': 'audio/10.mp3'
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
        title: Text('Body Care', style: TextStyle(color: ColorIs.wColor)),
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
