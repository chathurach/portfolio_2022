import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class LeftCard extends StatelessWidget {
  const LeftCard({
    Key? key,
    required this.icon,
    required this.heading,
    required this.items,
  }) : super(key: key);

  final IconData icon;
  final String heading;
  final List<Map> items;
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: true,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 200.0,
          maxWidth: 300.0,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(icon),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: Text(
                        heading,
                        style: Theme.of(context).textTheme.labelLarge,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Divider(
                    height: 1.0,
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                ),
                Flexible(
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SubItem(item: items[index]);
                      }),
                )
              ]),
        ),
      ),
    );
  }
}

class SubItem extends StatelessWidget {
  const SubItem({Key? key, required this.item}) : super(key: key);
  final Map item;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item['heading'].toString(),
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Flexible(
          child: ListView.builder(
              itemCount: item['item'].length,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return TextRenderer(
                  child: Text(
                    item['item'][index].toString(),
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                );
              })),
        )
      ],
    );
  }
}
