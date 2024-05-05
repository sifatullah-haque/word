import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class Kitchenware extends StatefulWidget {
  @override
  State<Kitchenware> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<Kitchenware> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "ঝ্যু ফং",
      "englishText": "Kitchen",
      "imagePath": "assets/kitchen/1.jpg",
      "audioPath": "audio/kitchen/1.mp3"
    },
    {
      "banglaText": "স্যুত কোয়াই",
      "englishText": "Refrigerator",
      "imagePath": "assets/kitchen/2.jpg",
      "audioPath": "audio/kitchen/2.mp3"
    },
    {
      "banglaText": "সিংক পিন",
      "englishText": "Sink",
      "imagePath": "assets/kitchen/3.jpg",
      "audioPath": "audio/kitchen/3.mp3"
    },
    {
      "banglaText": "ঝাউ হেই ছিন",
      "englishText": "Exhaust fans",
      "imagePath": "assets/kitchen/4.jpg",
      "audioPath": "audio/kitchen/4.mp3"
    },
    {
      "banglaText": "ঝাউ ঝিন কেই",
      "englishText": "Kitchen ventilator",
      "imagePath": "assets/kitchen/5.jpg",
      "audioPath": "audio/kitchen/5.mp3"
    },
    {
      "banglaText": "মুই হেই লউ",
      "englishText": "Gas stove",
      "imagePath": "assets/kitchen/6.jpg",
      "audioPath": "audio/kitchen/6.mp3"
    },
    {
      "banglaText": "লং মেই",
      "englishText": "Smell burnt",
      "imagePath": "assets/kitchen/7.jpg",
      "audioPath": "audio/kitchen/7.mp3"
    },
    {
      "banglaText": "ঝ্যু কোয়াই",
      "englishText": "Cupboard",
      "imagePath": "assets/kitchen/8.jpg",
      "audioPath": "audio/kitchen/8.mp3"
    },
    {
      "banglaText": "ঊন",
      "englishText": "Bowl",
      "imagePath": "assets/kitchen/9.jpg",
      "audioPath": "audio/kitchen/9.mp3"
    },
    {
      "banglaText": "ফাই চি",
      "englishText": "Chopsticks",
      "imagePath": "assets/kitchen/10.jpg",
      "audioPath": "audio/kitchen/10.mp3"
    },
    {
      "banglaText": "থং উন",
      "englishText": "Soup bowl",
      "imagePath": "assets/kitchen/11.jpg",
      "audioPath": "audio/kitchen/11.mp3"
    },
    {
      "banglaText": "ঝি কান",
      "englishText": "Spoon",
      "imagePath": "assets/kitchen/12.jpg",
      "audioPath": "audio/kitchen/12.mp3"
    },
    {
      "banglaText": "ঝা কান",
      "englishText": "Tea spoon",
      "imagePath": "assets/kitchen/13.jpg",
      "audioPath": "audio/kitchen/13.mp3"
    },
    {
      "banglaText": "তিপ",
      "englishText": "Plate",
      "imagePath": "assets/kitchen/14.jpg",
      "audioPath": "audio/kitchen/14.mp3"
    },
    {
      "banglaText": "ছি ইয়াও তিপ",
      "englishText": "Soy sauce plate",
      "imagePath": "assets/kitchen/15.jpg",
      "audioPath": "audio/kitchen/15.mp3"
    },
    {
      "banglaText": "সাইকিত চিং",
      "englishText": "Liquid Detergent",
      "imagePath": "assets/kitchen/16.jpg",
      "audioPath": "audio/kitchen/16.mp3"
    },
    {
      "banglaText": "থয় পো",
      "englishText": "Table cloth",
      "imagePath": "assets/kitchen/17.jpg",
      "audioPath": "audio/kitchen/17.mp3"
    },
    {
      "banglaText": "কা",
      "englishText": "Rack",
      "imagePath": "assets/kitchen/18.jpg",
      "audioPath": "audio/kitchen/18.mp3"
    },
    {
      "banglaText": "চাম্পান",
      "englishText": "Chopping block",
      "imagePath": "assets/kitchen/19.jpg",
      "audioPath": "audio/kitchen/19.mp3"
    },
    {
      "banglaText": "তোও",
      "englishText": "Knife",
      "imagePath": "assets/kitchen/20.jpg",
      "audioPath": "audio/kitchen/20.mp3"
    },
    {
      "banglaText": "ঝয় তো",
      "englishText": "Kitchen sknife",
      "imagePath": "assets/kitchen/21.jpg",
      "audioPath": "audio/kitchen/21.mp3"
    },
    {
      "banglaText": "কান তাও তো",
      "englishText": "Can opener",
      "imagePath": "assets/kitchen/22.jpg",
      "audioPath": "audio/kitchen/22.mp3"
    },
    {
      "banglaText": "ঝা",
      "englishText": "Fork",
      "imagePath": "assets/kitchen/23.jpg",
      "audioPath": "audio/kitchen/23.mp3"
    },
    {
      "banglaText": "চন",
      "englishText": "Bottle",
      "imagePath": "assets/kitchen/24.jpg",
      "audioPath": "audio/kitchen/24.mp3"
    },
    {
      "banglaText": "সয় পুই",
      "englishText": "Glass",
      "imagePath": "assets/kitchen/25.jpg",
      "audioPath": "audio/kitchen/25.mp3"
    },
    {
      "banglaText": "ঝা পুই",
      "englishText": "Cup",
      "imagePath": "assets/kitchen/26.jpg",
      "audioPath": "audio/kitchen/26.mp3"
    },
    {
      "banglaText": "চাউ পুই",
      "englishText": "Wine glass",
      "imagePath": "assets/kitchen/27.jpg",
      "audioPath": "audio/kitchen/27.mp3"
    },
    {
      "banglaText": "তিন ফা পো",
      "englishText": "Rice cooker",
      "imagePath": "assets/kitchen/28.jpg",
      "audioPath": "audio/kitchen/28.mp3"
    },
    {
      "banglaText": "কাউ পান কেই",
      "englishText": "Blender",
      "imagePath": "assets/kitchen/29.jpg",
      "audioPath": "audio/kitchen/29.mp3"
    },
    {
      "banglaText": "ঝা চাপ কেই",
      "englishText": "Juicer",
      "imagePath": "assets/kitchen/30.jpg",
      "audioPath": "audio/kitchen/30.mp3"
    },
    {
      "banglaText": "তিন ছি লো",
      "englishText": "Induction cooker",
      "imagePath": "assets/kitchen/31.jpg",
      "audioPath": "audio/kitchen/31.mp3"
    },
    {
      "banglaText": "কোক লো",
      "englishText": "Oven",
      "imagePath": "assets/kitchen/32.jpg",
      "audioPath": "audio/kitchen/32.mp3"
    },
    {
      "banglaText": "মেই পোলো",
      "englishText": "Microwave",
      "imagePath": "assets/kitchen/33.jpg",
      "audioPath": "audio/kitchen/33.mp3"
    },
    {
      "banglaText": "তোছি লো",
      "englishText": "Toaster",
      "imagePath": "assets/kitchen/34.jpg",
      "audioPath": "audio/kitchen/34.mp3"
    },
    {
      "banglaText": "পো",
      "englishText": "Pot",
      "imagePath": "assets/kitchen/35.jpg",
      "audioPath": "audio/kitchen/35.mp3"
    },
    {
      "banglaText": "পো কয়",
      "englishText": "Pot cover",
      "imagePath": "assets/kitchen/36.jpg",
      "audioPath": "audio/kitchen/36.mp3"
    },
    {
      "banglaText": "আণ পো",
      "englishText": "Clay pot",
      "imagePath": "assets/kitchen/37.jpg",
      "audioPath": "audio/kitchen/37.mp3"
    },
    {
      "banglaText": "তিন সয় পো",
      "englishText": "Electronics Kettles",
      "imagePath": "assets/kitchen/38.jpg",
      "audioPath": "audio/kitchen/38.mp3"
    },
    {
      "banglaText": "সয় পো",
      "englishText": "Kettle",
      "imagePath": "assets/kitchen/39.jpg",
      "audioPath": "audio/kitchen/39.mp3"
    },
    {
      "banglaText": "কা ঊ",
      "englishText": "Teapot",
      "imagePath": "assets/kitchen/40.jpg",
      "audioPath": "audio/kitchen/40.mp3"
    },
    {
      "banglaText": "অক",
      "englishText": "Wok",
      "imagePath": "assets/kitchen/41.jpg",
      "audioPath": "audio/kitchen/41.mp3"
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
        title: Text('Kitchenware', style: TextStyle(color: ColorIs.wColor)),
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
