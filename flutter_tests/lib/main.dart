import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Demo')),
        body: Builder(
          builder: (BuildContext context) {
            return TextButton(
              child: const Text('BUTTON'),
              onPressed: () {
                Scaffold.of(context).showBottomSheet<void>(
                  (BuildContext context) {
                    return Container(
                      alignment: Alignment.center,
                      height: 200,
                      color: Colors.amber,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text('BottomSheet'),
                            ElevatedButton(
                              child: const Text('Close BottomSheet'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
        ));
  }
}
