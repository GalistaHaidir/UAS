import 'package:flutter/material.dart';
import 'package:aplikasi_ini/data/question_list1.dart';
import 'package:aplikasi_ini/pages/result_screen.dart';

class SoalPagesatu extends StatefulWidget {
  const SoalPagesatu({Key? key}) : super(key: key);

  @override
  State<SoalPagesatu> createState() => _SoalPageState();
}

class _SoalPageState extends State<SoalPagesatu> {
  Color mainColor = Color(0xFF252c4a);
  Color secondColor = Color(0xFF117eeb);

  PageController? _controller = PageController(initialPage: 0);

  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Color(0xFF117eeb);
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller!,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: questions1.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Question ${index + 1} /${questions1.length}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 29.0,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  height: 8.0,
                  thickness: 1.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  questions1[index].question!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                for (int i = 0; i < questions1[index].answers!.length; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                      bottom: 18.0,
                    ),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      color: isPressed
                          ? questions1[index].answers!.entries.toList()[i].value
                              ? isTrue
                              : isWrong
                          : secondColor,
                      padding: EdgeInsets.symmetric(
                        vertical: 18.0,
                      ),
                      onPressed: isPressed
                          ? () {}
                          : () {
                              setState(() {
                                isPressed = true;
                              });
                              if (questions1[index]
                                  .answers!
                                  .entries
                                  .toList()[i]
                                  .value) {
                                score += 10;
                                print(score);
                              }
                            },
                      child: Text(
                        questions1[index].answers!.keys.toList()[i],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: isPressed
                          ? index + 1 == questions1.length
                              ? () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ResultScreen(score)));
                                }
                              : () {
                                  _controller!.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.linear,
                                  );
                                  setState(() {
                                    isPressed = false;
                                  });
                                }
                          : null,
                      style: OutlinedButton.styleFrom(
                          shape: StadiumBorder(),
                          side: BorderSide(
                            color: Colors.orange,
                            width: 1.0,
                          )),
                      child: Text(
                        index + 1 == questions1.length
                            ? "Lihat Hasil"
                            : "Lanjut",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
