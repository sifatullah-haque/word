import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';
import 'package:word/const/word_list.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Map<String, dynamic>> filteredData = [];

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    filteredData = List.from(wordList);
  }

  void _filterData(String query) {
    setState(() {
      if (query.isNotEmpty) {
        filteredData = wordList.where((item) {
          final banglaText = item['banglaText'].toString().toLowerCase();
          final englishText = item['englishText'].toString().toLowerCase();
          return banglaText.contains(query.toLowerCase()) ||
              englishText.contains(query.toLowerCase());
        }).toList();
      } else {
        filteredData = List.from(wordList);
      }
    });
  }

  AudioPlayer? audioPlayer;
  bool isPlaying = false;
  int? currentlyPlayingIndex;

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
        title: Text(
          "Search for word",
          style: TextStyle(color: ColorIs.wColor),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        centerTitle: true,
        backgroundColor: ColorIs.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            TextField(
              onChanged: _filterData,
              decoration: InputDecoration(
                hintText: 'Search for text...',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 containers per row
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0, // You can adjust this ratio as needed
                ),
                itemCount: filteredData.length,
                itemBuilder: (context, index) {
                  // Extract data for each container
                  final data = filteredData[index];
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
          ],
        ),
      ),
    );
  }
}
