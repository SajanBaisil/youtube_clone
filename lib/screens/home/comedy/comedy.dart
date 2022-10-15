import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Comedy extends StatelessWidget {
  Comedy({super.key});

  List comedymain = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJuJhIGiQDxwdar0BvYfcYHm0cTmsG1xbjDg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFfepX4l2Hjuqmdl3BjIeIKUYdzSHM3CrHfA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFCn_iTfX4a30Z-7X7sbrd05QTlCUEZqYBdQ&usqp=CAU'
  ];
  List comedyprofile = [
    'https://yt3.ggpht.com/ytc/AMLnZu_yogSmFdpvPT7kFpGg-jWVUW65Vfh3mEkTBue2VA=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/ytc/AMLnZu9e-qH1Dc-SinzZVL-3oMCZGcuRXyE_aQ4YvgiEbg=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/kFIm8K_VJqJKFBt8ePn-wVIvG0ZYeIQxw7Ok9eEkYjOSsyebG7wStrOQOcv4GDtbd6Y4zZa9oo0=s68-c-k-c0x00ffffff-no-rj'
  ];
  List maintext = [
    'A girl proposed me',
    'Totally amazing funny new video',
    'Best Comedy Scenes'
  ];
  List subtext = [
    'Hipster Gaming 25k views 2 weeks ago',
    'Busy Fun 10L views 1 year ago',
    'Shemaroo Comedy 10M views 1 year ago'
  ];
  List time = ['9:30', '25:32', '14:22'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: ListView(
        children: List.generate(comedymain.length, (index) {
          return SizedBox(
            width: double.infinity,
            height: 300,
            child: Column(
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(comedymain[index]))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 20,
                        width: 50,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            time[index],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(comedyprofile[index]),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              maintext[index],
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              subtext[index],
                              style: const TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
