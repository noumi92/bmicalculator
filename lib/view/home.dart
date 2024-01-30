import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int height = 0;
  int weight = 0;
  double bmi = 0;
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My BMI"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                    width: 100,
                    height: 100,
                    image: AssetImage("assets/images/logos/logo.png")
                ),
                const SizedBox(height: 16,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: heightController,
                  decoration: const InputDecoration(
                    label: Text("Height"),
                    hintText: "Height in cm",
                  ),
                ),
                const SizedBox(height: 16,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: weightController,
                  decoration: const InputDecoration(
                    label: Text("Weight"),
                      hintText: "Weight in kg"
                  ),
                ),
                const SizedBox(height: 16,),
                ElevatedButton(onPressed: (){
                  height = int.parse(heightController.text.toString());
                  weight = int.parse(weightController.text.toString());
                  print(height);
                  print(weight);
                  setState(() {
                    bmi = weight.toDouble() / ( (height.toDouble() / 100 )* (height.toDouble() / 100 ) );
                  });
                  print(bmi.roundToDouble());
                }, child: const Text("Calculate")),
                const SizedBox(height: 16,),
                Text(bmi.toStringAsFixed(2), style: const TextStyle(fontSize: 32),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}