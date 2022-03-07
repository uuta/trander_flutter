import '/import.dart';

class PurchasePriceCards extends HookConsumerWidget {
  const PurchasePriceCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final purchaseState = ref.watch(purchaseNotifierProvider);
    final purchaseNotifier = ref.watch(purchaseNotifierProvider.notifier);
    final List<Map<String, dynamic>> listItems = [
      {
        'text': 'Monthly',
        'price': purchaseState.monthlyPrice.toString().toString()
      },
      {'text': 'Yearly', 'price': purchaseState.yearOfMonthlyPrice.toString()},
    ];

    return Container(
        height: 180,
        margin: const EdgeInsets.only(top: 10.0),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            return Center(
                child: Row(children: [
              Card(
                shape:
                    (listItems[index] == listItems[purchaseState.purchaseType])
                        ? RoundedRectangleBorder(
                            side: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 5),
                            borderRadius: BorderRadius.circular(10),
                          )
                        : RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                child: InkWell(
                    onTap: () {
                      purchaseNotifier.switchPurchaseType(index);
                    },
                    child: SizedBox(
                      width: 150,
                      child: Column(
                        children: [
                          Column(children: [
                            const SizedBox(height: 20),
                            Text(listItems[index]['text'],
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                )),
                            const SizedBox(height: 10),
                            Text(
                              listItems[index]['price'],
                              style: Theme.of(context).textTheme.headline3,
                            ),
                            if (listItems[index] == listItems[1])
                              Column(children: [
                                const SizedBox(height: 8),
                                Container(
                                  padding: const EdgeInsets.all(5.0),
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  // TODO: Make a method to calculate the discount
                                  child: const Center(
                                      child: Text('44% off',
                                          style:
                                              TextStyle(color: Colors.black))),
                                ),
                              ])
                          ])
                        ],
                      ),
                    )),
                color: Colors.grey[800],
              ),
            ]));
          },
        ));
  }
}
