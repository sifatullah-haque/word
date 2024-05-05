import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';

class SimpleConversation extends StatefulWidget {
  @override
  State<SimpleConversation> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<SimpleConversation> {
  // Define a list of data for your containers
  final List<Map<String, dynamic>> containerData = [
    {
      "banglaText": "হউ",
      "englishText": "Good",
      "imagePath": "assets/qualities/good.jpg",
      "audioPath": "audio/qualities/good.mp3"
    },
    {
      "banglaText": "উম হউ",
      "englishText": "Not good",
      "imagePath": "assets/qualities/not_good.jpg",
      "audioPath": "audio/qualities/not_good.mp3"
    },
    {
      "banglaText": "লেং",
      "englishText": "Beautiful",
      "imagePath": "assets/qualities/beautiful.jpg",
      "audioPath": "audio/qualities/beautiful.mp3"
    },
    {
      "banglaText": "উম লেং",
      "englishText": "Ugly",
      "imagePath": "assets/qualities/ugly.jpg",
      "audioPath": "audio/qualities/ugly.mp3"
    },
    {
      "banglaText": "সান",
      "englishText": "New",
      "imagePath": "assets/qualities/new.jpg",
      "audioPath": "audio/qualities/new.mp3"
    },
    {
      "banglaText": "কাউ",
      "englishText": "Old",
      "imagePath": "assets/qualities/old.jpg",
      "audioPath": "audio/qualities/old.mp3"
    },
    {
      "banglaText": "তাই",
      "englishText": "Big",
      "imagePath": "assets/qualities/big.jpg",
      "audioPath": "audio/qualities/big.mp3"
    },
    {
      "banglaText": "সাই",
      "englishText": "Small",
      "imagePath": "assets/qualities/small.jpg",
      "audioPath": "audio/qualities/small.mp3"
    },
    {
      "banglaText": "হেং",
      "englishText": "Light",
      "imagePath": "assets/qualities/light.jpg",
      "audioPath": "audio/qualities/light.mp3"
    },
    {
      "banglaText": "ঝো",
      "englishText": "Heavy",
      "imagePath": "assets/qualities/heavy.jpg",
      "audioPath": "audio/qualities/heavy.mp3"
    },
    {
      "banglaText": "ফাই",
      "englishText": "Quick",
      "imagePath": "assets/qualities/quick.jpg",
      "audioPath": "audio/qualities/quick.mp3"
    },
    {
      "banglaText": "মান",
      "englishText": "Slow",
      "imagePath": "assets/qualities/slow.jpg",
      "audioPath": "audio/qualities/slow.mp3"
    },
    {
      "banglaText": "চৌ",
      "englishText": "Early",
      "imagePath": "assets/qualities/early.jpg",
      "audioPath": "audio/qualities/early.mp3"
    },
    {
      "banglaText": "ঝি",
      "englishText": "Late",
      "imagePath": "assets/qualities/late.jpg",
      "audioPath": "audio/qualities/late.mp3"
    },
    {
      "banglaText": "ত",
      "englishText": "A lot of",
      "imagePath": "assets/qualities/a_lot_of.jpg",
      "audioPath": "audio/qualities/a_lot_of.mp3"
    },
    {
      "banglaText": "সিউ",
      "englishText": "Little",
      "imagePath": "assets/qualities/little.jpg",
      "audioPath": "audio/qualities/little.mp3"
    },
    {
      "banglaText": "হউ তো",
      "englishText": "Plenty of",
      "imagePath": "assets/qualities/plenty_of.jpg",
      "audioPath": "audio/qualities/plenty_of.mp3"
    },
    {
      "banglaText": "হউ ছিউ",
      "englishText": "Very little",
      "imagePath": "assets/qualities/very_little.jpg",
      "audioPath": "audio/qualities/very_little.mp3"
    },
    {
      "banglaText": "ইয়ুন",
      "englishText": "Far",
      "imagePath": "assets/qualities/far.jpg",
      "audioPath": "audio/qualities/far.mp3"
    },
    {
      "banglaText": "খান",
      "englishText": "Near",
      "imagePath": "assets/qualities/near.jpg",
      "audioPath": "audio/qualities/near.mp3"
    },
    {
      "banglaText": "ঝয়ং",
      "englishText": "Long",
      "imagePath": "assets/qualities/long.jpg",
      "audioPath": "audio/qualities/long.mp3"
    },
    {
      "banglaText": "তুন",
      "englishText": "Short",
      "imagePath": "assets/qualities/short.jpg",
      "audioPath": "audio/qualities/short.mp3"
    },
    {
      "banglaText": "গ্বোয়াইং",
      "englishText": "Bright",
      "imagePath": "assets/qualities/bright.jpg",
      "audioPath": "audio/qualities/bright.mp3"
    },
    {
      "banglaText": "আম",
      "englishText": "Dark",
      "imagePath": "assets/qualities/dark.jpg",
      "audioPath": "audio/qualities/dark.mp3"
    },
    {
      "banglaText": "কৌ",
      "englishText": "High",
      "imagePath": "assets/qualities/high.jpg",
      "audioPath": "audio/qualities/high.mp3"
    },
    {
      "banglaText": "আই",
      "englishText": "Short",
      "imagePath": "assets/qualities/short.jpg",
      "audioPath": "audio/qualities/short.mp3"
    },
    {
      "banglaText": "হাউ",
      "englishText": "Thick",
      "imagePath": "assets/qualities/thick.jpg",
      "audioPath": "audio/qualities/thick.mp3"
    },
    {
      "banglaText": "পক",
      "englishText": "Thick",
      "imagePath": "assets/qualities/thick.jpg",
      "audioPath": "audio/qualities/thick.mp3"
    },
    {
      "banglaText": "ঝউ",
      "englishText": "Crude",
      "imagePath": "assets/qualities/crude.jpg",
      "audioPath": "audio/qualities/crude.mp3"
    },
    {
      "banglaText": "আউ",
      "englishText": "Soft",
      "imagePath": "assets/qualities/soft.jpg",
      "audioPath": "audio/qualities/soft.mp3"
    },
    {
      "banglaText": "সাম",
      "englishText": "Deep",
      "imagePath": "assets/qualities/deep.jpg",
      "audioPath": "audio/qualities/deep.mp3"
    },
    {
      "banglaText": "চিন",
      "englishText": "Easy",
      "imagePath": "assets/qualities/easy.jpg",
      "audioPath": "audio/qualities/easy.mp3"
    },
    {
      "banglaText": "লউ",
      "englishText": "Old",
      "imagePath": "assets/qualities/old.jpg",
      "audioPath": "audio/qualities/old.mp3"
    },
    {
      "banglaText": "জিক",
      "englishText": "Straight",
      "imagePath": "assets/qualities/straight.jpg",
      "audioPath": "audio/qualities/straight.mp3"
    },
    {
      "banglaText": "মুন",
      "englishText": "Full",
      "imagePath": "assets/qualities/full.jpg",
      "audioPath": "audio/qualities/full.mp3"
    },
    {
      "banglaText": "সিউ",
      "englishText": "Laugh",
      "imagePath": "assets/qualities/laugh.jpg",
      "audioPath": "audio/qualities/laugh.mp3"
    },
    {
      "banglaText": "হাম",
      "englishText": "Cry",
      "imagePath": "assets/qualities/cry.jpg",
      "audioPath": "audio/qualities/cry.mp3"
    },
    {
      "banglaText": "হই সাম",
      "englishText": "Happy",
      "imagePath": "assets/qualities/happy.jpg",
      "audioPath": "audio/qualities/happy.mp3"
    },
    {
      "banglaText": "উম হই সাম",
      "englishText": "Unhappy",
      "imagePath": "assets/qualities/unhappy.jpg",
      "audioPath": "audio/qualities/unhappy.mp3"
    },
    {
      "banglaText": "আন ফান",
      "englishText": "Sleepy",
      "imagePath": "assets/qualities/sleepy.jpg",
      "audioPath": "audio/qualities/sleepy.mp3"
    },
    {
      "banglaText": "ফান কাউ",
      "englishText": "Sleeping",
      "imagePath": "assets/actions/sleeping.jpg",
      "audioPath": "audio/actions/sleeping.mp3"
    },
    {
      "banglaText": "ফাই তি",
      "englishText": "Be quick",
      "imagePath": "assets/actions/be_quick.jpg",
      "audioPath": "audio/actions/be_quick.mp3"
    },
    {
      "banglaText": "ইয়াও সেক",
      "englishText": "Have a rest",
      "imagePath": "assets/actions/have_rest.jpg",
      "audioPath": "audio/actions/have_rest.mp3"
    },
    {
      "banglaText": "সেক চ ফান",
      "englishText": "Have your meal yet?",
      "imagePath": "assets/actions/have_meal_yet.jpg",
      "audioPath": "audio/actions/have_meal_yet.mp3"
    },
    {
      "banglaText": "চ ইয়ুন",
      "englishText": "Finished",
      "imagePath": "assets/actions/finished.jpg",
      "audioPath": "audio/actions/finished.mp3"
    },
    {
      "banglaText": "সিউ জি ফান মেই",
      "englishText": "Full",
      "imagePath": "assets/actions/full.jpg",
      "audioPath": "audio/actions/full.mp3"
    },
    {
      "banglaText": "চোং মেই",
      "englishText": "Not yet",
      "imagePath": "assets/actions/not_yet.jpg",
      "audioPath": "audio/actions/not_yet.mp3"
    },
    {
      "banglaText": "হউ মেই",
      "englishText": "Taste good",
      "imagePath": "assets/actions/taste_good.jpg",
      "audioPath": "audio/actions/taste_good.mp3"
    },
    {
      "banglaText": "হউ সেক",
      "englishText": "Feed",
      "imagePath": "assets/actions/feed.jpg",
      "audioPath": "audio/actions/feed.mp3"
    },
    {
      "banglaText": "ওয়াই লাই",
      "englishText": "Feeding milk",
      "imagePath": "assets/actions/feeding_milk.jpg",
      "audioPath": "audio/actions/feeding_milk.mp3"
    },
    {
      "banglaText": "হই",
      "englishText": "Open",
      "imagePath": "assets/actions/open.jpg",
      "audioPath": "audio/actions/open.mp3"
    },
    {
      "banglaText": "কোয়ান",
      "englishText": "Close",
      "imagePath": "assets/actions/close.jpg",
      "audioPath": "audio/actions/close.mp3"
    },
    {
      "banglaText": "হই মনু",
      "englishText": "Open the door",
      "imagePath": "assets/actions/open_door.jpg",
      "audioPath": "audio/actions/open_door.mp3"
    },
    {
      "banglaText": "সান মুন",
      "englishText": "Close the door",
      "imagePath": "assets/actions/close_door.jpg",
      "audioPath": "audio/actions/close_door.mp3"
    },
    {
      "banglaText": "হই তাং",
      "englishText": "Turn on the light",
      "imagePath": "assets/actions/turn_on_light.jpg",
      "audioPath": "audio/actions/turn_on_light.mp3"
    },
    {
      "banglaText": "সিক তাং",
      "englishText": "Switch off the light",
      "imagePath": "assets/actions/switch_off_light.jpg",
      "audioPath": "audio/actions/switch_off_light.mp3"
    },
    {
      "banglaText": "সুই ফোক",
      "englishText": "Comfortable",
      "imagePath": "assets/actions/comfortable.jpg",
      "audioPath": "audio/actions/comfortable.mp3"
    },
    {
      "banglaText": "ইয়াও মউ",
      "englishText": "Any",
      "imagePath": "assets/actions/any.jpg",
      "audioPath": "audio/actions/any.mp3"
    },
    {
      "banglaText": "ইয়াও",
      "englishText": "Have",
      "imagePath": "assets/actions/have.jpg",
      "audioPath": "audio/actions/have.mp3"
    },
    {
      "banglaText": "মউ",
      "englishText": "No",
      "imagePath": "assets/actions/no.jpg",
      "audioPath": "audio/actions/no.mp3"
    },
    {
      "banglaText": "হাই উম হাই",
      "englishText": "Yes or No?",
      "imagePath": "assets/questions/yes_or_no.jpg",
      "audioPath": "audio/questions/yes_or_no.mp3"
    },
    {
      "banglaText": "হাই",
      "englishText": "Yes",
      "imagePath": "assets/answers/yes.jpg",
      "audioPath": "audio/answers/yes.mp3"
    },
    {
      "banglaText": "উম হাই",
      "englishText": "No",
      "imagePath": "assets/answers/no.jpg",
      "audioPath": "audio/answers/no.mp3"
    },
    {
      "banglaText": "হ উম হ ই আ",
      "englishText": "May I?",
      "imagePath": "assets/questions/may_I.jpg",
      "audioPath": "audio/questions/may_I.mp3"
    },
    {
      "banglaText": "তাক/ হ ই",
      "englishText": "...can",
      "imagePath": "assets/answers/can.jpg",
      "audioPath": "audio/answers/can.mp3"
    },
    {
      "banglaText": "উম তাক / উম হ ই",
      "englishText": "No, can't",
      "imagePath": "assets/answers/cannot.jpg",
      "audioPath": "audio/answers/cannot.mp3"
    },
    {
      "banglaText": "ইউ",
      "englishText": "Will",
      "imagePath": "assets/questions/will.jpg",
      "audioPath": "audio/questions/will.mp3"
    },
    {
      "banglaText": "উম ইউ",
      "englishText": "Will not",
      "imagePath": "assets/answers/will_not.jpg",
      "audioPath": "audio/answers/will_not.mp3"
    },
    {
      "banglaText": "কাউ উম কাউ",
      "englishText": "Enough or not?",
      "imagePath": "assets/questions/enough_or_not.jpg",
      "audioPath": "audio/questions/enough_or_not.mp3"
    },
    {
      "banglaText": "কাউ",
      "englishText": "Enough",
      "imagePath": "assets/answers/enough.jpg",
      "audioPath": "audio/answers/enough.mp3"
    },
    {
      "banglaText": "উম কাউ",
      "englishText": "Not enough",
      "imagePath": "assets/answers/not_enough.jpg",
      "audioPath": "audio/answers/not_enough.mp3"
    },
    {
      "banglaText": "লেই ইউ উম ইউ আ",
      "englishText": "Do you want?",
      "imagePath": "assets/questions/do_you_want.jpg",
      "audioPath": "audio/questions/do_you_want.mp3"
    },
    {
      "banglaText": "অ ইউ আ",
      "englishText": "Want/Need",
      "imagePath": "assets/answers/want_need.jpg",
      "audioPath": "audio/answers/want_need.mp3"
    },
    {
      "banglaText": "উম ইউ আ",
      "englishText": "No, thanks",
      "imagePath": "assets/answers/no_thanks.jpg",
      "audioPath": "audio/answers/no_thanks.mp3"
    },
    {
      "banglaText": "মিং উম মেং পা",
      "englishText": "Do you understand?",
      "imagePath": "assets/questions/do_you_understand.jpg",
      "audioPath": "audio/questions/do_you_understand.mp3"
    },
    {
      "banglaText": "মেং পা",
      "englishText": "Understand",
      "imagePath": "assets/answers/understand.jpg",
      "audioPath": "audio/answers/understand.mp3"
    },
    {
      "banglaText": "উম মেং পা",
      "englishText": "I don't understand",
      "imagePath": "assets/answers/i_dont_understand.jpg",
      "audioPath": "audio/answers/i_dont_understand.mp3"
    },
    {
      "banglaText": "চি উম চি",
      "englishText": "Do you know?",
      "imagePath": "assets/questions/do_you_know.jpg",
      "audioPath": "audio/questions/do_you_know.mp3"
    },
    {
      "banglaText": "উম চি",
      "englishText": "I don't know",
      "imagePath": "assets/answers/i_dont_know.jpg",
      "audioPath": "audio/answers/i_dont_know.mp3"
    },
    {
      "banglaText": "চি ত",
      "englishText": "Understand",
      "imagePath": "assets/answers/understand.jpg",
      "audioPath": "audio/answers/understand.mp3"
    },
    {
      "banglaText": "ইয়াও মোমান থাই",
      "englishText": "Any problem?",
      "imagePath": "assets/questions/any_problem.jpg",
      "audioPath": "audio/questions/any_problem.mp3"
    },
    {
      "banglaText": "মোমান থাই",
      "englishText": "No problem",
      "imagePath": "assets/answers/no_problem.jpg",
      "audioPath": "audio/answers/no_problem.mp3"
    },
    {
      "banglaText": "তোচে সাই",
      "englishText": "Thank you",
      "imagePath": "assets/expressions/thank_you.jpg",
      "audioPath": "audio/expressions/thank_you.mp3"
    },
    {
      "banglaText": "লেই কিউ মে মেং আ",
      "englishText": "What is your name?",
      "imagePath": "assets/questions/what_is_your_name.jpg",
      "audioPath": "audio/questions/what_is_your_name.mp3"
    },
    {
      "banglaText": "অ কিউ …।",
      "englishText": "My name is…",
      "imagePath": "assets/answers/my_name_is.jpg",
      "audioPath": "audio/answers/my_name_is.mp3"
    },
    {
      "banglaText": "লেই হাই পিন তো ইয়ান",
      "englishText": "Where are you come from?",
      "imagePath": "assets/questions/where_are_you_from.jpg",
      "audioPath": "audio/questions/where_are_you_from.mp3"
    },
    {
      "banglaText": "অ হাই মাংকালাই ইয়ান",
      "englishText": "I came from Bangladesh",
      "imagePath": "assets/answers/i_came_from.jpg",
      "audioPath": "audio/answers/i_came_from.mp3"
    },
    {
      "banglaText": "লেই কাম লিন  কেই তো সয় আ",
      "englishText": "How old are you?",
      "imagePath": "assets/questions/how_old_are_you.jpg",
      "audioPath": "audio/questions/how_old_are_you.mp3"
    },
    {
      "banglaText": "অ কাম লিন … সয়",
      "englishText": "I am … years old",
      "imagePath": "assets/answers/i_am_years_old.jpg",
      "audioPath": "audio/answers/i_am_years_old.mp3"
    },
    {
      "banglaText": "লেই কিত চ ফান মেই আ",
      "englishText": "Have you get married?",
      "imagePath": "assets/questions/have_you_married.jpg",
      "audioPath": "audio/questions/have_you_married.mp3"
    },
    {
      "banglaText": "অ কিত চ ফান",
      "englishText": "I am married",
      "imagePath": "assets/answers/married.jpg",
      "audioPath": "audio/answers/married.mp3"
    },
    {
      "banglaText": "অ মেই কিট ফান",
      "englishText": "I am single",
      "imagePath": "assets/answers/single.jpg",
      "audioPath": "audio/answers/single.mp3"
    },
    {
      "banglaText": "লেই চ ফান",
      "englishText": "I am divorced",
      "imagePath": "assets/answers/divorced.jpg",
      "audioPath": "audio/answers/divorced.mp3"
    },
    {
      "banglaText": "লেই ইয়াও মৌ  চাই লয় আ",
      "englishText": "How many kids do you have?",
      "imagePath": "assets/questions/how_many_kids.jpg",
      "audioPath": "audio/questions/how_many_kids.mp3"
    },
    {
      "banglaText": "অ ইয়াও চাই লয়",
      "englishText": "I have … son … daughter",
      "imagePath": "assets/answers/i_have_kids.jpg",
      "audioPath": "audio/answers/i_have_kids.mp3"
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
        title: Text('Simple Conversation',
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
