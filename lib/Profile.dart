import 'package:flutter/material.dart';
import 'package:flutter_application_1/profille.dart/edit.dart';


class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        
        title: Column(
          
          children: [
            SizedBox(width: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(onTap: (){},
                  child: Container(
                    child: Row(
                      children: [
                      SizedBox(width: 5,),
                        Icon(Icons.lock_outlined),
                        Text("@Javlon_16"),

                      IconButton(onPressed: (){}, icon:Icon(Icons.keyboard_arrow_down_outlined))
                      ],
                    ),
                  ),
                ),
                Container(
                  child: const Row(
                    children: [
                      Icon(Icons.add_alert,size: 25,),
                      SizedBox(width: 30,),
                      Icon(Icons.menu,size: 25),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  
                  backgroundImage: AssetImage('assets/images/flutter.jpeg'),
                  radius: 45,
                ),
                InkWell(onTap: () {},
                  child: Column(
                    children: [
                             Text('50,тыс',style: TextStyle(fontSize:18,color: Colors.black ),),
                      Text(
                        'Публикации',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                InkWell(onTap: (){},
                  child: Column(
                    children: [
                      Text(
                        '39,5 млн',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        'Подписчики',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                InkWell(onTap: (){},
                  child: Column(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        'Подписки',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Text(
                "Djamaldinov",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfile(),
                        ));
                  },
                  child: const Text("Изменить"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Поделиться профилем"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.person_add_outlined),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            // ListView(
            //   scrollDirection: Axis.vertical,
            //   shrinkWrap: true,
            //   children: [
            //     const Padding(
            //       padding: EdgeInsets.all(10.0),
            //       child: SingleChildScrollView(
            //         scrollDirection: Axis.horizontal,
            //         child: Row(
            //           children: [
            //             Padding(
            //               padding: EdgeInsets.all(8.0),
            //               child: Column(
            //                 children: [
            //                   CircleAvatar(
            //                     backgroundColor: Colors.amberAccent,
            //                     radius: 30,
            //                   ),
            //                   Text(
            //                     "у Насти...",
            //                     style: TextStyle(
            //                         fontSize: 18, color: Colors.black),
            //                   )
            //                 ],
            //               ),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.all(8.0),
            //               child: Column(
            //                 children: [
            //                   CircleAvatar(
            //                     backgroundColor: Colors.amberAccent,
            //                     radius: 30,
            //                   ),
            //                   Text(
            //                     "Привет...",
            //                     style: TextStyle(
            //                         fontSize: 18, color: Colors.black),
            //                   )
            //                 ],
            //               ),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.all(8.0),
            //               child: Column(
            //                 children: [
            //                   CircleAvatar(
            //                     backgroundColor: Colors.amberAccent,
            //                     radius: 30,
            //                   ),
            //                   Text(
            //                     "Сегодня мы...",
            //                     style: TextStyle(
            //                         fontSize: 18, color: Colors.black),
            //                   )
            //                 ],
            //               ),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.all(8.0),
            //               child: Column(
            //                 children: [
            //                   CircleAvatar(
            //                     backgroundColor: Colors.amberAccent,
            //                     radius: 30,
            //                   ),
            //                   Text(
            //                     "Halloween...",
            //                     style: TextStyle(
            //                         fontSize: 18, color: Colors.black),
            //                   )
            //                 ],
            //               ),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.all(8.0),
            //               child: Column(
            //                 children: [
            //                   CircleAvatar(
            //                     backgroundColor: Colors.amberAccent,
            //                     radius: 30,
            //                   ),
            //                   Text(
            //                     "футбол...",
            //                     style: TextStyle(
            //                         fontSize: 18, color: Colors.black),
            //                   )
            //                 ],
            //               ),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.all(8.0),
            //               child: Column(
            //                 children: [
            //                   CircleAvatar(
            //                     backgroundColor: Colors.amberAccent,
            //                     radius: 30,
            //                   ),
            //                   Text(
            //                     "Деревня...",
            //                     style: TextStyle(
            //                         fontSize: 18, color: Colors.black),
            //                   )
            //                 ],
            //               ),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.all(8.0),
            //               child: Column(
            //                 children: [
            //                   CircleAvatar(
            //                     backgroundColor: Colors.amberAccent,
            //                     radius: 30,
            //                   ),
            //                   Text(
            //                     "Отличная игра...",
            //                     style: TextStyle(
            //                         fontSize: 18, color: Colors.black),
            //                   )
            //                 ],
            //               ),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.all(8.0),
            //               child: Column(
            //                 children: [
            //                   CircleAvatar(
            //                     backgroundColor: Colors.amberAccent,
            //                     radius: 30,
            //                   ),
            //                   Text(
            //                     "Wikend...",
            //                     style: TextStyle(
            //                         fontSize: 18, color: Colors.black),
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.grid_on_sharp,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person_pin_outlined,
                      color: Colors.black,
                    ))
                // Icon(

                //   size: 30,
                // // ),
                // Icon(

                //   // size: 30,
                //   //   style: TextStyle(
                //   //       fontSize: 18,color: Colors.white
                //   //     ),
                // ),
              ],
            ),
            GridView.count(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(10),
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              crossAxisCount: 3,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: const Text(
                    "He'd have you all unravel at the",
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: const Text('Heed not the rabble'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[300],
                  child: const Text('Sound of screams but the'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[400],
                  child: const Text('Who scream'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[500],
                  child: const Text('Revolution is coming...'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: const Text('Revolution, they...'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: const Text('Heed not the rabble'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: const Text('Heed not the rabble'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: const Text('Heed not the rabble'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: const Text('Heed not the rabble'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: const Text('Heed not the rabble'),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
