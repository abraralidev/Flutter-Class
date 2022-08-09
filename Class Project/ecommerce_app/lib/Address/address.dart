// ignore_for_file: library_private_types_in_public_api

// import 'package:ecommerce_app/Config/config.dart';
// import 'package:ecommerce_app/Orders//placeOrder.dart';
// import 'package:ecommerce_app/Widgets/customAppBar.dart';
// import 'package:ecommerce_app/Widgets/loadingWidget.dart';
// import 'package:ecommerce_app/Widgets/wideButton.dart';
// import 'package:ecommerce_app/Models//address.dart';
// import 'package:ecommerce_app/Counters/changeAddresss.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class Address extends StatefulWidget
{
  const Address({Key? key}) : super(key: key);

  @override
  _AddressState createState() => _AddressState();
}


class _AddressState extends State<Address>
{
  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
child: Scaffold(),
    );
  }

  noAddressCard() {
    return const Card(

    );
  }
}

class AddressCard extends StatefulWidget {
  const AddressCard({Key? key}) : super(key: key);


  @override
  _AddressCardState createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  @override
  Widget build(BuildContext context) {

    return const InkWell(

    );
  }
}





class KeyText extends StatelessWidget {
  const KeyText({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const Text("");
  }
}
