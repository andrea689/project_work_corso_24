import 'package:flutter/material.dart';

class PlaylistsListItem extends StatelessWidget {
  final String? imageUrl;
  final IconData? icon;
  final String title;
  final String? subtitle;

  const PlaylistsListItem({
    super.key,
    this.imageUrl,
    this.icon,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.grey.shade300,
            child: imageUrl != null
                ? Image.network(
                    imageUrl!,
                  )
                : Icon(icon),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                if (subtitle != null) Text(subtitle!),
              ],
            ),
          )
        ],
      ),
    );
  }
}
