import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: _scaffoldBody(),
      ),
    );
  }

  Container _scaffoldBody() {
    return Container(
      height: _deviceHeight,
      width: _deviceWidth,
      color: Colors.amber,
      padding: EdgeInsets.symmetric(
        horizontal: _deviceWidth * 0.05,
        vertical: _deviceHeight * 0.025,
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _pageTitle(),
              _bookRideWidget(),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: _astroImageWidget(),
          ),
        ],
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      margin: EdgeInsets.only(left: _deviceWidth * 0.2),
      height: _deviceHeight * 0.65,
      width: _deviceWidth * 0.80,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/ice_cream.png"),
        ),
      ),
    );
  }

  Text _pageTitle() {
    return const Text(
      '#IceCream',
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      width: _deviceWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _destionationDropDownWidget(),
          _travellersInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _destionationDropDownWidget() {
    List<String> values = [
      'Strawberry',
      'Chocolate',
      'Cherry',
      'Peanch',
    ];
    return CustonDropDownButtonClass(
      values: values,
      width: _deviceWidth,
    );
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustonDropDownButtonClass(
          values: const ['1', '2', '3', '4'],
          width: _deviceWidth * 0.45,
        ),
        CustonDropDownButtonClass(
          values: const ['Large', 'Meduim', 'Small'],
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Order",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class CustonDropDownButtonClass extends StatelessWidget {
  List<String> values;
  double width;

  CustonDropDownButtonClass({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButton(
        onChanged: (value) {},
        value: values.first,
        items: values.map(
          (e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          },
        ).toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
