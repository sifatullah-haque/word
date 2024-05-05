import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Sickness extends StatefulWidget {
  @override
  State<Sickness> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<Sickness> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "অ পেং চ",
      "englishText": "I am sick",
      "imagePath": "assets/health/1.jpg",
      "audioPath": "audio/health/1.mp3"
    },
    {
      "banglaText": "হউ কুইয়া",
      "englishText": "So tired",
      "imagePath": "assets/health/2.jpg",
      "audioPath": "audio/health/2.mp3"
    },
    {
      "banglaText": "থাই ই সান",
      "englishText": "Visit the doctor",
      "imagePath": "assets/health/3.jpg",
      "audioPath": "audio/health/3.mp3"
    },
    {
      "banglaText": "পেং হউ",
      "englishText": "Getting better",
      "imagePath": "assets/health/4.jpg",
      "audioPath": "audio/health/4.mp3"
    },
    {
      "banglaText": "হউ থং",
      "englishText": "Pain",
      "imagePath": "assets/health/5.jpg",
      "audioPath": "audio/health/5.mp3"
    },
    {
      "banglaText": "থাউ থং",
      "englishText": "Headache",
      "imagePath": "assets/health/6.jpg",
      "audioPath": "audio/health/6.mp3"
    },
    {
      "banglaText": "থাউ ওয়ান",
      "englishText": "Dizzy",
      "imagePath": "assets/health/7.jpg",
      "audioPath": "audio/health/7.mp3"
    },
    {
      "banglaText": "আউ",
      "englishText": "Vomit/Throw up",
      "imagePath": "assets/health/8.jpg",
      "audioPath": "audio/health/8.mp3"
    },
    {
      "banglaText": "ফাত সিউ",
      "englishText": "Fever",
      "imagePath": "assets/health/9.jpg",
      "audioPath": "audio/health/9.mp3"
    },
    {
      "banglaText": "কাম মো",
      "englishText": "Cold",
      "imagePath": "assets/health/10.jpg",
      "audioPath": "audio/health/10.mp3"
    },
    {
      "banglaText": "লাউ পেই সয়",
      "englishText": "Runny nose",
      "imagePath": "assets/health/11.jpg",
      "audioPath": "audio/health/11.mp3"
    },
    {
      "banglaText": "না আ",
      "englishText": "Toothache",
      "imagePath": "assets/health/12.jpg",
      "audioPath": "audio/health/12.mp3"
    },
    {
      "banglaText": "খাত",
      "englishText": "Cough",
      "imagePath": "assets/health/13.jpg",
      "audioPath": "audio/health/13.mp3"
    },
    {
      "banglaText": "নাআ সয়",
      "englishText": "Sputum",
      "imagePath": "assets/health/14.jpg",
      "audioPath": "audio/health/14.mp3"
    },
    {
      "banglaText": "লাউ হুত",
      "englishText": "Bleeding",
      "imagePath": "assets/health/15.jpg",
      "audioPath": "audio/health/15.mp3"
    },
    {
      "banglaText": "লাউ পেই হুত",
      "englishText": "Nosebleed",
      "imagePath": "assets/health/16.jpg",
      "audioPath": "audio/health/16.mp3"
    },
    {
      "banglaText": "থউ থং",
      "englishText": "Abdominal pain",
      "imagePath": "assets/health/17.jpg",
      "audioPath": "audio/health/17.mp3"
    },
    {
      "banglaText": "থউ অ",
      "englishText": "Belly defecate",
      "imagePath": "assets/health/18.jpg",
      "audioPath": "audio/health/18.mp3"
    },
    {
      "banglaText": "হান",
      "englishText": "Scar",
      "imagePath": "assets/health/19.jpg",
      "audioPath": "audio/health/19.mp3"
    },
    {
      "banglaText": "ইয়ুত কেয়ং",
      "englishText": "Menstruation",
      "imagePath": "assets/health/20.jpg",
      "audioPath": "audio/health/20.mp3"
    },
    {
      "banglaText": "তিত চ",
      "englishText": "Fall down",
      "imagePath": "assets/health/21.jpg",
      "audioPath": "audio/health/21.mp3"
    },
    {
      "banglaText": "সেক ইয়ক",
      "englishText": "Take medicine",
      "imagePath": "assets/health/22.jpg",
      "audioPath": "audio/health/22.mp3"
    },
    {
      "banglaText": "কাম ইয়ক সয়",
      "englishText": "Medicine liquid",
      "imagePath": "assets/health/23.jpg",
      "audioPath": "audio/health/23.mp3"
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
        title: Text('Sickness', style: TextStyle(color: ColorIs.wColor)),
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
