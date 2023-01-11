import 'package:flutter/material.dart';
import 'package:hotels_hipo/common/methods.dart';
import 'package:hotels_hipo/models/user.dart';

class ItemWidget extends StatelessWidget {
  final User user;
  const ItemWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5.0,
      child: SizedBox(
        height: 200,
        child: GridTile(
          header: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: GridTileBar(
              backgroundColor: Colors.black45,
              leading: const Icon(Icons.person_rounded),
              title: Text('UID: ${user.id}'),
              trailing: const Icon(Icons.add),
            ),
          ),
          footer: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            child: GridTileBar(
              backgroundColor: Colors.black45,
              leading: const Icon(Icons.person_rounded),
              title: Text('NID: ${user.node_id.toUpperCase()}'),
              trailing: ElevatedButton(
                onPressed: () async {
                  await launchInBrowser(user.html_url);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: image('github'),
              ),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              user.avatar_url,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;

                double? loadingProgress = progress.expectedTotalBytes != null
                    ? progress.cumulativeBytesLoaded /
                        progress.expectedTotalBytes!
                    : null;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
