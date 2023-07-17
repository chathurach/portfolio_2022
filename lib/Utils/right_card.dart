import 'package:flutter/material.dart';

class RightCard extends StatelessWidget {
  const RightCard({
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
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 500.0,
        maxWidth: 700.0,
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
                    width: 10.0,
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
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SubItem(item: items[index]);
                    }),
              )
            ]),
      ),
    );
  }
}

class SubItem extends StatelessWidget {
  const SubItem({Key? key, required this.item}) : super(key: key);
  final Map item;
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: screenWidth > 400.0 ? 150.0 : 80.0,
              maxWidth: screenWidth > 400 ? 200.0 : 80.0),
          child: Text(
            item['duration'].toString(),
            style: Theme.of(context).textTheme.labelMedium,
            softWrap: true,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item['heading'].toString(),
                style: Theme.of(context).textTheme.labelMedium,
              ),
              ListView.builder(
                itemCount: item['item'].length,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return Text(
                    item['item'][index].toString(),
                    style: Theme.of(context).textTheme.labelSmall,
                  );
                }),
              ),
            ],
          ),
        )
      ],
    );
  }
}
