import 'package:flutter/material.dart';

void main() => runApp(palapp());

class palapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ub animation kartey hain',
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('chalye shuru kartey hai')),
        ),
        body: AnimationDemo(),
      ),
    );
  }
}

class AnimationDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> {
  bool _isExpanded = false;
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _isExpanded ? 200 : 100,
            height: _isExpanded ? 200 : 100,
            decoration: BoxDecoration(
              color: _isExpanded
                  ? const Color.fromARGB(255, 222, 243, 33)
                  : Colors.black,
              borderRadius: BorderRadius.circular(_isExpanded ? 50 : 0),
            ),
            curve: Curves.easeInOut,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Text('lo g hogya'),
          ),
          SizedBox(height: 20),
          AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: _isVisible ? 1.0 : 0.0,
            child: Text(
              'heyyyy mene kar dikhaya!',
              style: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isVisible = !_isVisible;
              });
            },
            child: Text('done'),
          ),
        ],
      ),
    );
  }
}
