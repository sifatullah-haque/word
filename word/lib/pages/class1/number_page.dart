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
      'imagePath': 'assets/images/numbers/0.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Zero.mp3'
    },
    {
      'banglaText': 'ইয়াত',
      'englishText': 'One',
      'imagePath': 'assets/images/numbers/one.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/One.mp3'
    },
    {
      'banglaText': 'ই',
      'englishText': 'Two',
      'imagePath': 'assets/images/numbers/2.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Two.mp3'
    },
    {
      'banglaText': 'সাম',
      'englishText': 'Three',
      'imagePath': 'assets/images/numbers/3.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Three.mp3'
    },
    {
      'banglaText': 'সেই',
      'englishText': 'Four',
      'imagePath': 'assets/images/numbers/4.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Four.mp3'
    },
    {
      'banglaText': 'উম',
      'englishText': 'Five',
      'imagePath': 'assets/images/numbers/5.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Five.mp3'
    },
    {
      'banglaText': 'লোক',
      'englishText': 'Six',
      'imagePath': 'assets/images/numbers/6.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Six.mp3'
    },
    {
      'banglaText': 'ঝাত',
      'englishText': 'Seven',
      'imagePath': 'assets/images/numbers/7.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Seven.mp3'
    },
    {
      'banglaText': 'পা',
      'englishText': 'Eight',
      'imagePath': 'assets/images/numbers/8.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Eight.mp3'
    },
    {
      'banglaText': 'কাউ',
      'englishText': 'Nine',
      'imagePath': 'assets/images/numbers/9.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Nine.mp3'
    },
    {
      'banglaText': 'ছাপ',
      'englishText': 'Ten',
      'imagePath': 'assets/images/numbers/10.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Ten.mp3'
    },
    {
      'banglaText': 'ছাপ ইয়াত',
      'englishText': 'Eleven',
      'imagePath': 'assets/images/numbers/11.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Eleven.mp3'
    },
    {
      'banglaText': 'ছাপ ই',
      'englishText': 'Twelve',
      'imagePath': 'assets/images/numbers/12.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Twelve.mp3'
    },
    {
      'banglaText': 'ছাপ সাম',
      'englishText': 'Thirteen',
      'imagePath': 'assets/images/numbers/13.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Thirteen.mp3'
    },
    {
      'banglaText': 'ই ছাপ',
      'englishText': 'Twenty',
      'imagePath': 'assets/images/numbers/20.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Twenty.mp3'
    },
    {
      'banglaText': 'ই  ছাপ ইয়াত',
      'englishText': 'Twenty-One',
      'imagePath': 'assets/images/numbers/21.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/21.mp3'
    },
    {
      'banglaText': 'ছাম ছাপ',
      'englishText': 'Thirty',
      'imagePath': 'assets/images/numbers/30.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Thirty.mp3'
    },
    {
      'banglaText': 'ছাম ছাপ ছাম',
      'englishText': 'Thirty-Three',
      'imagePath': 'assets/images/numbers/33.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/33.mp3'
    },
    {
      'banglaText': 'ছেই ছাপ',
      'englishText': 'Forty',
      'imagePath': 'assets/images/numbers/40.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Forty.mp3'
    },
    {
      'banglaText': 'ছেই ছাপ ছেই',
      'englishText': 'Forty-Four',
      'imagePath': 'assets/images/numbers/44.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/44.mp3'
    },
    {
      'banglaText': 'উম ছাপ',
      'englishText': 'Fifty',
      'imagePath': 'assets/images/numbers/50.png',
      'audioPath': 'Cantonese_Audio/Class1/Number/0/Fifty.mp3'
    },
    {
      'banglaText': 'উম ছাপ উম',
      'englishText': 'Fifty-Five',
      'imagePath': 'assets/images/numbers/55.png',
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
