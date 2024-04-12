import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:tayartaw_tech4mm/app/modules/about/views/about_view.dart';
import 'package:tayartaw_tech4mm/app/modules/details_page/views/details_page_view.dart';
import 'package:tayartaw_tech4mm/app/modules/privacy_policy/views/privacy_policy_view.dart';
import 'package:tayartaw_tech4mm/app/modules/reate_app/views/reate_app_view.dart';
import 'package:tayartaw_tech4mm/app/modules/share/views/share_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'ပရိတ်ကြီး ၁၁ သုတ်',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(AboutView());
            },
            icon: const Icon(
              Icons.info,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: ThemeData.light().primaryColor,
      ),
      drawer: GFDrawer(
        color: Colors.grey[200],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const GFDrawerHeader(
              centerAlign: true,
              currentAccountPicture: GFAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('assets/buddha_profile.jpeg'),

                //NetworkImage(
                //"https://drive.google.com/uc?export=download&id=10_YDLrJtLO4vBm4t_w2rs804OjqGIxA3"),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'ပရိတ်ကြီး ၁၁ သုတ်',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '🙏 Developed by Tech4MM Co., Ltd. 🙏',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                GFToast.showToast(
                  "Under Development!...",
                  context,
                );
              },
            ),
            const Divider(),
            const Text("Others"),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Privacy Policy'),
              onTap: () {
                GFToast.showToast(
                    "Opening Privacy Policy... Please wait!", context);
                Get.to(const PrivacyPolicyView());
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share'),
              onTap: () {
                GFToast.showToast("Opening Share... Please wait!", context);
                Get.to(const ShareView());
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Rate App'),
              onTap: () {
                GFToast.showToast("Opening Rate App... Please wait!", context);
                Get.to(const ReateAppView());
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Exit'),
              onTap: () {
                Get.dialog(
                  AlertDialog(
                    title: const Text("Confirm Exit"),
                    content: const Text("Are you sure want to exit?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.back();
                          SystemNavigator.pop();
                        },
                        child: const Text("OK"),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return ListView.builder(
              itemCount: controller.chapters.length,
              itemBuilder: (context, index) {
                final chapter = controller.chapters[index];
                return GFListTile(
                  onTap: () {
                    Get.to(
                      DetailsPageView(),
                      arguments: chapter,
                    );
                  },
                  avatar: const GFAvatar(
                    size: GFSize.LARGE,
                    backgroundImage: AssetImage('assets/buddha.jpeg'),
                  ),
                  title: Text(
                    chapter.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  subTitle: Text(
                    chapter.sub_title,
                    style: TextStyle(color: Colors.grey[300], fontSize: 12),
                  ),
                  color: GFColors.ALT,
                  margin: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 20.0),
                  padding: const EdgeInsets.all(20.0),
                );
              });
        },
      ),
    );
  }
}
