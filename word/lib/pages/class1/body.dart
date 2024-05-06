import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      'banglaText': 'থাউ',
      'englishText': 'Head',
      'imagePath': 'assets/familyPage/2.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Head.mp3'
    },
    {
      'banglaText': 'থাউ ফাত',
      'englishText': 'Hair',
      'imagePath': 'assets/familyPage/1.png',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Hair.mp3'
    },
    {
      'banglaText': 'মিন',
      'englishText': 'Face',
      'imagePath': 'assets/familyPage/3.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Face.mp3'
    },
    {
      'banglaText': 'আন',
      'englishText': 'Eye',
      'imagePath': 'assets/familyPage/4.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Eye.mp3'
    },
    {
      'banglaText': 'ই চাই',
      'englishText': 'Ears',
      'imagePath': 'assets/familyPage/5.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Ears.mp3'
    },
    {
      'banglaText': 'হাউ',
      'englishText': 'Mouth',
      'imagePath': 'assets/familyPage/6.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Mouth.mp3'
    },
    {
      'banglaText': 'চৈ ই',
      'englishText': 'Lips',
      'imagePath': 'assets/familyPage/7.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Lips.mp3'
    },
    {
      'banglaText': 'আ ঙ',
      'englishText': 'Tooth',
      'imagePath': 'assets/familyPage/8.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Tooth.mp3'
    },
    {
      'banglaText': 'লেই',
      'englishText': 'Tongue',
      'imagePath': 'assets/familyPage/9.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Tongue.mp3'
    },
    {
      'banglaText': 'হাউ লং',
      'englishText': 'Throat',
      'imagePath': 'assets/familyPage/10.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Throat.mp3'
    },
    {
      'banglaText': 'পেই কো',
      'englishText': 'Nose',
      'imagePath': 'assets/familyPage/2.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Nose.mp3'
    },
    {
      'banglaText': 'কেয়ং',
      'englishText': 'Neck',
      'imagePath': 'assets/familyPage/1.png',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Neck.mp3'
    },
    {
      'banglaText': 'ছাউ',
      'englishText': 'Hand',
      'imagePath': 'assets/familyPage/3.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Hand.mp3'
    },
    {
      'banglaText': 'ছাউ চি',
      'englishText': 'Finger',
      'imagePath': 'assets/familyPage/4.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Finger.mp3'
    },
    {
      'banglaText': 'চি ক্যাপ',
      'englishText': 'Fingernail',
      'imagePath': 'assets/familyPage/5.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Fingernail.mp3'
    },
    {
      'banglaText': 'ওয়াই',
      'englishText': 'Stomach',
      'imagePath': 'assets/familyPage/6.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Stomach.mp3'
    },
    {
      'banglaText': 'থৌ',
      'englishText': 'Belly',
      'imagePath': 'assets/familyPage/7.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Belly.mp3'
    },
    {
      'banglaText': 'কয়োক',
      'englishText': 'Foot',
      'imagePath': 'assets/familyPage/8.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Foot.mp3'
    },
    {
      'banglaText': 'কয়োক চি',
      'englishText': 'Toes',
      'imagePath': 'assets/familyPage/9.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Body/1/Toes.mp3'
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
        title: Text('Body', style: TextStyle(color: ColorIs.wColor)),
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
