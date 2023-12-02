import '/import.dart';

class PurchasePriceCards extends HookConsumerWidget {
  const PurchasePriceCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final purchaseState = ref.watch(purchaseNotifierProvider);
    final purchaseNotifier = ref.watch(purchaseNotifierProvider.notifier);
    final offeringList = purchaseState.offeringList;

    return Container(
        height: 180,
        margin: const EdgeInsets.only(top: 10.0),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: offeringList.length,
          itemBuilder: (context, index) {
            return Center(
                child: Row(children: [
              Card(
                shape: (offeringList[index] ==
                        offeringList[purchaseState.purchaseType])
                    ? RoundedRectangleBorder(
                        side: BorderSide(
                            color: Theme.of(context).primaryColor, width: 5),
                        borderRadius: BorderRadius.circular(10),
                      )
                    : RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                color: Colors.grey[800],
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
                            Text(offeringList[index]['name'],
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                )),
                            const SizedBox(height: 10),
                            Text(
                              offeringList[index]['price'] + '/mo',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            if (offeringList[index] == offeringList[1])
                              Column(children: [
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5.0),
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                      child: Text(
                                          "${offeringList[index]['offPercent']}% off",
                                          style: const TextStyle(
                                              color: Colors.black))),
                                ),
                              ])
                          ])
                        ],
                      ),
                    )),
              ),
            ]));
          },
        ));
  }
}
