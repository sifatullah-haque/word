import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class ElectricalAppliance extends StatefulWidget {
  @override
  State<ElectricalAppliance> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<ElectricalAppliance> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "খাপ ঝান কেই",
      "englishText": "Vacuum cleaner",
      "imagePath": "assets/household/1.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Electrics/1/Vacuum cleaner.mp3"
    },
    {
      "banglaText": "ছাই ই কেই",
      "englishText": "Washing Machine",
      "imagePath": "assets/household/2.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Electrics/1/Washing Machine.mp3"
    },
    {
      "banglaText": "ছাই ই ফান",
      "englishText": "Washing powder",
      "imagePath": "assets/household/3.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Electrics/1/Washing powder.mp3"
    },
    {
      "banglaText": "কন ই কেই",
      "englishText": "Dryers",
      "imagePath": "assets/household/4.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Electrics/1/Dryers.mp3"
    },
    {
      "banglaText": "থং সাম পান",
      "englishText": "Ironing Board",
      "imagePath": "assets/household/5.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Electrics/1/Ironing Board.mp3"
    },
    {
      "banglaText": "থং তাও",
      "englishText": "Iron",
      "imagePath": "assets/household/6.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Electrics/1/Iron.mp3"
    },
    {
      "banglaText": "চেং হেই  থং তাও",
      "englishText": "Stream Iron",
      "imagePath": "assets/household/7.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Electrics/1/Stream Iron.mp3"
    },
    {
      "banglaText": "সাউ চাম কেই",
      "englishText": "Radio",
      "imagePath": "assets/household/8.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Electrics/1/Radio.mp3"
    },
    {
      "banglaText": "সাউ  তাই তিন অয়া",
      "englishText": "Mobile phone",
      "imagePath": "assets/household/9.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Electrics/1/Mobile phone.mp3"
    },
    {
      "banglaText": "চা তিন হেই",
      "englishText": "Charger",
      "imagePath": "assets/household/10.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Electrics/1/Charger.mp3"
    },
    {
      "banglaText": "তিন চি",
      "englishText": "Battery",
      "imagePath": "assets/household/11.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Electrics/1/Battery.mp3"
    },
    {
      "banglaText": "সইয়ং কেই",
      "englishText": "Camera",
      "imagePath": "assets/household/12.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Electrics/1/Camera.mp3"
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
        title: Text('Electrical Appliance',
            style: TextStyle(color: ColorIs.wColor)),
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
