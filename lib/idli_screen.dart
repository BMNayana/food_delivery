import 'package:flutter/material.dart';

class Idliscreen extends StatelessWidget {
  const Idliscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Idli,Vada,Sambar'),
        ),
        body: SingleChildScrollView(
            child: Container(
                //width: 1000,
                //height: 1500,
                //padding: const EdgeInsets.all(10),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Image.network(
                "https://images1.livehindustan.com/uploadimage/library/2021/11/30/16_9/16_9_1/idli_vs_vada_1638261256.jpeg",
                //width: 1000,
                //height: 500,
                //fit: BoxFit.contain,
              ),
              Container(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: const Text(
                  "Ingredients for idli:",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 25,
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Idli is made from ground rice or rice flour mixed with ground urad dal, salt, methi (fenugreek seeds) and water. The mixture is allowed to ferment prior to being steamed in an idli steamer. They are traditional to Southern India and are most often eaten with sambar.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
              Text(
                'gghdvdsdsgdhbdshjsjhhhgdyuagdyadjadhaudhuddhjadhjhudhudhjadjdhdhududaudhdidduhhtdfsddghghgddghdgsdgsdsghdsdgdhgsdhsdghghgjgjhjjggsfdsbdvsgdfstdfsdgshdfshdgshdsdshdgdgfreuwiehsjdbsbcvdfyttdrwuiuhdgshdfterdwbcgsjdtyetwdhsjdshfdsuwieywjhgdshdvshdghsdgshdgswydgshdgshdshvcshcshdgshdgshdgdgshdgshdgshdgshdsdgsjdgshgdhjgshfgshgshgfshfghdgfdfueywiuoweipoquekdhsjhfdgfdvxbvchdgshduiwdsjgfhjfghgxnbfdhgfhdfsfhsjkfgshfgfgsjfgsjfgshfgsjfskdjsjdhyrwiqopjhfswtyiokjgfvcbnmbvcxghjkljgffhjhhhhhyrewuiiplhgsfdvdbddgdgshdhdjdjhtwrqewqywqueiqeqplaksjahdgaadfsgvsbcbdshdhsdhydhdgvsbvsgdfsgfdtdfsdgshdgshdwydfwdud',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Row(mainAxisSize: MainAxisSize.min, children: [
                Icon(Icons.star, color: Colors.green[500]),
                Icon(Icons.star, color: Colors.green[500]),
                Icon(Icons.star, color: Colors.green[500]),
                const Icon(Icons.star, color: Colors.black),
                const Icon(Icons.star, color: Colors.black),
                ratings,
              ]),
              iconList,
            ]))));
  }
}

final ratings = Container(
  padding: const EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const Text(
        '170 Reviews',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
    ],
  ),
);
const descTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 18,
  height: 2,
);

// DefaultTextStyle.merge() allows you to create a default text
// style that is inherited by its child and all subsequent children.
final iconList = DefaultTextStyle.merge(
  style: descTextStyle,
  child: Container(
    padding: const EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.kitchen, color: Colors.green[500]),
            const Text('PREP:'),
            const Text('25 min'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.timer, color: Colors.green[500]),
            const Text('COOK:'),
            const Text('1 hr'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.restaurant, color: Colors.green[500]),
            const Text('FEEDS:'),
            const Text('4-6'),
          ],
        ),
      ],
    ),
  ),
);
