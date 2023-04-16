import 'package:flare_flutter/flare_actor.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';


List<charts.Series<Task, String>> _createData() {
  final data = [
    new Task('Work', 35.0, charts.MaterialPalette.blue.shadeDefault),
    new Task('Play', 25.0, charts.MaterialPalette.green.shadeDefault),
    new Task('Sleep', 40.0, charts.MaterialPalette.red.shadeDefault),
  ];

  return [
    new charts.Series<Task, String>(
      id: 'Tasks',
      domainFn: (Task task, _) => task.task,
      measureFn: (Task task, _) => task.taskValue,
      colorFn: (Task task, _) => task.color,
      data: data,
    )
  ];
}

class Task {
  final String task;
  final double taskValue;
  final charts.Color color;

  Task(this.task, this.taskValue, this.color);
}

class BreathingDonutGraphWidget extends StatefulWidget {
  @override
  _BreathingDonutGraphWidgetState createState() => _BreathingDonutGraphWidgetState();
}

class _BreathingDonutGraphWidgetState extends State<BreathingDonutGraphWidget> {
  bool _isBreathingIn = true;
  late charts.Series<Task, String> _seriesPieData;

  @override
  void initState() {
    super.initState();
    _seriesPieData = _createData().first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isBreathingIn = !_isBreathingIn;
          });
        },
        child: Stack(
          children: [
            FlareActor(
              'assets/breathing.flr',
              animation: _isBreathingIn ? 'breathing_in' : 'breathing_out',
              fit: BoxFit.contain,
            ),
            Center(
              child: SizedBox(
                height: 200.0,
                width: 200.0,
                child: charts.PieChart(
                  [_seriesPieData],
                  animate: false,
                  defaultRenderer: new charts.ArcRendererConfig(
                    arcWidth: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

