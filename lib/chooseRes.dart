import 'package:phone_otp_ui/MaggiList.dart';
import 'package:phone_otp_ui/constants.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'phone.dart';

class ChooseRes extends StatefulWidget {
  const ChooseRes({Key? key}) : super(key: key);

  @override
  State<ChooseRes> createState() => _ChooseResState();
}

class _ChooseResState extends State<ChooseRes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcf2c4e),
        shadowColor: Color(0xffffda2a),
        actions: [
          IconButton(
            color: Colors.white,
            highlightColor: Colors.black54,
            iconSize: 30,
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => MyPhone(title: 'Phone')));
              box1.clear();
            },
          ),
        ],
        leading: const Icon(
          Icons.person,
          size: 35,
        ),
        scrolledUnderElevation: 20,
        title: const Text(
          'Amigo',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          textAlign: TextAlign.end,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MaggiList()));
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const ReusableCompanyWidget(
                    image:
                        'https://logos-download.com/wp-content/uploads/2016/04/Maggi_logo_logotype-700x414.png',
                    title: 'Maggi Hotspot',
                    color: Colors.yellowAccent,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.9,
                child: const ReusableCompanyWidget(
                  image:
                      'https://th.bing.com/th/id/R.e723659c49d6808055a809b249524b87?rik=mSkfBh5EYX5p8Q&riu=http%3a%2f%2fsensabyte.in%2fwp-content%2fuploads%2f2020%2f06%2fbennet.jpg&ehk=RUmAesJKvVaePl3S%2fjHfi2kAibAyq7zRz419V7u3pLU%3d&risl=&pid=ImgRaw&r=0',
                  title: 'Kathi Junction',
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.9,
                child: const ReusableCompanyWidget(
                  image:
                      'https://th.bing.com/th/id/R.e723659c49d6808055a809b249524b87?rik=mSkfBh5EYX5p8Q&riu=http%3a%2f%2fsensabyte.in%2fwp-content%2fuploads%2f2020%2f06%2fbennet.jpg&ehk=RUmAesJKvVaePl3S%2fjHfi2kAibAyq7zRz419V7u3pLU%3d&risl=&pid=ImgRaw&r=0',
                  title: 'Chai OK Please',
                  color: Colors.lightBlueAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.9,
                child: const ReusableCompanyWidget(
                  image:
                      'https://th.bing.com/th/id/R.e723659c49d6808055a809b249524b87?rik=mSkfBh5EYX5p8Q&riu=http%3a%2f%2fsensabyte.in%2fwp-content%2fuploads%2f2020%2f06%2fbennet.jpg&ehk=RUmAesJKvVaePl3S%2fjHfi2kAibAyq7zRz419V7u3pLU%3d&risl=&pid=ImgRaw&r=0',
                  title: 'Quench',
                  color: Colors.greenAccent,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.9,
                child: const ReusableCompanyWidget(
                  image:
                      'https://th.bing.com/th/id/R.e723659c49d6808055a809b249524b87?rik=mSkfBh5EYX5p8Q&riu=http%3a%2f%2fsensabyte.in%2fwp-content%2fuploads%2f2020%2f06%2fbennet.jpg&ehk=RUmAesJKvVaePl3S%2fjHfi2kAibAyq7zRz419V7u3pLU%3d&risl=&pid=ImgRaw&r=0',
                  title: 'M block Res',
                  color: Colors.orangeAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.9,
                child: const ReusableCompanyWidget(
                  image:
                      'https://th.bing.com/th/id/R.e723659c49d6808055a809b249524b87?rik=mSkfBh5EYX5p8Q&riu=http%3a%2f%2fsensabyte.in%2fwp-content%2fuploads%2f2020%2f06%2fbennet.jpg&ehk=RUmAesJKvVaePl3S%2fjHfi2kAibAyq7zRz419V7u3pLU%3d&risl=&pid=ImgRaw&r=0',
                  title: 'South Indian',
                  color: Colors.white60,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableCompanyWidget extends StatelessWidget {
  const ReusableCompanyWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.color,
  }) : super(key: key);
  final String image;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),
      elevation: 20,
      shadowColor: color,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 100,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(image), //NetworkImage
                  radius: 55,
                ), //CircleAvatar
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
