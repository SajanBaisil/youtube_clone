import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_clone/screens/home/comedy/comedy.dart';

class OnTapScreen extends StatelessWidget {
  final String image;
  final String content;
  final String views;
  final String released;
  final String profile;
  final String profilename;
  final String subscribers;
  const OnTapScreen(
      {super.key,
      required this.image,
      required this.content,
      required this.views,
      required this.released,
      required this.profile,
      required this.profilename,
      required this.subscribers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(image))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                      Row(
                        children: [
                          Switch(
                              activeColor: Colors.white,
                              value: true,
                              onChanged: (value) {}),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(Icons.cast, color: Colors.white),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(Icons.subtitles, color: Colors.white),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(Icons.settings_outlined,
                              color: Colors.white),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(Icons.close, color: Colors.white),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.3)),
                          child: Icon(
                            Icons.skip_previous,
                            size: 28,
                            color: Colors.white.withOpacity(0.4),
                          )),
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.3)),
                          child: const Icon(
                            Icons.replay_10_outlined,
                            size: 28,
                            color: Colors.white,
                          )),
                      Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.3)),
                          child: const Icon(
                            Icons.play_arrow,
                            size: 28,
                            color: Colors.white,
                          )),
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.3)),
                          child: const Icon(
                            Icons.forward_10_outlined,
                            size: 28,
                            color: Colors.white,
                          )),
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.3)),
                          child: const Icon(
                            Icons.skip_next,
                            size: 28,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '0:00/3:12',
                        style: TextStyle(color: Colors.grey.withOpacity(0.9)),
                      ),
                      const Icon(
                        Icons.fullscreen,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                content,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                views,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                released,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                '#isllatest',
                style: TextStyle(color: Colors.blue, fontSize: 12),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                '#indiansuperleague',
                style: TextStyle(color: Colors.blue, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '445',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.thumb_down_alt_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Dislike',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.theaters_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Create',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.download,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Download',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.library_add_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 2,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.4),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(profile),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        profilename,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        subscribers,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: const [
                  Text(
                    'Subscribed',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 2,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.4),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Comments 44',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Icon(
                Icons.unfold_more_outlined,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.brown,
                child: Center(
                  child: Text(
                    'A',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'good contributions',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 2,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.4),
          ),
          const SizedBox(
            height: 5,
          ),
          Comedy()
        ],
      ),
    );
  }
}
