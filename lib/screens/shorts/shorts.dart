import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Shorts extends StatelessWidget {
  Shorts({super.key});

  List backgroundimage = [
    'https://i.pinimg.com/236x/d7/ca/45/d7ca452ceefce33b027b917e0685e3fe.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_yvAptkaBqhuDdIHOUNvp_jdcZKkqIwhnV3JKDNJ9_ZWPmS9ylI3QgAZrg4A6fwIwd0I&usqp=CAU',
    'https://i.pinimg.com/236x/fb/ad/c8/fbadc81aa9cd1b7000edb71e4efe50b0.jpg'
  ];
  List profile = [
    'https://yt3.ggpht.com/Ybu5mW939QWZsOAxzsf1sOqHIFKf8QwY00Rt50hBLxJBjP5INAeD2zSnUMHn1uE6vf_rGwf2Wg=s48-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/fSJW9y7epIA9BDfQhtdzmY7TFkZeO673oo-cLXvEc6GqEfb7mUMjYN3jFhyHKDc-JMgEPOzc=s176-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/a9pxvk2cuKHM3ZnsXKwcn1PEzxJBiLlZWE_O4uPAeUvnQF4Ojw8UtD3H_fYJk6ybkI7pwr8P=s48-c-k-c0x00ffffff-no-rj'
  ];
  List heading = [
    'Poco phone unboxing',
    'Trailer reaction',
    'New Gen Finger print scanner'
  ];
  List subhead = ['M4 Tech', 'Call me Shazam', 'Mr Perfect Tech'];
  List like = ['23L', '12L', '3L'];
  List chat = ['20k', '15k', '4k'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(backgroundimage.length, (index) {
        return Container(
          height: 690,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(backgroundimage[index]))),
          child: Stack(
            children: [
              Positioned(
                left: 340,
                top: 380,
                child: Column(
                  children: [
                    const Icon(
                      Icons.thumb_up_alt_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      like[index],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Icon(
                      Icons.thumb_down_alt_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    const Text(
                      'Dislike',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Icon(
                      Icons.chat,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      chat[index],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 30,
                    ),
                    const Text(
                      'share',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            heading[index],
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white),
                          ),
                          const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(profile[index]),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                subhead[index],
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.red),
                                child: const Center(
                                  child: Text(
                                    'Subscribe',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                          // const SizedBox(
                          //   width: 150,
                          // ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(profile[index])),
                                borderRadius: BorderRadius.circular(5)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }),
    ));
  }
}
