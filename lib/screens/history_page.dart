import 'package:flutter/material.dart';

class BmiHistory {
  static final List<String> _bmiHistory = [];

  static List<String> get bmiHistory => _bmiHistory;

  static void addBmi(String bmi) {
    _bmiHistory.add(bmi);
  }
}

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Lịch Sử BMI '),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: ListView.builder(
          itemCount: BmiHistory.bmiHistory.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                'BMI: ${BmiHistory.bmiHistory[index]}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
