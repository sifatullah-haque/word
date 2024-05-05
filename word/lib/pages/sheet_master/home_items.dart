import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class HomeItems extends StatefulWidget {
  @override
  State<HomeItems> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<HomeItems> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      'banglaText': 'মুন',
      'englishText': 'Door',
      'imagePath': 'assets/familyPage/2.jpeg',
      'audioPath': 'audio/1.mp3'
    },
    {
      'banglaText': 'মুন ঝং',
      'englishText': 'Doorbell',
      'imagePath': 'assets/familyPage/1.png',
      'audioPath': 'audio/2.mp3'
    },
    {
      'banglaText': 'হই মুন',
      'englishText': 'Open the door',
      'imagePath': 'assets/familyPage/3.jpeg',
      'audioPath': 'audio/3.mp3'
    },
    {
      'banglaText': 'ছান মুন',
      'englishText': 'Close the door',
      'imagePath': 'assets/familyPage/4.jpeg',
      'audioPath': 'audio/4.mp3'
    },
    {
      'banglaText': 'ছ মুন',
      'englishText': 'Lock',
      'imagePath': 'assets/familyPage/5.jpeg',
      'audioPath': 'audio/5.mp3'
    },
    {
      'banglaText': 'তিত ঝাপ',
      'englishText': 'Gate',
      'imagePath': 'assets/familyPage/6.jpeg',
      'audioPath': 'audio/6.mp3'
    },
    {
      'banglaText': 'ছছি',
      'englishText': 'Key',
      'imagePath': 'assets/familyPage/7.jpeg',
      'audioPath': 'audio/7.mp3'
    },
    {
      'banglaText': 'হাই কা',
      'englishText': 'Shoes cabinet',
      'imagePath': 'assets/familyPage/8.jpeg',
      'audioPath': 'audio/8.mp3'
    },
    {
      'banglaText': 'হাই',
      'englishText': 'Shoes',
      'imagePath': 'assets/familyPage/9.jpeg',
      'audioPath': 'audio/9.mp3'
    },
    {
      'banglaText': 'হাক থেং',
      'englishText': 'Sitting room',
      'imagePath': 'assets/familyPage/10.jpeg',
      'audioPath': 'audio/10.mp3'
    },
    {
      'banglaText': 'তাং',
      'englishText': 'Lamp',
      'imagePath': 'assets/familyPage/2.jpeg',
      'audioPath': 'audio/1.mp3'
    },
    {
      'banglaText': 'হই তাং',
      'englishText': 'Turn on the lamp',
      'imagePath': 'assets/familyPage/1.png',
      'audioPath': 'audio/2.mp3'
    },
    {
      'banglaText': 'ছেক তাং',
      'englishText': 'Switch off the light',
      'imagePath': 'assets/familyPage/3.jpeg',
      'audioPath': 'audio/3.mp3'
    },
    {
      'banglaText': 'তাং দাম',
      'englishText': 'Light bulb',
      'imagePath': 'assets/familyPage/4.jpeg',
      'audioPath': 'audio/4.mp3'
    },
    {
      'banglaText': 'ঝয়ং',
      'englishText': 'Window',
      'imagePath': 'assets/familyPage/5.jpeg',
      'audioPath': 'audio/5.mp3'
    },
    {
      'banglaText': 'লান হেই কেই',
      'englishText': 'Air-condition',
      'imagePath': 'assets/familyPage/6.jpeg',
      'audioPath': 'audio/6.mp3'
    },
    {
      'banglaText': 'ফুংসিন',
      'englishText': 'Fan',
      'imagePath': 'assets/familyPage/7.jpeg',
      'audioPath': 'audio/7.mp3'
    },
    {
      'banglaText': 'ঝাত লিক',
      'englishText': 'Calendar',
      'imagePath': 'assets/familyPage/8.jpeg',
      'audioPath': 'audio/8.mp3'
    },
    {
      'banglaText': 'সোফা',
      'englishText': 'Sofa',
      'imagePath': 'assets/familyPage/9.jpeg',
      'audioPath': 'audio/9.mp3'
    },
    {
      'banglaText': 'ঝা কেই',
      'englishText': 'Tea table',
      'imagePath': 'assets/familyPage/10.jpeg',
      'audioPath': 'audio/10.mp3'
    },
    {
      'banglaText': 'ইন ফুই কেই',
      'englishText': 'Ashtray',
      'imagePath': 'assets/familyPage/11.jpeg',
      'audioPath': 'audio/11.mp3'
    },
    {
      'banglaText': 'যেংলিম',
      'englishText': 'Curtain',
      'imagePath': 'assets/familyPage/12.jpeg',
      'audioPath': 'audio/12.mp3'
    },
    {
      'banglaText': 'তেই পা',
      'englishText': 'Floor',
      'imagePath': 'assets/familyPage/13.jpeg',
      'audioPath': 'audio/13.mp3'
    },
    {
      'banglaText': 'তেই চিন',
      'englishText': 'Carpet',
      'imagePath': 'assets/familyPage/14.jpeg',
      'audioPath': 'audio/14.mp3'
    },
    {
      'banglaText': 'তিন ছি কেই',
      'englishText': 'Television',
      'imagePath': 'assets/familyPage/15.jpeg',
      'audioPath': 'audio/15.mp3'
    },
    {
      'banglaText': 'চোং',
      'englishText': 'Clock',
      'imagePath': 'assets/familyPage/16.jpeg',
      'audioPath': 'audio/16.mp3'
    },
    {
      'banglaText': 'তিন ওয়া',
      'englishText': 'Telephone',
      'imagePath': 'assets/familyPage/17.jpeg',
      'audioPath': 'audio/17.mp3'
    },
    {
      'banglaText': 'কেয়ং',
      'englishText': 'Mirror',
      'imagePath': 'assets/familyPage/18.jpeg',
      'audioPath': 'audio/18.mp3'
    },
    {
      'banglaText': 'সয়ং',
      'englishText': 'Photo',
      'imagePath': 'assets/familyPage/19.jpeg',
      'audioPath': 'audio/19.mp3'
    },
    {
      'banglaText': 'ফা',
      'englishText': 'Flower',
      'imagePath': 'assets/familyPage/20.jpeg',
      'audioPath': 'audio/20.mp3'
    },
    {
      'banglaText': 'ফা চন',
      'englishText': 'Vase',
      'imagePath': 'assets/familyPage/21.jpeg',
      'audioPath': 'audio/21.mp3'
    },
    {
      'banglaText': 'ফান থেং',
      'englishText': 'Dining room',
      'imagePath': 'assets/familyPage/22.jpeg',
      'audioPath': 'audio/22.mp3'
    },
    {
      'banglaText': 'থয়',
      'englishText': 'Desk',
      'imagePath': 'assets/familyPage/23.jpeg',
      'audioPath': 'audio/23.mp3'
    },
    {
      'banglaText': 'থয়মিন',
      'englishText': 'Table top',
      'imagePath': 'assets/familyPage/24.jpeg',
      'audioPath': 'audio/24.mp3'
    },
    {
      'banglaText': 'সেক ফান থয়',
      'englishText': 'Dining table',
      'imagePath': 'assets/familyPage/25.jpeg',
      'audioPath': 'audio/25.mp3'
    },
    {
      'banglaText': 'থয় পো',
      'englishText': 'Table cloth',
      'imagePath': 'assets/familyPage/26.jpeg',
      'audioPath': 'audio/26.mp3'
    },
    {
      'banglaText': 'তাং',
      'englishText': 'Chair',
      'imagePath': 'assets/familyPage/27.jpeg',
      'audioPath': 'audio/27.mp3'
    },
    {
      'banglaText': 'তাং চাই',
      'englishText': 'Small chair',
      'imagePath': 'assets/familyPage/28.jpeg',
      'audioPath': 'audio/28.mp3'
    },
    {
      'banglaText': 'চিপ তাং',
      'englishText': 'Folding chair',
      'imagePath': 'assets/familyPage/29.jpeg',
      'audioPath': 'audio/29.mp3'
    },
    {
      'banglaText': 'চি ফং',
      'englishText': 'Garage',
      'imagePath': 'assets/familyPage/30.jpeg',
      'audioPath': 'audio/30.mp3'
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
        title: Text('Home Items', style: TextStyle(color: ColorIs.wColor)),
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
