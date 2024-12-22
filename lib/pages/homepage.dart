import 'package:flutter/material.dart';
import 'package:home_ai/Providers/main_provider.dart';
import 'package:home_ai/components/custom_btn.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Image(
            image: AssetImage("lib/assets/homeaitxt.png"),
            width: 130,
          ),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ))
          ],
        ),
        backgroundColor: const Color(0xFFFFED00),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomBtn(
                      isOn: value.isWIFIOn,
                      imgPath:
                          "lib\\assets\\wifi.png", //TODO: methenta hari png path ek dipam
                      onTap: value.wifiToggle,
                      WhiteImgPath:
                          "lib/assets/wifi_w.png", // TODO Ara png ekema sudu eka dapm
                    ),
                    CustomBtn(
                      isOn: value.isLightOn,
                      imgPath:
                          "lib\\assets\\wifi.png", //TODO: methenta hari png path ek dipam
                      onTap: value.lightToggle,
                      WhiteImgPath: "lib/assets/wifi_w.png",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomBtn(
                      isOn: value.isAlarmOn,
                      imgPath:
                          "lib\\assets\\wifi.png", //TODO: methenta hari png path ek dipam
                      onTap: value.alarmToggle,
                      WhiteImgPath: "lib/assets/wifi_w.png",
                    ),
                    CustomBtn(
                      isOn: value.isCamOn,
                      imgPath:
                          "lib\\assets\\wifi.png", //TODO: methenta hari png path ek dipam
                      onTap: value.camToggle,
                      WhiteImgPath: "lib/assets/wifi_w.png",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomBtn(
                      isOn: value.isGateOn,
                      imgPath:
                          "lib\\assets\\wifi.png", //TODO: methenta hari png path ek dipam
                      onTap: value.gateToggle,
                      WhiteImgPath: "lib/assets/wifi_w.png",
                    ),
                    CustomBtn(
                      isOn: value.isGarageOn,
                      imgPath:
                          "lib\\assets\\wifi.png", //TODO: methenta hari png path ek dipam
                      onTap: value.garageToggle,
                      WhiteImgPath: "lib/assets/wifi_w.png",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomBtn(
                      isOn: value.isWetherOn,
                      imgPath:
                          "lib\\assets\\wifi.png", //TODO: methenta hari png path ek dipam
                      onTap: value.wetherToggle,
                      WhiteImgPath: "lib/assets/wifi_w.png",
                    ),
                    CustomBtn(
                      isOn: value.isOn,
                      imgPath:
                          "lib\\assets\\wifi.png", //TODO: methenta hari png path ek dipam
                      onTap: value.xToggle, // TODO change this
                      WhiteImgPath: "lib/assets/wifi_w.png",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
