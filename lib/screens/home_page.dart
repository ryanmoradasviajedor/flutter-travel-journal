import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:Travelpud/screens/chewie_list_item.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: 'assets/images/tch.jpg',
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: AssetImage('assets/images/tch.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.white,
                      onPressed: () => Navigator.pop(context),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.share),
                          iconSize: 30.0,
                          color: Colors.white,
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    buildCards(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildCards() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Road trip to Sipalay',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'GoogleSans',
              ),
            ),
            OutlineButton(
              onPressed: () {
                print('Follow');
              },
              child: Text(
                'Follow',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              borderSide: BorderSide(color: Colors.blue),
              splashColor: Colors.blue,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
                image: AssetImage('assets/images/map.png'), fit: BoxFit.cover),
          ),
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Divider(
          color: Colors.black45,
        ),
      ),
      ListTile(
        leading: CircleAvatar(
          radius: 25.0,
          backgroundImage: AssetImage('assets/images/user.png'),
          backgroundColor: Colors.transparent,
        ),
        title: Text(
          'Ryan Viajedor',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'GoogleSans',
          ),
        ),
        subtitle: Text(
          '3 hrs ago',
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black54,
            fontFamily: 'GoogleSans',
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.more_vert),
          iconSize: 30.0,
          onPressed: () => () {},
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
                image: AssetImage('assets/images/santorini.jpg'),
                fit: BoxFit.cover),
          ),
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.pin_drop,
              color: Colors.black54,
            ),
            Text(
              'Naga City, Philippines',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Breathtaking View',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.favorite_border,
              color: Colors.black54,
            ),
            SizedBox(width: 10.0),
            Text(
              '5 Likes',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
            SizedBox(width: 30.0),
            Icon(
              Icons.message,
              color: Colors.black54,
            ),
            SizedBox(width: 10.0),
            Text(
              '3 comments',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Divider(
          color: Colors.black45,
        ),
      ),
      ListTile(
        leading: CircleAvatar(
          radius: 25.0,
          backgroundImage: AssetImage('assets/images/user.png'),
          backgroundColor: Colors.transparent,
        ),
        title: Text(
          'Ryan Viajedor',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'GoogleSans',
          ),
        ),
        subtitle: Text(
          '3 hrs ago',
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black54,
            fontFamily: 'GoogleSans',
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.more_vert),
          iconSize: 30.0,
          onPressed: () => () {},
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ChewieListItem(
          videoPlayerController: VideoPlayerController.asset(
            'assets/videos/carnaza.mp4',
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.pin_drop,
              color: Colors.black54,
            ),
            Text(
              'Daanbantayan, Cebu City, Philippines',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'A Place to Visit',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.favorite_border,
              color: Colors.black54,
            ),
            SizedBox(width: 10.0),
            Text(
              '5 Likes',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
            SizedBox(width: 30.0),
            Icon(
              Icons.message,
              color: Colors.black54,
            ),
            SizedBox(width: 10.0),
            Text(
              '3 comments',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Divider(
          color: Colors.black45,
        ),
      ),
      ListTile(
        leading: CircleAvatar(
          radius: 25.0,
          backgroundImage: AssetImage('assets/images/user.png'),
          backgroundColor: Colors.transparent,
        ),
        title: Text(
          'Ryan Viajedor',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'GoogleSans',
          ),
        ),
        subtitle: Text(
          '3 hrs ago',
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black54,
            fontFamily: 'GoogleSans',
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.more_vert),
          iconSize: 30.0,
          onPressed: () => () {},
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
                image: AssetImage('assets/images/hotel0.jpg'),
                fit: BoxFit.cover),
          ),
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.pin_drop,
              color: Colors.black54,
            ),
            Text(
              'Bogo City, Philippines',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'A Place to Relax',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.favorite_border,
              color: Colors.black54,
            ),
            SizedBox(width: 10.0),
            Text(
              '5 Likes',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
            SizedBox(width: 30.0),
            Icon(
              Icons.message,
              color: Colors.black54,
            ),
            SizedBox(width: 10.0),
            Text(
              '3 comments',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Divider(
          color: Colors.black45,
        ),
      ),
      ListTile(
        leading: CircleAvatar(
          radius: 25.0,
          backgroundImage: AssetImage('assets/images/user.png'),
          backgroundColor: Colors.transparent,
        ),
        title: Text(
          'Ryan Viajedor',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'GoogleSans',
          ),
        ),
        subtitle: Text(
          '3 hrs ago',
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black54,
            fontFamily: 'GoogleSans',
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.more_vert),
          iconSize: 30.0,
          onPressed: () => () {},
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
                image: AssetImage('assets/images/hotel1.jpg'),
                fit: BoxFit.cover),
          ),
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.pin_drop,
              color: Colors.black54,
            ),
            Text(
              'Daanbantayan, Cebu City, Philippines',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'A Place to Enjoy',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.favorite_border,
              color: Colors.black54,
            ),
            SizedBox(width: 10.0),
            Text(
              '5 Likes',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
            SizedBox(width: 30.0),
            Icon(
              Icons.message,
              color: Colors.black54,
            ),
            SizedBox(width: 10.0),
            Text(
              '3 comments',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 50.0,
      ),
    ],
  );
}
