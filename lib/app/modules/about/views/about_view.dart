import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:tayartaw_tech4mm/app/modules/website/views/website_view.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  AboutView({super.key});

  @override
  AboutController controller = Get.put(AboutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ပရိတ်ကြီး ၁၁ သုတ်',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: ThemeData.light().primaryColor,
        centerTitle: true,
        actions: const [
          Text(
            "v 1.0",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              GFImageOverlay(
                width: 200,
                height: 200,
                borderRadius: BorderRadius.circular(100),
                image: const AssetImage('assets/logo.jpeg'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "ပရိတ်ကြီး ၁၁ သုတ် တရားတော်များ",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("version 1.0"),
              const SizedBox(
                height: 30,
              ),
              GFButton(
                onPressed: () async {
                  bool isConnected =
                      await controller.checkInternetConnectivity();
                  if (!isConnected) {
                    GFToast.showToast("အင်တာနက် လိုအပ်ပါသည်။", context);
                  } else {
                    GFToast.showToast("Checking update...", context);
                    Get.to(
                      const WebsiteView(),
                    );
                  }
                },
                text: "Check For Update",
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                color: ThemeData.light().primaryColor,
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                height: 2,
                thickness: 0.5,
                indent: 30,
                endIndent: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GFImageOverlay(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    image: AssetImage('assets/tech4mm.jpeg'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Tech4MM Co., Ltd.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text("မှ ကုသိုယ်ပြု လှူဒါန်းပါသည်။"),
                    ],
                  ),
                ],
              ),

              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text(
                      "Address:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                  children: [
                    Expanded(
                      child: Text(
                        "No. 231 (2nd Floor), AungTagon St, 5 Qr, Dawbon Twp, Yangon, Myanmar",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),

              //Contact
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text(
                      "Contact:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Phone: ",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "+959 777 56 22 56",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Website: ",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "https://tech4mm.com/",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Email: ",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "infos@tech4mm.com",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Facebook: ",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "https://www.facebook.com/tech4mm.co.ltd",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
