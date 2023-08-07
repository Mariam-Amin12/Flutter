import 'package:flutter/material.dart';
import 'var.dart';

class BMI extends StatelessWidget {
  final Function(int x) weightfunction;

  final Function(int x) agefunction;
  final Function(double x) sliderfunction;

  final Function() start;
  final Function(String Type) genderfunction;

  const BMI(this.weightfunction, this.agefunction, this.sliderfunction,
      this.start, this.genderfunction,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Row(children: [
                gender_method(context, "male"),
                gender_method(context, "female"),
              ]),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0x964F9C7E)),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Height",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("${height.toStringAsFixed(2)}",
                                  style: const TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              const Text("  cm",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                          Slider(
                              activeColor: const Color(0x960B473B),
                              inactiveColor: const Color(0x964F9C7E),
                              min: 0.0,
                              max: 200.0,
                              value: height,
                              onChanged: (newval) {
                                sliderfunction(newval);
                              })
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  weight_age_method(context, "weight"),
                  weight_age_method(context, "age"),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0x960B473B)),
                          padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
                        ),
                        onPressed: () {
                          start();
                        },
                        child: const Text(
                          "Calculate",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded weight_age_method(BuildContext context, String Type) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0x964F9C7E)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              Type == "weight" ? "Weight" : "Age",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(Type == "weight" ? "$Weight" : "$age",
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: const ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(50, 50)),
                      shape: MaterialStatePropertyAll(CircleBorder()),
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0x96144A3A),
                      ),
                      elevation: MaterialStatePropertyAll(5),
                      shadowColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    onPressed: () {
                      Type == "weight" ? weightfunction(1) : agefunction(1);
                    },
                    child:
                        const Icon(Icons.add, size: 25, color: Colors.white)),
                ElevatedButton(
                    style: const ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(50, 50)),
                      shape: MaterialStatePropertyAll(CircleBorder()),
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0x96144A3A),
                      ),
                      elevation: MaterialStatePropertyAll(5),
                      shadowColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    onPressed: () {
                      Type == "weight" ? weightfunction(-1) : agefunction(-1);
                    },
                    child:
                        const Icon(Icons.remove, size: 25, color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }

  Expanded gender_method(BuildContext context, String Type) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Type == "male" ? gendercolormale : gendercolorfemale),
        child: InkWell(
          onTap: () {
            if (Type == "male") {
              genderfunction("male");
            } else {
              genderfunction("female");
            }
          },
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Type == "male" ? Icons.male : Icons.female,
              size: 80,
              color: Colors.white,
            ),
            Text(
              Type == "male" ? "Male" : "Female",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ]),
        ),
      ),
    );
  }
}
