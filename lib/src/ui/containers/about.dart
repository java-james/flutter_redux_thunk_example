import 'package:flutter/material.dart';

import 'package:redux_thunk_boilerplate/src/models/user.dart';
import 'package:redux_thunk_boilerplate/src/ui/components/about_form.dart';

@immutable
class AboutContainer extends StatelessWidget {
  final AboutVM vm;

  AboutContainer({@required this.vm});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Redux Thunk Boilerplate',
        )),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AboutForm(name: vm.user.name),
        ));
  }
}

@immutable
class AboutVM {
  final User user;

  AboutVM({@required this.user});
}
