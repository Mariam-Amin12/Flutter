import 'package:flutter/material.dart';
import 'main.dart';

class end extends StatelessWidget {
  final Function() x;

  end(this.x);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 5,),
            Text(
              "Done !",
              style: TextStyle(
                  fontSize: 30,
                  color: isSwitched == false ? Colors.black : Colors.purple),
            ),
            Spacer(flex: 1,),
            Text(
              "Your Score is $total ",
              style: TextStyle(
                  fontSize: 25,
                  color: isSwitched == false ? Colors.black : Colors.purple),
            ),
            Spacer(flex: 1,),
            ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all(
                      isSwitched ? Colors.purple : Colors.blue)),
              onPressed: () {
                x();
              },
              child: Text(
                "Start Agian ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: isSwitched == false ? Colors.black : Colors.white),
              ),
            ),
            Spacer(flex: 5,),
          ],
        ));
  }
}
