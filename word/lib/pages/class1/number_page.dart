import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class NumberPage extends StatefulWidget {
  @override
  State<NumberPage> createState() => _numberPageState();
}

class _numberPageState extends State<NumberPage> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      'banglaText': 'লেং',
      'englishText': 'Zero',
      'imagePath': 'assets/familyPage/2.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Zero.mp3'
    },
    {
      'banglaText': 'ইয়াত',
      'englishText': 'One',
      'imagePath': 'assets/familyPage/1.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/One.mp3'
    },
    {
      'banglaText': 'ই',
      'englishText': 'Two',
      'imagePath': 'assets/familyPage/3.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Two.mp3'
    },
    {
      'banglaText': 'সাম',
      'englishText': 'Three',
      'imagePath': 'assets/familyPage/4.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Three.mp3'
    },
    {
      'banglaText': 'সেই',
      'englishText': 'Four',
      'imagePath': 'assets/familyPage/5.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Four.mp3'
    },
    {
      'banglaText': 'উম',
      'englishText': 'Five',
      'imagePath': 'assets/familyPage/1.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Five.mp3'
    },
    {
      'banglaText': 'লোক',
      'englishText': 'Six',
      'imagePath': 'assets/familyPage/6.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Six.mp3'
    },
    {
      'banglaText': 'ঝাত',
      'englishText': 'Seven',
      'imagePath': 'assets/familyPage/7.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Seven.mp3'
    },
    {
      'banglaText': 'পা',
      'englishText': 'Eight',
      'imagePath': 'assets/familyPage/8.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Eight.mp3'
    },
    {
      'banglaText': 'কাউ',
      'englishText': 'Nine',
      'imagePath': 'assets/familyPage/9.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Nine.mp3'
    },
    {
      'banglaText': 'ছাপ',
      'englishText': 'Ten',
      'imagePath': 'assets/familyPage/10.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Ten.mp3'
    },
    {
      'banglaText': 'ছাপ ইয়াত',
      'englishText': 'Eleven',
      'imagePath': 'assets/familyPage/11.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Eleven.mp3'
    },
    {
      'banglaText': 'ছাপ ই',
      'englishText': 'Twelve',
      'imagePath': 'assets/familyPage/12.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Twelve.mp3'
    },
    {
      'banglaText': 'ছাপ সাম',
      'englishText': 'Thirteen',
      'imagePath': 'assets/familyPage/13.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Thirteen.mp3'
    },
    {
      'banglaText': 'ই ছাপ',
      'englishText': 'Twenty',
      'imagePath': 'assets/familyPage/14.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Twenty.mp3'
    },
    {
      'banglaText': 'ই  ছাপ ইয়াত',
      'englishText': 'Twenty-One',
      'imagePath': 'assets/familyPage/15.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/21.mp3'
    },
    {
      'banglaText': 'ছাম ছাপ',
      'englishText': 'Thirty',
      'imagePath': 'assets/familyPage/16.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Thirty.mp3'
    },
    {
      'banglaText': 'ছাম ছাপ ছাম',
      'englishText': 'Thirty-Three',
      'imagePath': 'assets/familyPage/17.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/33.mp3'
    },
    {
      'banglaText': 'ছেই ছাপ',
      'englishText': 'Forty',
      'imagePath': 'assets/familyPage/18.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Forty.mp3'
    },
    {
      'banglaText': 'ছেই ছাপ ছেই',
      'englishText': 'Forty-Four',
      'imagePath': 'assets/familyPage/19.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/44.mp3'
    },
    {
      'banglaText': 'উম ছাপ',
      'englishText': 'Fifty',
      'imagePath': 'assets/familyPage/20.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Fifty.mp3'
    },
    {
      'banglaText': 'উম ছাপ উম',
      'englishText': 'Fifty-Five',
      'imagePath': 'assets/familyPage/21.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/55.mp3'
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
        title: Text('Numbers', style: TextStyle(color: ColorIs.wColor)),
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
