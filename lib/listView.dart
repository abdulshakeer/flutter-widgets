import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List View'),
        ),
        body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn2.iconfinder.com/data/icons/mixed-communication-and-ui-pack/48/general_pack_NEW__user-512.png'),
                    radius: 30,
                  ),
                  title: Text('PERSON $index'),
                  subtitle: Text('MESSAGE $index'),
                  trailing: Text('1$index:00PM'),
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider(
                  thickness: 1,
                );
              },
              itemCount: 50),
        ));
  }
}
