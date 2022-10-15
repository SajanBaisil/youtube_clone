import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Gaming extends StatelessWidget {
  Gaming({super.key});

  List gamingmain = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln49LggxefvS8VnUMav6RI9Au0MkkmxKn6IrSDHvd1CimQl2mirohxafporq7keHhggM&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQs-h4SeD0bhptxE6LhXR4WeIok7Ptb3-NHQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyx5GqnsgdDbAH87BMJVMKXwyyoSkZU0t2OA&usqp=CAU'
  ];
  List gamingpro = [
    'https://yt3.ggpht.com/ytc/AMLnZu_dZHdGV32HzBSpO77mFcwtlyLUAP-UNDUjXVRFlA=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/ytc/AMLnZu8UKxF0YqHCwFT1j-kNZn6ClNnn04jYqO-eZHvj=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/GxLm3N1tAlb3YVmSvQDzevUy0C3UingYvhiRKON7ZaxuK6yB7UzZ-jbW8bXb1NAbNyJ8Qayt0w=s68-c-k-c0x00ffffff-no-rj'
  ];
  List time = ['25:46', '16:54', '44:45'];
  List title = [
    'Most kills in one match',
    'Pubg Streamed 20 mins ago',
    'FIFA 23 '
  ];
  List subtitle = [
    'Total Gaming 11k views 1 day ago',
    'TG highlights 2L views 5 months ago ',
    'FIFA 2crore views 3 months ago '
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: ListView(
        children: List.generate(gamingmain.length, (index) {
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
                          image: NetworkImage(gamingmain[index]))),
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
                            backgroundImage: NetworkImage(gamingpro[index]),
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
