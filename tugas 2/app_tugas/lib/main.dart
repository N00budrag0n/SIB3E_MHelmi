import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 0, 0, 0),
          padding: EdgeInsets.all(10),
          child: ListView( //semuanya
            children: <Widget>[
              // Container(
              //   width: double.infinity,
              //   margin: EdgeInsets.only(top: 10, bottom: 10),
              //   decoration: BoxDecoration(border: Border.all(color: Colors.white)),
              //   height: 20,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Container(
              //         child: Text("asu1"),
              //       ),
              //       VerticalDivider(width: 10.0, color: Colors.white,),
              //       Container(
              //         child: Text("asu2"),
              //       )
              //     ],
              //   ),
              // ),
              Container( //atasan header abal abal
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color.fromARGB(255, 57, 57, 57)))), //top 
                width: double.infinity,
                height: 50,
                padding: EdgeInsets.all(2),
                child: Stack(
                  children: <Widget>[
                    Row( //logo
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Image(image: AssetImage('assets/logo.png')),
                        )
                      ],
                    ),
                    Container(//foto profil
                      child: CircleAvatar(
                            radius: 18.0,
                            backgroundImage: AssetImage("assets/profil1.png"),
                          ),
                    ),
                  ],
                ),
              ),
              Container( //for you dan following
                height: 40,
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color.fromARGB(255, 57, 57, 57)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.blue, width: 3))),
                      // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                      height: 40,
                      child: Center(
                        child: Text("For you", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Container(
                      child: Text("Following", style: TextStyle(color: Colors.white.withOpacity(0.7)),),
                    ),
                  ],
                ),
              ),
              Container( //content
              child: Column( //membuat column konten
                children: <Widget>[
                  Container( //konten 1
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    height: 135,
                    // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(//logo akun
                            padding: EdgeInsets.all(5),
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: CircleAvatar(
                              radius: 16.0,
                              backgroundImage: AssetImage("assets/profil1.png"),
                            ),
                          ),
                        ),
                        Positioned( //nama akun
                          top: 0,
                          left: 50,
                          child: Container(
                            height: 20,
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Row(
                              children: <Widget>[
                                Container( //nama biasa
                                  child: Text("Hadi", style: TextStyle(color: Colors.white),),
                                ),
                                Container( //username
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("@hadiganteng", style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 13),),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned( //tweetnya
                          top: 25,
                          left: 50,
                          child: Container(
                            height: 80,
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Text("Halo semuanya, kenalin aku hadi. Aku baru gabung nih, temenan sama aku yuk. Saling follow ya, nanti aku langsung follback kok, tenang aja. Oh ya, aku terbuka di DM sama kalo ngebales tweet ini juga boleh. See u yaaaa", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        Positioned( //tombol like retweet komen
                          bottom: 0,
                          left: 50,
                          child: Container(
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.comment, color: Colors.white.withOpacity(0.8), size: 20,),
                                ImageIcon(AssetImage("assets/retweet.png"), size: 20, color: Colors.white.withOpacity(0.8),),
                                Icon(Icons.favorite_outline, color: Colors.white.withOpacity(0.8), size: 20,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(color: Color.fromARGB(255, 57, 57, 57)),
                  Container( //konten 2
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 135,
                    // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(//logo akun
                            padding: EdgeInsets.all(5),
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: CircleAvatar(
                              radius: 16.0,
                              backgroundImage: AssetImage("assets/profil1.png"),
                            ),
                          ),
                        ),
                        Positioned( //nama akun
                          top: 0,
                          left: 50,
                          child: Container(
                            height: 20,
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Row(
                              children: <Widget>[
                                Container( //nama biasa
                                  child: Text("Hadi", style: TextStyle(color: Colors.white),),
                                ),
                                Container( //username
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("@hadiganteng", style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 13),),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned( //tweetnya
                          top: 25,
                          left: 50,
                          child: Container(
                            height: 80,
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Text("Halo semuanya, kenalin aku hadi. Aku baru gabung nih, temenan sama aku yuk. Saling follow ya, nanti aku langsung follback kok, tenang aja. Oh ya, aku terbuka di DM sama kalo ngebales tweet ini juga boleh. See u yaaaa", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        Positioned( //tombol like retweet komen
                          bottom: 0,
                          left: 50,
                          child: Container(
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.comment, color: Colors.white.withOpacity(0.8), size: 20,),
                                ImageIcon(AssetImage("assets/retweet.png"), size: 20, color: Colors.white.withOpacity(0.8),),
                                Icon(Icons.favorite_outline, color: Colors.white.withOpacity(0.8), size: 20,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(color: Color.fromARGB(255, 57, 57, 57)),
                  Container( //konten 3
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 135,
                    // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(//logo akun
                            padding: EdgeInsets.all(5),
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: CircleAvatar(
                              radius: 16.0,
                              backgroundImage: AssetImage("assets/profil1.png"),
                            ),
                          ),
                        ),
                        Positioned( //nama akun
                          top: 0,
                          left: 50,
                          child: Container(
                            height: 20,
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Row(
                              children: <Widget>[
                                Container( //nama biasa
                                  child: Text("Hadi", style: TextStyle(color: Colors.white),),
                                ),
                                Container( //username
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("@hadiganteng", style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 13),),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned( //tweetnya
                          top: 25,
                          left: 50,
                          child: Container(
                            height: 80,
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Text("Halo semuanya, kenalin aku hadi. Aku baru gabung nih, temenan sama aku yuk. Saling follow ya, nanti aku langsung follback kok, tenang aja. Oh ya, aku terbuka di DM sama kalo ngebales tweet ini juga boleh. See u yaaaa", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        Positioned( //tombol like retweet komen
                          bottom: 0,
                          left: 50,
                          child: Container(
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.comment, color: Colors.white.withOpacity(0.8), size: 20,),
                                ImageIcon(AssetImage("assets/retweet.png"), size: 20, color: Colors.white.withOpacity(0.8),),
                                Icon(Icons.favorite_outline, color: Colors.white.withOpacity(0.8), size: 20,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(color: Color.fromARGB(255, 57, 57, 57)),
                  Container( //konten 4
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 135,
                    // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(//logo akun
                            padding: EdgeInsets.all(5),
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: CircleAvatar(
                              radius: 16.0,
                              backgroundImage: AssetImage("assets/profil1.png"),
                            ),
                          ),
                        ),
                        Positioned( //nama akun
                          top: 0,
                          left: 50,
                          child: Container(
                            height: 20,
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Row(
                              children: <Widget>[
                                Container( //nama biasa
                                  child: Text("Hadi", style: TextStyle(color: Colors.white),),
                                ),
                                Container( //username
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("@hadiganteng", style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 13),),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned( //tweetnya
                          top: 25,
                          left: 50,
                          child: Container(
                            height: 80,
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Text("Halo semuanya, kenalin aku hadi. Aku baru gabung nih, temenan sama aku yuk. Saling follow ya, nanti aku langsung follback kok, tenang aja. Oh ya, aku terbuka di DM sama kalo ngebales tweet ini juga boleh. See u yaaaa", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        Positioned( //tombol like retweet komen
                          bottom: 0,
                          left: 50,
                          child: Container(
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.comment, color: Colors.white.withOpacity(0.8), size: 20,),
                                ImageIcon(AssetImage("assets/retweet.png"), size: 20, color: Colors.white.withOpacity(0.8),),
                                Icon(Icons.favorite_outline, color: Colors.white.withOpacity(0.8), size: 20,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(color: Color.fromARGB(255, 57, 57, 57)),
                  Container( //konten 5
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 135,
                    // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(//logo akun
                            padding: EdgeInsets.all(5),
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: CircleAvatar(
                              radius: 16.0,
                              backgroundImage: AssetImage("assets/profil1.png"),
                            ),
                          ),
                        ),
                        Positioned( //nama akun
                          top: 0,
                          left: 50,
                          child: Container(
                            height: 20,
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Row(
                              children: <Widget>[
                                Container( //nama biasa
                                  child: Text("Hadi", style: TextStyle(color: Colors.white),),
                                ),
                                Container( //username
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("@hadiganteng", style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 13),),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned( //tweetnya
                          top: 25,
                          left: 50,
                          child: Container(
                            height: 80,
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Text("Halo semuanya, kenalin aku hadi. Aku baru gabung nih, temenan sama aku yuk. Saling follow ya, nanti aku langsung follback kok, tenang aja. Oh ya, aku terbuka di DM sama kalo ngebales tweet ini juga boleh. See u yaaaa", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        Positioned( //tombol like retweet komen
                          bottom: 0,
                          left: 50,
                          child: Container(
                            width: 322,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.comment, color: Colors.white.withOpacity(0.8), size: 20,),
                                ImageIcon(AssetImage("assets/retweet.png"), size: 20, color: Colors.white.withOpacity(0.8),),
                                Icon(Icons.favorite_outline, color: Colors.white.withOpacity(0.8), size: 20,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ],
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
