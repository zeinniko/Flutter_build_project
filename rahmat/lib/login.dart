import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin:
              EdgeInsets.only(left: 10.0, right: 10.0, top: 50.0, bottom: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300.0,
                width: 130.0,
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('../icon.png'),
                      radius: 42.0,
                      backgroundColor: Colors.amber,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'A description of the application you are create, briefly and clearly',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                height: 300.0,
                width: 220.0,
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('../bg_color_1.jpg'),
                  fit: BoxFit.cover,
                )),
                child: Column(
                  children: [
                    Text(
                      'LOG IN',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Input E-Mail',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Input Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 8.0, top: 2.0),
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text('forget password!'),
                      ),
                    ),
                    MaterialButton(
                      color: Color.fromARGB(255, 101, 55, 242),
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
