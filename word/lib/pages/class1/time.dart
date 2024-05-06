import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Time extends StatefulWidget {
  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      'banglaText': 'ফান চোং',
      'englishText': 'Minute',
      'imagePath': 'assets/familyPage/2.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Minute.mp3'
    },
    {
      'banglaText': 'লয়ং ফান চোং',
      'englishText': 'Two minutes',
      'imagePath': 'assets/familyPage/1.png',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Two_minute.mp3'
    },
    {
      'banglaText': 'ইয়াত তিম চোং',
      'englishText': 'One o\'clock',
      'imagePath': 'assets/familyPage/3.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/One_clock.mp3'
    },
    {
      'banglaText': 'লয়ং তিম ছাপ উম ফান চোং',
      'englishText': 'What time?',
      'imagePath': 'assets/familyPage/4.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/What_time_.mp3'
    },
    {
      'banglaText': 'লয়ং তিম পুন',
      'englishText': 'Half-past two',
      'imagePath': 'assets/familyPage/5.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Half_past_two.mp3'
    },
    {
      'banglaText': 'ছাম তিম ছেই ছাপ উম ফান',
      'englishText': 'Three-forty five',
      'imagePath': 'assets/familyPage/6.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Three_forty_five.mp3'
    },
    {
      'banglaText': 'ছেই তিম ই ছাপ ফান',
      'englishText': 'Four Twenty',
      'imagePath': 'assets/familyPage/7.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Four_Twenty.mp3'
    },
    {
      'banglaText': 'কেই তিম',
      'englishText': 'What time?',
      'imagePath': 'assets/familyPage/8.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/What_time_.mp3'
    },
    {
      'banglaText': 'ইকা',
      'englishText': 'Now',
      'imagePath': 'assets/familyPage/9.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Now.mp3'
    },
    {
      'banglaText': 'থাউ ছিন',
      'englishText': 'Just now',
      'imagePath': 'assets/familyPage/10.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Just_now.mp3'
    },
    {
      'banglaText': 'তাং ইয়াত চান',
      'englishText': 'Wait a minute',
      'imagePath': 'assets/familyPage/11.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Wait_a_minute.mp3'
    },
    {
      'banglaText': 'কেইছি',
      'englishText': 'When',
      'imagePath': 'assets/familyPage/12.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/When.mp3'
    },
    {
      'banglaText': 'চিও থাউ চৌ',
      'englishText': 'In the morning',
      'imagePath': 'assets/familyPage/13.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/In_the_morning.mp3'
    },
    {
      'banglaText': 'চৌ ছান',
      'englishText': 'Good morning',
      'imagePath': 'assets/familyPage/14.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Good_morning.mp3'
    },
    {
      'banglaText': 'উম ওয়ান',
      'englishText': 'In the afternoon',
      'imagePath': 'assets/familyPage/15.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/In_the_afternoon.mp3'
    },
    {
      'banglaText': 'ইয়েমান',
      'englishText': 'At night time',
      'imagePath': 'assets/familyPage/16.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/At_night_time.mp3'
    },
    {
      'banglaText': 'চৌ থাও',
      'englishText': 'Good night',
      'imagePath': 'assets/familyPage/17.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Good_night.mp3'
    },
    {
      'banglaText': 'বুন ইয়ে',
      'englishText': 'At midnight',
      'imagePath': 'assets/familyPage/18.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/At_midnight.mp3'
    },
    {
      'banglaText': 'ইয়াত ইয়াত',
      'englishText': 'One day',
      'imagePath': 'assets/familyPage/19.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/One_day.mp3'
    },
    {
      'banglaText': 'কাম ইয়াত',
      'englishText': 'Today',
      'imagePath': 'assets/familyPage/20.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Today.mp3'
    },
    {
      'banglaText': 'খাম ইয়াত',
      'englishText': 'Yesterday',
      'imagePath': 'assets/familyPage/21.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Yesterday.mp3'
    },
    {
      'banglaText': 'ঝিন ইয়াত',
      'englishText': 'Day before',
      'imagePath': 'assets/familyPage/22.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Day_before.mp3'
    },
    {
      'banglaText': 'থেং ইয়াত',
      'englishText': 'Tomorrow',
      'imagePath': 'assets/familyPage/23.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Tomorrow.mp3'
    },
    {
      'banglaText': 'হাউ ইয়াত',
      'englishText': 'Day after tomorrow',
      'imagePath': 'assets/familyPage/24.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Day_after_tomorrow.mp3'
    },
    {
      'banglaText': 'মুই ইয়াত',
      'englishText': 'Everyday',
      'imagePath': 'assets/familyPage/25.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Everyday.mp3'
    },
    {
      'banglaText': 'মুই চিউ',
      'englishText': 'Every morning',
      'imagePath': 'assets/familyPage/26.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Every_morning.mp3'
    },
    {
      'banglaText': 'ইয়াত ঝি',
      'englishText': 'One time',
      'imagePath': 'assets/familyPage/27.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/One_time.mp3'
    },
    {
      'banglaText': 'মুই ঝি',
      'englishText': 'Every time',
      'imagePath': 'assets/familyPage/28.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Every_time.mp3'
    },
    {
      'banglaText': 'কাম কো ছিংখেই',
      'englishText': 'This week',
      'imagePath': 'assets/familyPage/29.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/This_week.mp3'
    },
    {
      'banglaText': 'সয়ং কো ছিংখেই',
      'englishText': 'Last week',
      'imagePath': 'assets/familyPage/30.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Last_week.mp3'
    },
    {
      'banglaText': 'হা কো ছিংখেই',
      'englishText': 'Next Week',
      'imagePath': 'assets/familyPage/31.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Next_Week.mp3'
    },
    {
      'banglaText': 'মুই কো ছিংখেই',
      'englishText': 'Every Week',
      'imagePath': 'assets/familyPage/32.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Every_Week.mp3'
    },
    {
      'banglaText': 'ফং কা',
      'englishText': 'Holyday',
      'imagePath': 'assets/familyPage/33.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Holyday.mp3'
    },
    {
      'banglaText': 'ইয়াত  কো ছিংখেই',
      'englishText': 'One week',
      'imagePath': 'assets/familyPage/34.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/One_week.mp3'
    },
    {
      'banglaText': 'ছিং খেই ইয়াত',
      'englishText': 'Monday',
      'imagePath': 'assets/familyPage/35.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Monday.mp3'
    },
    {
      'banglaText': 'ছিং খেই ই',
      'englishText': 'Tuesday',
      'imagePath': 'assets/familyPage/36.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Tuesday.mp3'
    },
    {
      'banglaText': 'ছিং খেই ছাম',
      'englishText': 'Wednesday',
      'imagePath': 'assets/familyPage/37.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Wednesday.mp3'
    },
    {
      'banglaText': 'ছিং খেই ছে',
      'englishText': 'Thursday',
      'imagePath': 'assets/familyPage/38.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Thursday.mp3'
    },
    {
      'banglaText': 'ছিং খেই উম',
      'englishText': 'Friday',
      'imagePath': 'assets/familyPage/39.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Friday.mp3'
    },
    {
      'banglaText': 'ছিং খেই লোক',
      'englishText': 'Saturday',
      'imagePath': 'assets/familyPage/40.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Saturday.mp3'
    },
    {
      'banglaText': 'লে পাই ইয়াত',
      'englishText': 'Sunday',
      'imagePath': 'assets/familyPage/41.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Sunday.mp3'
    },
    {
      'banglaText': 'কাম কো ইয়ুত',
      'englishText': 'This Month',
      'imagePath': 'assets/familyPage/42.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/This_Month.mp3'
    },
    {
      'banglaText': 'হা কো ইয়ুত',
      'englishText': 'Last Month',
      'imagePath': 'assets/familyPage/43.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Last_Month.mp3'
    },
    {
      'banglaText': 'সয়ং  কো ইয়ুত',
      'englishText': 'Next Month',
      'imagePath': 'assets/familyPage/44.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Next_Month.mp3'
    },
    {
      'banglaText': 'মুই কো ইয়ুত',
      'englishText': 'Every Month',
      'imagePath': 'assets/familyPage/45.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Every_Month.mp3'
    },
    {
      'banglaText': 'কাম লিন',
      'englishText': 'This Year',
      'imagePath': 'assets/familyPage/46.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/This_Year.mp3'
    },
    {
      'banglaText': 'হা কো লিন',
      'englishText': 'Last Year',
      'imagePath': 'assets/familyPage/47.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Last_Year.mp3'
    },
    {
      'banglaText': 'ঝুত লিন',
      'englishText': 'Next Year',
      'imagePath': 'assets/familyPage/48.jpeg',
      'audioPath': 'Cantonese_Audio/Class1/Time/0/Next_Year.mp3'
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
        title: Text('Time', style: TextStyle(color: ColorIs.wColor)),
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
