import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Weather extends StatefulWidget {
  @override
  State<Weather> createState() => _weatherState();
}

class _weatherState extends State<Weather> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      'banglaText': 'থিন হেই',
      'englishText': 'weather',
      'imagePath': 'assets/images/weather/weather.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/weather.mp3'
    },
    {
      'banglaText': 'ইত',
      'englishText': 'Hot',
      'imagePath': 'assets/images/weather/hot.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Hot.mp3'
    },
    {
      'banglaText': 'লেই উয়ুম উয়ু ইত',
      'englishText': 'Do you feel hot?',
      'imagePath': 'assets/images/weather/feel_hot.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Do_you_feel_hot_.mp3'
    },
    {
      'banglaText': 'অ উম ইত আ',
      'englishText': 'Not feel hot',
      'imagePath': 'assets/images/weather/not_hot.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Not_feel_hot..mp3'
    },
    {
      'banglaText': 'তোং',
      'englishText': 'Cold',
      'imagePath': 'assets/images/weather/cold.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Cold.mp3'
    },
    {
      'banglaText': 'লয়ং',
      'englishText': 'Cool',
      'imagePath': 'assets/images/weather/cool.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Cool.mp3'
    },
    {
      'banglaText': 'লুন',
      'englishText': 'Warm',
      'imagePath': 'assets/images/weather/warm.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Warm.mp3'
    },
    {
      'banglaText': 'ছাপ',
      'englishText': 'Wet',
      'imagePath': 'assets/images/weather/wet.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Wet.mp3'
    },
    {
      'banglaText': 'কন',
      'englishText': 'Dry',
      'imagePath': 'assets/images/weather/dry.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Dry.mp3'
    },
    {
      'banglaText': 'হোউ থিন',
      'englishText': 'Good Weather',
      'imagePath': 'assets/images/weather/good_weather.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Good_Weather.mp3'
    },
    {
      'banglaText': 'ছাই ছাম',
      'englishText': 'Wash the clothes',
      'imagePath': 'assets/images/weather/wash.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Wash_the_cloths.mp3'
    },
    {
      'banglaText': 'ইয়াম থিন',
      'englishText': 'Cloudy day',
      'imagePath': 'assets/images/weather/cloud.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Cloudy_day.mp3'
    },
    {
      'banglaText': 'লক ইয়ু',
      'englishText': 'Rain',
      'imagePath': 'assets/images/weather/rain.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Rain.mp3'
    },
    {
      'banglaText': 'তাই ইয়ু',
      'englishText': 'Heavy rain',
      'imagePath': 'assets/images/weather/heavy_rain.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Heavy_rain.mp3'
    },
    {
      'banglaText': 'ছাউ ছাম',
      'englishText': 'Collect the clothes',
      'imagePath': 'assets/images/weather/clothes.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Collect_the_cloths.mp3'
    },
    {
      'banglaText': 'ফোং',
      'englishText': 'Wind',
      'imagePath': 'assets/images/weather/wind.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Wind.mp3'
    },
    {
      'banglaText': 'তাই ফোং',
      'englishText': 'Strong wind',
      'imagePath': 'assets/images/weather/heavy_wind.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Strong_wind.mp3'
    },
    {
      'banglaText': 'চুন থিন',
      'englishText': 'Spring',
      'imagePath': 'assets/images/weather/spring.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Spring.mp3'
    },
    {
      'banglaText': 'হা থিন',
      'englishText': 'Summer',
      'imagePath': 'assets/images/weather/summer.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Summer.mp3'
    },
    {
      'banglaText': 'ঝাউ থিন',
      'englishText': 'Autumn',
      'imagePath': 'assets/images/weather/autumn.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Autumn.mp3'
    },
    {
      'banglaText': 'তোংথিন',
      'englishText': 'Winter',
      'imagePath': 'assets/images/weather/winter.png',
      'audioPath': 'Cantonese_Audio/Class1/Weather/0/Winter.mp3'
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
        title: Text('Weather', style: TextStyle(color: ColorIs.wColor)),
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
