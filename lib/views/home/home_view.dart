library home_view;

import 'package:stacked/stacked.dart';

import 'package:flutter/material.dart';
import 'home_view_model.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Mobile'),
              backgroundColor: Colors.black,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times: ',
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    '${viewModel.counter}',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: viewModel.increment,
              backgroundColor: Colors.black,
            ),
          );
        });
  }
}
