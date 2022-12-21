import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Soy un título'),
            subtitle: Text(
                'Deserunt fugiat pariatur voluptate ipsum elit. Aliqua tempor in ex occaecat occaecat ex id. Enim eu consequat ex aliqua. Irure ad proident deserunt duis id aliquip labore ullamco aliquip qui fugiat. Nulla eiusmod irure duis eu dolore sunt. Occaecat id magna ad tempor fugiat irure.'),
          ),
          Padding(
            padding: const EdgeInsets.only( right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Cancel'),
                  // style: TextButton.styleFrom(primary: Colors.indigo),
                ),
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok')
                ),
                ],
            ),
          )
        ],
      ),
    );
  }
}
