import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:tayartaw_tech4mm/app/data/chapter_model.dart';
import '../controllers/details_page_controller.dart';

class DetailsPageView extends GetView<DetailsPageController> {
  DetailsPageView({Key? key}) : super(key: key);

  AudioPlayer audioPlayer = AudioPlayer();
  DetailsPageController controller = Get.put(DetailsPageController());

  @override
  Widget build(BuildContext context) {
    final ChapterModel? chapter = Get.arguments as ChapterModel?;
    return WillPopScope(
      onWillPop: () async {
        audioPlayer.stop();
        controller.toggleAudio();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            chapter!.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: ThemeData.light().primaryColor,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  chapter.sub_title,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  height: 10.0,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  chapter.content,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: (chapter.url == '_')
            ? null
            : Obx(
                () => FloatingActionButton(
                  onPressed: () async {
                    bool isConnected =
                        await controller.checkInternetConnectivity();
                    if (!isConnected) {
                      GFToast.showToast(
                          "တရားဖွင့် အင်တာနက် ဖွင်းထားပေးရန် လိုပါသည်။",
                          context);
                    } else {
                      if (controller.isPlaying.value) {
                        audioPlayer.stop();
                      } else {
                        audioPlayer.play(UrlSource(chapter.url));
                      }
                      controller.toggleAudio();
                    }
                  },
                  child: Icon(controller.isPlaying.value
                      ? Icons.stop
                      : Icons.play_arrow),
                ),
              ),
      ),
    );
  }
}
