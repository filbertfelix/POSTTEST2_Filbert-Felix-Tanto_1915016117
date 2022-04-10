import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text(
          "Posttest 2 - Filbert Felix Tanto",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(0, 0, 0, 128),
                  Color.fromARGB(0, 0, 0, 255),
                  Colors.black
                ]),
            border: Border.all(
              width: 5,
              color: Color.fromARGB(255, 3, 3, 100),
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 167, 229, 245),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(top: 30, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Doctor Strange.jpg"),
                  ),
                ),
              ),
              Text(
                "Doctor Strange in the Multiverse of Madness",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 3, 3, 100),
                ),
              ),
              Text(
                "Genre      : Action, Adventure, Fantasy \nDuration : 126 Minutes \nRating     : R (13+)",
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizeContainer(size: "11:30"),
                  SizeContainer(size: "14:00"),
                  SizeContainer(size: "16:30"),
                  SizeContainer(isActive: true, size: "19:00"),
                  SizeContainer(size: "20:30"),
                ],
              ),
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(top: 35, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Sonic.jpg"),
                  ),
                ),
              ),
              Text(
                "Sonic the Hedgehog 2",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 3, 3, 100),
                ),
              ),
              Text(
                "Genre      : Action, Adventure, Comedy \nDuration : 122 Minutes \nRating     : SU (Semua Umur)",
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizeContainer(size: "11:00"),
                  SizeContainer(size: "13:30"),
                  SizeContainer(size: "16:00"),
                  SizeContainer(size: "18:30"),
                  SizeContainer(size: "21:00"),
                ],
              ),
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(top: 35, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/KKN di Desa Penari.jpg"),
                  ),
                ),
              ),
              Text(
                "KKN di Desa Penari",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 3, 3, 100),
                ),
              ),
              Text(
                "Genre      : Horror \nDuration : 124 Minutes \nRating     : D (17+)",
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizeContainer(size: "12:00"),
                  SizeContainer(size: "14:30"),
                  SizeContainer(size: "17:00"),
                  SizeContainer(size: "19:30"),
                  SizeContainer(size: "22:00"),
                ],
              ),
              Button()
            ],
          ),
        ],
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? Color.fromARGB(255, 3, 3, 100) : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: Color.fromARGB(255, 3, 3, 100),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Color.fromARGB(255, 3, 3, 100),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 50,
      margin: EdgeInsets.only(top: 40, bottom: 40),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 3, 3, 100),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Buy Ticket",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
