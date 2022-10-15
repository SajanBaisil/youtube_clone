import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Library extends StatelessWidget {
  Library({super.key});

  List history = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdBHQp16j2g1_DcJ2VWtWl5qd59wDaMA6AmQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQCAqf7-ZoaB8rirQzrtY4evlsaF1OXKc_GA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG7HhH4bwt5uXf6J8Jbb1rNKyS4VvP1WkvJA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJuJhIGiQDxwdar0BvYfcYHm0cTmsG1xbjDg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFfepX4l2Hjuqmdl3BjIeIKUYdzSHM3CrHfA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFCn_iTfX4a30Z-7X7sbrd05QTlCUEZqYBdQ&usqp=CAU'
  ];

  List title = [
    'High Voltage Thriller',
    'Top shots      ',
    'IND VS NEW ZEALAND',
    'A girl proposed me  ',
    'Totally amazing funny',
    'Best Comedy Scenes'
  ];

  List subtitle = [
    'Cric Star ',
    'Ag flex ',
    'Sony Liv ',
    'Hipster Gaming ',
    'Busy Fun ',
    'Shemaroo Comedy '
  ];
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.black,
              toolbarHeight: 40,
              leading: Image.network(
                  'https://i.pinimg.com/236x/40/c5/2a/40c52a0e6eae6e1034ebc03e6cf79299.jpg'),
              title: const Text(
                'YouTube',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              actions: [
                const Icon(Icons.cast),
                const SizedBox(
                  width: 10,
                ),
                const Icon(Icons.notifications),
                const SizedBox(
                  width: 10,
                ),
                const Icon(Icons.search),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      color: Colors.blue, shape: BoxShape.circle),
                  child: const Center(
                    child: Text('S'),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            )
          ];
        },
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.history,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'History',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'VIEW ALL',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
              SizedBox(
                height: 130,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(history.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(history[index]))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, left: 90),
                                    child: Container(
                                      height: 16,
                                      width: 40,
                                      color: Colors.black,
                                      child: const Center(
                                        child: Text(
                                          '5:53',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 3,
                                    width: 150,
                                    color: Colors.red,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      title[index],
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      subtitle[index],
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                                const Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    })),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 3,
                width: double.infinity,
                color: Colors.grey.withOpacity(0.4),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.video_library,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Your videos',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.download,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Downloads',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '20 videos',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: const Icon(
                      Icons.done,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.movie,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Your movies',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 3,
                width: double.infinity,
                color: Colors.grey.withOpacity(0.4),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Playlists',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'VIEW ALL',
                            style: TextStyle(color: Colors.blue),
                          )),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'New playlist',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.watch_later_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Watch Later',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '9 unwatched videos',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Liked videos',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '99 videos',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
