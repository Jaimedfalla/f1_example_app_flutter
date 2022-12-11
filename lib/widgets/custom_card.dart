import 'package:flutter/material.dart';
import 'package:f1_example_app_flutter/themes/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,),
            title: Text("Soy un título"),
            subtitle: Text("Dolor excepteur amet dolore ex enim nulla. Proident elit nisi eu eu commodo aliqua ipsum consectetur enim laboris excepteur. Consectetur ipsum velit amet fugiat adipisicing aliqua aliquip non ipsum."),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 5
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: (){},
                    child: const Text("Cancel"),
                ),
                TextButton(
                    onPressed: (){},
                    child: const Text("OK"),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}