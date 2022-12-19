

import 'package:flutter/material.dart';


class PageTwo extends StatefulWidget {
  PageTwo({Key? key, required this.counter}) : super(key: key);


   int counter =0;

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {



  void _incrementCounter() {
    setState(() {

      widget.counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('PageTwo'),
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop(widget.counter);
        }, icon: const Icon(Icons.arrow_back)),

      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Estamos na Pagina 2',
            ),
            Text(
              '${widget.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
