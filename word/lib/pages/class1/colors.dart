import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class ColorsPage extends StatefulWidget {
  @override
  State<ColorsPage> createState() => _ColorsPageState();
}

class _ColorsPageState extends State<ColorsPage> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      'banglaText': 'আন ছেক',
      'englishText': 'Color',
      'imagePath': 'assets/familyPage/2.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Color.mp3'
    },
    {
      'banglaText': 'ছয় ছেক',
      'englishText': 'Colorful',
      'imagePath': 'assets/familyPage/1.png',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Colorful.mp3'
    },
    {
      'banglaText': 'হাক ছেক',
      'englishText': 'Black',
      'imagePath': 'assets/familyPage/3.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Black.mp3'
    },
    {
      'banglaText': 'পা   ছেক',
      'englishText': 'White',
      'imagePath': 'assets/familyPage/4.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/White.mp3'
    },
    {
      'banglaText': 'ফুই ছেক',
      'englishText': 'Grey',
      'imagePath': 'assets/familyPage/5.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Grey.mp3'
    },
    {
      'banglaText': 'হোং ছেক',
      'englishText': 'Red',
      'imagePath': 'assets/familyPage/6.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Red.mp3'
    },
    {
      'banglaText': 'ঝাং ছেক',
      'englishText': 'Orange',
      'imagePath': 'assets/familyPage/7.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Orange.mp3'
    },
    {
      'banglaText': 'ওয়াং ছেক',
      'englishText': 'Yellow',
      'imagePath': 'assets/familyPage/8.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Yellow.mp3'
    },
    {
      'banglaText': 'ফুই ছেক',
      'englishText': 'Grey',
      'imagePath': 'assets/familyPage/9.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Grey.mp3'
    },
    {
      'banglaText': 'লাম ছেক',
      'englishText': 'Blue',
      'imagePath': 'assets/familyPage/10.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Blue.mp3'
    },
    {
      'banglaText': 'চি ছেক',
      'englishText': 'Purple',
      'imagePath': 'assets/familyPage/11.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Purple.mp3'
    },
    {
      'banglaText': 'ছাম  ছেক',
      'englishText': 'Dark',
      'imagePath': 'assets/familyPage/12.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Dark.mp3'
    },
    {
      'banglaText': 'ছিন ছেক',
      'englishText': 'Light',
      'imagePath': 'assets/familyPage/13.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Light.mp3'
    },
    {
      'banglaText': 'কাম ছেক',
      'englishText': 'Gold',
      'imagePath': 'assets/familyPage/14.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Gold.mp3'
    },
    {
      'banglaText': 'নান ছেক',
      'englishText': 'Silver',
      'imagePath': 'assets/familyPage/15.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Silver.mp3'
    },
    {
      'banglaText': 'ফান হং ছেক',
      'englishText': 'Pink',
      'imagePath': 'assets/familyPage/16.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Pink.mp3'
    },
    {
      'banglaText': 'ফেই ছেক',
      'englishText': 'Brown',
      'imagePath': 'assets/familyPage/17.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Colors/1/Brown.mp3'
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
        title: Text('Colors', style: TextStyle(color: ColorIs.wColor)),
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
