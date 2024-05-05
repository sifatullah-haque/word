import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Clothings extends StatefulWidget {
  @override
  State<Clothings> createState() => _ClothingsState();
}

class _ClothingsState extends State<Clothings> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "সাম",
      "englishText": "Clothes",
      "imagePath": "assets/clothing/1.jpg",
      "audioPath": "audio/clothing/1.mp3"
    },
    {
      "banglaText": "কয়েন থাউ সাম",
      "englishText": "Long sleeve",
      "imagePath": "assets/clothing/2.jpg",
      "audioPath": "audio/clothing/2.mp3"
    },
    {
      "banglaText": "ত্যুন  থাউ সাম",
      "englishText": "Short sleeve",
      "imagePath": "assets/clothing/3.jpg",
      "audioPath": "audio/clothing/3.mp3"
    },
    {
      "banglaText": "ঝ্যুত সাম",
      "englishText": "Shirt",
      "imagePath": "assets/clothing/4.jpg",
      "audioPath": "audio/clothing/4.mp3"
    },
    {
      "banglaText": "সাম লেং",
      "englishText": "Shirt collar",
      "imagePath": "assets/clothing/5.jpg",
      "audioPath": "audio/clothing/5.mp3"
    },
    {
      "banglaText": "সাম নাউ",
      "englishText": "Buttom",
      "imagePath": "assets/clothing/6.jpg",
      "audioPath": "audio/clothing/6.mp3"
    },
    {
      "banglaText": "সাম তয়",
      "englishText": "Pocket",
      "imagePath": "assets/clothing/7.jpg",
      "audioPath": "audio/clothing/7.mp3"
    },
    {
      "banglaText": "লউ",
      "englishText": "Jacket",
      "imagePath": "assets/clothing/8.jpg",
      "audioPath": "audio/clothing/8.mp3"
    },
    {
      "banglaText": "ফেই লউ",
      "englishText": "Leather jackets",
      "imagePath": "assets/clothing/9.jpg",
      "audioPath": "audio/clothing/9.mp3"
    },
    {
      "banglaText": "লয়ং সাম",
      "englishText": "Sweater",
      "imagePath": "assets/clothing/10.jpg",
      "audioPath": "audio/clothing/10.mp3"
    },
    {
      "banglaText": "পুই সাম",
      "englishText": "Vest",
      "imagePath": "assets/clothing/11.jpg",
      "audioPath": "audio/clothing/11.mp3"
    },
    {
      "banglaText": "সাই ঝং",
      "englishText": "Suit",
      "imagePath": "assets/clothing/12.jpg",
      "audioPath": "audio/clothing/12.mp3"
    },
    {
      "banglaText": "সাই ঝং ফু",
      "englishText": "Suit Pants",
      "imagePath": "assets/clothing/13.jpg",
      "audioPath": "audio/clothing/13.mp3"
    },
    {
      "banglaText": "তউ ঝং",
      "englishText": "Set",
      "imagePath": "assets/clothing/14.jpg",
      "audioPath": "audio/clothing/14.mp3"
    },
    {
      "banglaText": "লেং তাই",
      "englishText": "Tie",
      "imagePath": "assets/clothing/15.jpg",
      "audioPath": "audio/clothing/15.mp3"
    },
    {
      "banglaText": "QBs dz",
      "englishText": "Trouser",
      "imagePath": "assets/clothing/16.jpg",
      "audioPath": "audio/clothing/16.mp3"
    },
    {
      "banglaText": "চেং ফু",
      "englishText": "Shorts",
      "imagePath": "assets/clothing/17.jpg",
      "audioPath": "audio/clothing/17.mp3"
    },
    {
      "banglaText": "আ চাই ফু",
      "englishText": "Jeans",
      "imagePath": "assets/clothing/18.jpg",
      "audioPath": "audio/clothing/18.mp3"
    },
    {
      "banglaText": "খোয়ান",
      "englishText": "Skirt",
      "imagePath": "assets/clothing/19.jpg",
      "audioPath": "audio/clothing/19.mp3"
    },
    {
      "banglaText": "তুন খোয়ান",
      "englishText": "Short skirt",
      "imagePath": "assets/clothing/20.jpg",
      "audioPath": "audio/clothing/20.mp3"
    },
    {
      "banglaText": "সয় ঝি",
      "englishText": "Sleepwear",
      "imagePath": "assets/clothing/21.jpg",
      "audioPath": "audio/clothing/21.mp3"
    },
    {
      "banglaText": "তাই সাম",
      "englishText": "Bottom shirt",
      "imagePath": "assets/clothing/22.jpg",
      "audioPath": "audio/clothing/22.mp3"
    },
    {
      "banglaText": "তাই ফু",
      "englishText": "Underwear",
      "imagePath": "assets/clothing/23.jpg",
      "audioPath": "audio/clothing/23.mp3"
    },
    {
      "banglaText": "হোং ওয়াই",
      "englishText": "Bra",
      "imagePath": "assets/clothing/24.jpg",
      "audioPath": "audio/clothing/24.mp3"
    },
    {
      "banglaText": "হাউ ফোক",
      "englishText": "School Uniform",
      "imagePath": "assets/clothing/25.jpg",
      "audioPath": "audio/clothing/25.mp3"
    },
    {
      "banglaText": "ওয়ান তং সাম",
      "englishText": "Sports wear",
      "imagePath": "assets/clothing/26.jpg",
      "audioPath": "audio/clothing/26.mp3"
    },
    {
      "banglaText": "ওয়ান তং হাই",
      "englishText": "Sports shoes",
      "imagePath": "assets/clothing/27.jpg",
      "audioPath": "audio/clothing/27.mp3"
    },
    {
      "banglaText": "ফেই হাই",
      "englishText": "Leather shoes",
      "imagePath": "assets/clothing/28.jpg",
      "audioPath": "audio/clothing/28.mp3"
    },
    {
      "banglaText": "থ হাই",
      "englishText": "Slippers",
      "imagePath": "assets/clothing/29.jpg",
      "audioPath": "audio/clothing/29.mp3"
    },
    {
      "banglaText": "কো চাই হাই",
      "englishText": "High heel shoes",
      "imagePath": "assets/clothing/30.jpg",
      "audioPath": "audio/clothing/30.mp3"
    },
    {
      "banglaText": "পো হাই",
      "englishText": "Sports shoes",
      "imagePath": "assets/clothing/31.jpg",
      "audioPath": "audio/clothing/31.mp3"
    },
    {
      "banglaText": "মৌ",
      "englishText": "Hat",
      "imagePath": "assets/clothing/32.jpg",
      "audioPath": "audio/clothing/32.mp3"
    },
    {
      "banglaText": "খোয়ান",
      "englishText": "Scarf",
      "imagePath": "assets/clothing/33.jpg",
      "audioPath": "audio/clothing/33.mp3"
    },
    {
      "banglaText": "sau gan",
      "englishText": "Towel",
      "imagePath": "assets/clothing/34.jpg",
      "audioPath": "audio/clothing/34.mp3"
    },
    {
      "banglaText": "ফেই তাই",
      "englishText": "Leather belt",
      "imagePath": "assets/clothing/35.jpg",
      "audioPath": "audio/clothing/35.mp3"
    },
    {
      "banglaText": "চি মাত",
      "englishText": "Stockings",
      "imagePath": "assets/clothing/36.jpg",
      "audioPath": "audio/clothing/36.mp3"
    },
    {
      "banglaText": "মাত",
      "englishText": "Socks",
      "imagePath": "assets/clothing/37.jpg",
      "audioPath": "audio/clothing/37.mp3"
    },
    {
      "banglaText": "jyu saan",
      "englishText": "Umbrella",
      "imagePath": "assets/clothing/38.jpg",
      "audioPath": "audio/clothing/38.mp3"
    },
    {
      "banglaText": "ইয়ু লউ",
      "englishText": "Raincoat",
      "imagePath": "assets/clothing/39.jpg",
      "audioPath": "audio/clothing/39.mp3"
    },
    {
      "banglaText": "সাউ সাই সাম",
      "englishText": "Hand wash",
      "imagePath": "assets/clothing/40.jpg",
      "audioPath": "audio/clothing/40.mp3"
    },
    {
      "banglaText": "সাই সাম",
      "englishText": "Wash the clothes",
      "imagePath": "assets/clothing/41.jpg",
      "audioPath": "audio/clothing/41.mp3"
    },
    {
      "banglaText": "লং সাম",
      "englishText": "Hang the clothes",
      "imagePath": "assets/clothing/42.jpg",
      "audioPath": "audio/clothing/42.mp3"
    },
    {
      "banglaText": "থং সাম",
      "englishText": "Iron the clothes",
      "imagePath": "assets/clothing/43.jpg",
      "audioPath": "audio/clothing/43.mp3"
    },
    {
      "banglaText": "চিপ সাম",
      "englishText": "Folder clothes",
      "imagePath": "assets/clothing/44.jpg",
      "audioPath": "audio/clothing/44.mp3"
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
        title: Text('Clothings', style: TextStyle(color: ColorIs.wColor)),
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
