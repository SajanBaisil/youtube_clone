import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Football extends StatelessWidget {
  Football({super.key});

  List footballmain = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgeb_h2iR0P2iLB0_oBQDVPB9XctkaXu8ScA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiOT3SQEb_rVV5L-o1AlhWTzJnxExPoR3bMQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg5ZVmmVQVmMQCH6h5eY0MqQoRA5VsXYBvPA&usqp=CAU'
  ];
  List footballprofile = [
    'https://yt3.ggpht.com/ytc/AMLnZu-fMLAt2Nz5soZMWLy7vVcjZi7UujPb-sSTIt9JUg=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/OQoQH4eJy3XMXqW0GUfCuriPeuL7-ZRUGo8XJifM6jyarXEtOHUba_MeH6xyy_UZJHd701dEsA=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/ytc/AMLnZu8ZMYBzPD4Zn2qFNXkTALi4ffwm6D8O33QJYplUog=s68-c-k-c0x00ffffff-no-rj'
  ];
  List time = ['10:21', '8:15', '13:53'];
  List title = [
    'Top 3 Easy Skills',
    'Liv vs RM final',
    'Top 10 Classic football matches'
  ];
  List subtitle = [
    'Sim Mot 11k views 2 hours ago',
    'Foot4k 12L views 3 days ago',
    'Sports HD 29k views 30mins ago'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: ListView(
        children: List.generate(footballmain.length, (index) {
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
                          image: NetworkImage(footballmain[index]))),
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
                            backgroundImage:
                                NetworkImage(footballprofile[index]),
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
                              title[index],
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              subtitle[index],
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
