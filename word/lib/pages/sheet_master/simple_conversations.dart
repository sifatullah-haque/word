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
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Good.mp3"
    },
    {
      "banglaText": "উম হউ",
      "englishText": "Not good",
      "imagePath": "assets/qualities/not_good.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Not good.mp3"
    },
    {
      "banglaText": "লেং",
      "englishText": "Beautiful",
      "imagePath": "assets/qualities/beautiful.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Beautiful.mp3"
    },
    {
      "banglaText": "উম লেং",
      "englishText": "Ugly",
      "imagePath": "assets/qualities/ugly.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Ugly.mp3"
    },
    {
      "banglaText": "সান",
      "englishText": "New",
      "imagePath": "assets/qualities/new.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/New.mp3"
    },
    {
      "banglaText": "কাউ",
      "englishText": "Old",
      "imagePath": "assets/qualities/old.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Old.mp3"
    },
    {
      "banglaText": "তাই",
      "englishText": "Big",
      "imagePath": "assets/qualities/big.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Big.mp3"
    },
    {
      "banglaText": "সাই",
      "englishText": "Small",
      "imagePath": "assets/qualities/small.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Small.mp3"
    },
    {
      "banglaText": "হেং",
      "englishText": "Light",
      "imagePath": "assets/qualities/light.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Light.mp3"
    },
    {
      "banglaText": "ঝো",
      "englishText": "Heavy",
      "imagePath": "assets/qualities/heavy.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Heavy.mp3"
    },
    {
      "banglaText": "ফাই",
      "englishText": "Quick",
      "imagePath": "assets/qualities/quick.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Quick.mp3"
    },
    {
      "banglaText": "মান",
      "englishText": "Slow",
      "imagePath": "assets/qualities/slow.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Slow.mp3"
    },
    {
      "banglaText": "চৌ",
      "englishText": "Early",
      "imagePath": "assets/qualities/early.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Early.mp3"
    },
    {
      "banglaText": "ঝি",
      "englishText": "Late",
      "imagePath": "assets/qualities/late.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Late.mp3"
    },
    {
      "banglaText": "ত",
      "englishText": "A lot of",
      "imagePath": "assets/qualities/a_lot_of.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/A lot of.mp3"
    },
    {
      "banglaText": "সিউ",
      "englishText": "Little",
      "imagePath": "assets/qualities/little.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Little.mp3"
    },
    {
      "banglaText": "হউ তো",
      "englishText": "Plenty of",
      "imagePath": "assets/qualities/plenty_of.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Plenty of.mp3"
    },
    {
      "banglaText": "হউ ছিউ",
      "englishText": "Very little",
      "imagePath": "assets/qualities/very_little.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Very little.mp3"
    },
    {
      "banglaText": "ইয়ুন",
      "englishText": "Far",
      "imagePath": "assets/qualities/far.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Far.mp3"
    },
    {
      "banglaText": "খান",
      "englishText": "Near",
      "imagePath": "assets/qualities/near.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Near.mp3"
    },
    {
      "banglaText": "ঝয়ং",
      "englishText": "Long",
      "imagePath": "assets/qualities/long.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Long.mp3"
    },
    {
      "banglaText": "তুন",
      "englishText": "Short",
      "imagePath": "assets/qualities/short.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Short.mp3"
    },
    {
      "banglaText": "গ্বোয়াইং",
      "englishText": "Bright",
      "imagePath": "assets/qualities/bright.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Bright.mp3"
    },
    {
      "banglaText": "আম",
      "englishText": "Dark",
      "imagePath": "assets/qualities/dark.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Dark.mp3"
    },
    {
      "banglaText": "কৌ",
      "englishText": "High",
      "imagePath": "assets/qualities/high.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/High.mp3"
    },
    {
      "banglaText": "আই",
      "englishText": "Short",
      "imagePath": "assets/qualities/short.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Short.mp3"
    },
    {
      "banglaText": "হাউ",
      "englishText": "Thick",
      "imagePath": "assets/qualities/thick.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Thick.mp3"
    },
    {
      "banglaText": "ঝউ",
      "englishText": "Crude",
      "imagePath": "assets/qualities/crude.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Crude.mp3"
    },
    {
      "banglaText": "আউ",
      "englishText": "Soft",
      "imagePath": "assets/qualities/soft.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Soft.mp3"
    },
    {
      "banglaText": "সাম",
      "englishText": "Deep",
      "imagePath": "assets/qualities/deep.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Deep.mp3"
    },
    {
      "banglaText": "চিন",
      "englishText": "Easy",
      "imagePath": "assets/qualities/easy.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Easy.mp3"
    },
    {
      "banglaText": "লউ",
      "englishText": "Old",
      "imagePath": "assets/qualities/old.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Old.mp3"
    },
    {
      "banglaText": "জিক",
      "englishText": "Straight",
      "imagePath": "assets/qualities/straight.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Straight.mp3"
    },
    {
      "banglaText": "মুন",
      "englishText": "Full",
      "imagePath": "assets/qualities/full.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Full.mp3"
    },
    {
      "banglaText": "সিউ",
      "englishText": "Laugh",
      "imagePath": "assets/qualities/laugh.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Laugh.mp3"
    },
    {
      "banglaText": "হাম",
      "englishText": "Cry",
      "imagePath": "assets/qualities/cry.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Cry.mp3"
    },
    {
      "banglaText": "হই সাম",
      "englishText": "Happy",
      "imagePath": "assets/qualities/happy.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Happy.mp3"
    },
    {
      "banglaText": "উম হই সাম",
      "englishText": "Unhappy",
      "imagePath": "assets/qualities/unhappy.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Unhappy.mp3"
    },
    {
      "banglaText": "আন ফান",
      "englishText": "Sleepy",
      "imagePath": "assets/qualities/sleepy.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Sleepy.mp3"
    },
    {
      "banglaText": "ফান কাউ",
      "englishText": "Sleeping",
      "imagePath": "assets/actions/sleeping.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Sleeping.mp3"
    },
    {
      "banglaText": "ফাই তি",
      "englishText": "Be quick",
      "imagePath": "assets/actions/be_quick.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Be quick.mp3"
    },
    {
      "banglaText": "ইয়াও সেক",
      "englishText": "Have a rest",
      "imagePath": "assets/actions/have_rest.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Have a rest.mp3"
    },
    {
      "banglaText": "সেক চ ফান",
      "englishText": "Have your meal yet?",
      "imagePath": "assets/actions/have_meal_yet.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Simple/1/Have your meal yet.mp3"
    },
    {
      "banglaText": "চ ইয়ুন",
      "englishText": "Finished",
      "imagePath": "assets/actions/finished.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Finished.mp3"
    },
    {
      "banglaText": "সিউ জি ফান মেই",
      "englishText": "Full",
      "imagePath": "assets/actions/full.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Full.mp3"
    },
    {
      "banglaText": "চোং মেই",
      "englishText": "Not yet",
      "imagePath": "assets/actions/not_yet.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Not yet.mp3"
    },
    {
      "banglaText": "হউ মেই",
      "englishText": "Taste good",
      "imagePath": "assets/actions/taste_good.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Taste good.mp3"
    },
    {
      "banglaText": "হউ সেক",
      "englishText": "Feed",
      "imagePath": "assets/actions/feed.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Feed.mp3"
    },
    {
      "banglaText": "ওয়াই লাই",
      "englishText": "Feeding milk",
      "imagePath": "assets/actions/feeding_milk.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Feeding milk.mp3"
    },
    {
      "banglaText": "হই",
      "englishText": "Open",
      "imagePath": "assets/actions/open.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Open.mp3"
    },
    {
      "banglaText": "কোয়ান",
      "englishText": "Close",
      "imagePath": "assets/actions/close.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Close.mp3"
    },
    {
      "banglaText": "হই মনু",
      "englishText": "Open the door",
      "imagePath": "assets/actions/open_door.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Open the door.mp3"
    },
    {
      "banglaText": "সান মুন",
      "englishText": "Close the door",
      "imagePath": "assets/actions/close_door.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Close the door.mp3"
    },
    {
      "banglaText": "হই তাং",
      "englishText": "Turn on the light",
      "imagePath": "assets/actions/turn_on_light.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Turn on the light.mp3"
    },
    {
      "banglaText": "সিক তাং",
      "englishText": "Switch off the light",
      "imagePath": "assets/actions/switch_off_light.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Simple/1/Switch off the light.mp3"
    },
    {
      "banglaText": "সুই ফোক",
      "englishText": "Comfortable",
      "imagePath": "assets/actions/comfortable.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Comfortable.mp3"
    },
    {
      "banglaText": "ইয়াও মউ",
      "englishText": "Any",
      "imagePath": "assets/actions/any.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Any.mp3"
    },
    {
      "banglaText": "ইয়াও",
      "englishText": "Have",
      "imagePath": "assets/actions/have.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Have.mp3"
    },
    {
      "banglaText": "মউ",
      "englishText": "No",
      "imagePath": "assets/actions/no.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/No.mp3"
    },
    {
      "banglaText": "হাই উম হাই",
      "englishText": "Yes or No?",
      "imagePath": "assets/questions/yes_or_no.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Yes or No_.mp3"
    },
    {
      "banglaText": "হাই",
      "englishText": "Yes",
      "imagePath": "assets/answers/yes.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Yes.mp3"
    },
    {
      "banglaText": "উম হাই",
      "englishText": "No",
      "imagePath": "assets/answers/no.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/No.mp3"
    },
    {
      "banglaText": "হ উম হ ই আ",
      "englishText": "May I?",
      "imagePath": "assets/questions/may_I.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/May I_.mp3"
    },
    {
      "banglaText": "তাক/ হ ই",
      "englishText": "...can",
      "imagePath": "assets/answers/can.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/can.mp3"
    },
    {
      "banglaText": "উম তাক / উম হ ই",
      "englishText": "No, can't",
      "imagePath": "assets/answers/cannot.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/No_cant.mp3"
    },
    {
      "banglaText": "ইউ",
      "englishText": "Will",
      "imagePath": "assets/questions/will.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Will.mp3"
    },
    {
      "banglaText": "উম ইউ",
      "englishText": "Will not",
      "imagePath": "assets/answers/will_not.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Will not.mp3"
    },
    {
      "banglaText": "কাউ উম কাউ",
      "englishText": "Enough or not?",
      "imagePath": "assets/questions/enough_or_not.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Enough or not_.mp3"
    },
    {
      "banglaText": "কাউ",
      "englishText": "Enough",
      "imagePath": "assets/answers/enough.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Enough.mp3"
    },
    {
      "banglaText": "উম কাউ",
      "englishText": "Not enough",
      "imagePath": "assets/answers/not_enough.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Not enough.mp3"
    },
    {
      "banglaText": "লেই ইউ উম ইউ আ",
      "englishText": "Do you want?",
      "imagePath": "assets/questions/do_you_want.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Do you want_.mp3"
    },
    {
      "banglaText": "অ ইউ আ",
      "englishText": "Want/Need",
      "imagePath": "assets/answers/want_need.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Want.mp3"
    },
    {
      "banglaText": "উম ইউ আ",
      "englishText": "No, thanks",
      "imagePath": "assets/answers/no_thanks.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/No_thanks.mp3"
    },
    {
      "banglaText": "মিং উম মেং পা",
      "englishText": "Do you understand?",
      "imagePath": "assets/questions/do_you_understand.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Simple/1/Do you understand_.mp3"
    },
    {
      "banglaText": "মেং পা",
      "englishText": "Understand",
      "imagePath": "assets/answers/understand.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Understand.mp3"
    },
    {
      "banglaText": "উম মেং পা",
      "englishText": "I don't understand",
      "imagePath": "assets/answers/i_dont_understand.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/I_dont_understand.mp3"
    },
    {
      "banglaText": "চি উম চি",
      "englishText": "Do you know?",
      "imagePath": "assets/questions/do_you_know.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Do you know_.mp3"
    },
    {
      "banglaText": "উম চি",
      "englishText": "I don't know",
      "imagePath": "assets/answers/i_dont_know.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/I_dont_know.mp3"
    },
    {
      "banglaText": "চি ত",
      "englishText": "Understand",
      "imagePath": "assets/answers/understand.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Understand.mp3"
    },
    {
      "banglaText": "ইয়াও মোমান থাই",
      "englishText": "Any problem?",
      "imagePath": "assets/questions/any_problem.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Any problem_.mp3"
    },
    {
      "banglaText": "মোমান থাই",
      "englishText": "No problem",
      "imagePath": "assets/answers/no_problem.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/No problem.mp3"
    },
    {
      "banglaText": "তোচে সাই",
      "englishText": "Thank you",
      "imagePath": "assets/expressions/thank_you.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/Thank you.mp3"
    },
    {
      "banglaText": "লেই কিউ মে মেং আ",
      "englishText": "What is your name?",
      "imagePath": "assets/questions/what_is_your_name.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Simple/1/What is your name_.mp3"
    },
    {
      "banglaText": "অ কিউ …।",
      "englishText": "My name is…",
      "imagePath": "assets/answers/my_name_is.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/My name is.mp3"
    },
    {
      "banglaText": "লেই হাই পিন তো ইয়ান",
      "englishText": "Where are you come from?",
      "imagePath": "assets/questions/where_are_you_from.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Simple/1/Where are you come from_.mp3"
    },
    {
      "banglaText": "অ হাই মাংকালাই ইয়ান",
      "englishText": "I came from Bangladesh",
      "imagePath": "assets/answers/i_came_from.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Simple/1/I came from Bangladesh.mp3"
    },
    {
      "banglaText": "লেই কাম লিন  কেই তো সয় আ",
      "englishText": "How old are you?",
      "imagePath": "assets/questions/how_old_are_you.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/How old are you_.mp3"
    },
    {
      "banglaText": "অ কাম লিন … সয়",
      "englishText": "I am … years old",
      "imagePath": "assets/answers/i_am_years_old.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/I am years old..mp3"
    },
    {
      "banglaText": "লেই কিত চ ফান মেই আ",
      "englishText": "Have you get married?",
      "imagePath": "assets/questions/have_you_married.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Simple/1/Have you get married_.mp3"
    },
    {
      "banglaText": "অ কিত চ ফান",
      "englishText": "I am married",
      "imagePath": "assets/answers/married.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/I am married.mp3"
    },
    {
      "banglaText": "অ মেই কিট ফান",
      "englishText": "I am single",
      "imagePath": "assets/answers/single.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/I am single.mp3"
    },
    {
      "banglaText": "লেই চ ফান",
      "englishText": "I am divorced",
      "imagePath": "assets/answers/divorced.jpg",
      "audioPath": "Cantonese_Audio/Sheet_Master/Simple/1/I am divorced.mp3"
    },
    {
      "banglaText": "লেই ইয়াও মৌ  চাই লয় আ",
      "englishText": "How many kids do you have?",
      "imagePath": "assets/questions/how_many_kids.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Simple/1/How many kids do you have_.mp3"
    },
    {
      "banglaText": "অ ইয়াও চাই লয়",
      "englishText": "I have … son … daughter",
      "imagePath": "assets/answers/i_have_kids.jpg",
      "audioPath":
          "Cantonese_Audio/Sheet_Master/Simple/1/I have son daughter.mp3"
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
