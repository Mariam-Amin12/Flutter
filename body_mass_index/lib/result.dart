import 'package:flutter/material.dart';
import 'var.dart';

class Data extends StatelessWidget {
  final Function() reset;
  Data(this.reset);
  String fun() {
    double type = Weight / ((height / 100) * (height / 100));
    if (type < 18.5) {
      return "UnderWeight";
    } else if (type < 24.9) {
      return "Normal";
    } else if (type < 29.9) {
      return "OverWeight";
    } else {
      return "Obese";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0x964F9C7E)),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only (top:70),
              height: 400,
              child:
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      result_method(context, "age"),
                      result_method(context, "weight"),
                      result_method(context, "height"),
                      result_method(context, "gender"),
                      Card(
                        elevation: 5,
                        shadowColor: const Color(0x9601273B),
                        child: Text(
                          fun(),
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0x9601273B)),
                        ),
                      )
                    ]),

            ),
            Container(

              child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0x960B473B)),
                    padding:
                        MaterialStatePropertyAll(EdgeInsets.all(15)),
                  ),
                  onPressed: () {
                    reset();
                  },
                  child: const Text(
                    "Again",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Text result_method(BuildContext context, String Type) {
    return Text(
      Type == "gender"
          ? "Gender : $gender"
          : Type == "age"
              ? "Age : $age"
              : Type == "weight"
                  ? "Weight : $Weight"
                  : "Height : ${height.toStringAsFixed(2)}",
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
