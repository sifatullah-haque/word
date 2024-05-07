import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class FamilyPage extends StatefulWidget {
  @override
  State<FamilyPage> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<FamilyPage> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      'banglaText': 'অ',
      'englishText': 'Me',
      'imagePath': 'assets/familyPage/2.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/Me.mp3'
    },
    {
      'banglaText': 'লেই',
      'englishText': 'You',
      'imagePath': 'assets/familyPage/you.png',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/You.mp3'
    },
    {
      'banglaText': 'খই',
      'englishText': 'His/Her',
      'imagePath': 'assets/familyPage/3.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/His.mp3'
    },
    {
      'banglaText': 'অ তেই',
      'englishText': 'We/Us',
      'imagePath': 'assets/familyPage/4.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/We.mp3'
    },
    {
      'banglaText': 'খই তেই',
      'englishText': 'They/Their',
      'imagePath': 'assets/familyPage/5.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/They.mp3'
    },
    {
      'banglaText': 'লেই তেই',
      'englishText': 'You',
      'imagePath': 'assets/familyPage/1.png',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/You.mp3'
    },
    {
      'banglaText': 'ইয়ে ইয়ে',
      'englishText': 'Grandfather',
      'imagePath': 'assets/familyPage/6.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/Grandfather.mp3'
    },
    {
      'banglaText': 'ফো ফো/মা মা',
      'englishText': 'Grandmother',
      'imagePath': 'assets/familyPage/7.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/Grandmother.mp3'
    },
    {
      'banglaText': 'পা পা',
      'englishText': 'Father/Dad',
      'imagePath': 'assets/familyPage/father.png',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/Father.mp3'
    },
    {
      'banglaText': 'মা মা',
      'englishText': 'Mother/Mom',
      'imagePath': 'assets/familyPage/mother.png',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/Grandmother.mp3'
    },
    {
      'banglaText': 'চাই',
      'englishText': 'Son',
      'imagePath': 'assets/familyPage/11.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/Son.mp3'
    },
    {
      'banglaText': 'লই',
      'englishText': 'Daughter',
      'imagePath': 'assets/familyPage/10.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/Daughter.mp3'
    },
    {
      'banglaText': 'কো কো /ছাইলো',
      'englishText': 'Elder Brother',
      'imagePath': 'assets/familyPage/elder_brother.png',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/Elder_Brother.mp3'
    },
    {
      'banglaText': 'ছিউচে / সাই মুই',
      'englishText': 'Elder Sister',
      'imagePath': 'assets/familyPage/elder_sister.png',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/Elder_Sister.mp3'
    },
    {
      'banglaText': 'সিং সান',
      'englishText': 'Sir',
      'imagePath': 'assets/familyPage/sir.png',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/Sir.mp3'
    },
    {
      'banglaText': 'থাই থাই',
      'englishText': 'Madam',
      'imagePath': 'assets/familyPage/madam.png',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/Madam.mp3'
    },
    {
      'banglaText': 'সুই ইয়ে',
      'englishText': 'Sir (Younger)',
      'imagePath': 'assets/familyPage/sir_younger.png',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/Sir_Younger.mp3'
    },
    {
      'banglaText': 'ছিউচে',
      'englishText': 'Miss',
      'imagePath': 'assets/familyPage/miss.png',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/Miss.mp3'
    },
    {
      'banglaText': 'কু চ্যুই',
      'englishText': 'Employee',
      'imagePath': 'assets/familyPage/employee.png',
      'audioPath': 'Cantonese_Audio/Class1/Family/1/Employee.mp3'
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
        title: Text('Family', style: TextStyle(color: ColorIs.wColor)),
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
