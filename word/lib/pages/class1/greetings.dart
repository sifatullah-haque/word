import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Greetings extends StatefulWidget {
  @override
  State<Greetings> createState() => _GreetingsState();
}

class _GreetingsState extends State<Greetings> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      'banglaText': 'সান লিন ফাই লক',
      'englishText': 'Happy new year',
      'imagePath': 'assets/images/greetings/happy_new.png',
      'audioPath': 'Cantonese_Audio/Class1/Greetings/1/Happy_new_year.mp3'
    },
    {
      'banglaText': 'সান ইয়াত ফাই লক',
      'englishText': 'Happy Birthday',
      'imagePath': 'assets/images/greetings/happy_birthday.png',
      'audioPath': 'Cantonese_Audio/Class1/Greetings/1/Happy_Birthday.mp3'
    },
    {
      'banglaText': 'লেই হোমা',
      'englishText': 'How are you?',
      'imagePath': 'assets/images/greetings/how_are_you.png',
      'audioPath': 'Cantonese_Audio/Class1/Greetings/1/How_are_you_.mp3'
    },
    {
      'banglaText': 'ইয়াপ লেই',
      'englishText': 'Come in',
      'imagePath': 'assets/images/greetings/come_in.png',
      'audioPath': 'Cantonese_Audio/Class1/Greetings/1/come_in.mp3'
    },
    {
      'banglaText': 'ঊমকয় ছাই',
      'englishText': 'Welcome',
      'imagePath': 'assets/images/greetings/welcome.png',
      'audioPath': 'Cantonese_Audio/Class1/Greetings/1/Well_come.mp3'
    },
    {
      'banglaText': 'তো চে সাই',
      'englishText': 'Thank you',
      'imagePath': 'assets/images/greetings/thank_you.png',
      'audioPath': 'Cantonese_Audio/Class1/Greetings/1/Thank_you.mp3'
    },
    {
      'banglaText': 'চয় কিণ',
      'englishText': 'Goodbye',
      'imagePath': 'assets/images/greetings/goodbye.png',
      'audioPath': 'Cantonese_Audio/Class1/Greetings/1/Good_bye.mp3'
    },
    {
      'banglaText': 'মান মান',
      'englishText': 'Go slow',
      'imagePath': 'assets/images/greetings/slow.png',
      'audioPath': 'Cantonese_Audio/Class1/Greetings/1/Go_slow.mp3'
    },
    {
      'banglaText': 'তয়োম চি',
      'englishText': 'Sorry',
      'imagePath': 'assets/images/greetings/sorry.png',
      'audioPath': 'Cantonese_Audio/Class1/Greetings/1/Sorry.mp3'
    },
    {
      'banglaText': 'মই ই  ছি',
      'englishText': 'Never mind',
      'imagePath': 'assets/images/greetings/never_mind.png',
      'audioPath': 'Cantonese_Audio/Class1/Greetings/1/Never_mind.mp3'
    },
    {
      'banglaText': 'উম কয়',
      'englishText': 'Thank you',
      'imagePath': 'assets/images/greetings/thank_you.png',
      'audioPath': 'Cantonese_Audio/Class1/Greetings/1/Thank_you.mp3'
    },
    {
      'banglaText': 'উম সাই হা হে',
      'englishText': 'You are welcome',
      'imagePath': 'assets/images/greetings/welcome.png',
      'audioPath': 'Cantonese_Audio/Class1/Greetings/1/You_are_welcome.mp3'
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
        title: Text('Greetings', style: TextStyle(color: ColorIs.wColor)),
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
