import 'package:flutter/material.dart';

class ExpandCollapseButton extends StatefulWidget {
  @override
  _ExpandCollapseButtonState createState() => _ExpandCollapseButtonState();
}

class _ExpandCollapseButtonState extends State<ExpandCollapseButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpand() {
    setState(() {
      if (_isExpanded) {
        _controller.reverse();
      } else {
        _controller.forward();
      }
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: _toggleExpand,
          child: Text(
            _isExpanded ? 'Close' : 'More',
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(height: 10),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0.0, -MediaQuery.of(context).size.height * _animation.value),
              child: child,
            );
          },
          child: Container(
            color: Colors.blueGrey[100],
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              'Expanded content goes here...',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}

class AnimatedExpandCollapseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Expand Collapse'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 330), // Adjust padding as needed
        child: ExpandCollapseButton(),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          color: Colors.blue,
          child: Center(
            child: Text(
              'Bottom Bar',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
