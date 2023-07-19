import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:swiftcafe/widgits/togglebtn.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/main.png'),
              fit: BoxFit.cover,
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            Image.asset(
              'assets/images/coffee.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            Positioned(
              bottom: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 20.0,
                    sigmaY: 20.0,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black.withOpacity(.3),
                    child: OrderForm(),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class OrderForm extends StatelessWidget {
  OrderForm({
    super.key,
  });
  List<int> list = <int>[1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Latte",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "4.9",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.white, fontSize: 10),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "(458)",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: 30,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                ),
                child: DropdownButton(
                  dropdownColor: Colors.white,
                  style: TextStyle(color: Colors.black),
                  onChanged: (val) {},
                  value: list[0].toString(),
                  items: list.map<DropdownMenuItem<String>>((int value) {
                    return DropdownMenuItem(
                      value: value.toString(),
                      child: Text(value.toString()),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.white, fontSize: 10),
          ),
          const SizedBox(
            height: 20,
          ),
          OrderFiledFilter()
        ]),
      ),
    );
  }
}

class OrderFiledFilter extends StatefulWidget {
  const OrderFiledFilter({
    super.key,
  });

  @override
  State<OrderFiledFilter> createState() => _OrderFiledFilterState();
}

class _OrderFiledFilterState extends State<OrderFiledFilter> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Choice of Cup Filling",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 30,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Text(
                  "Full",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white, fontSize: 14),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                ),
                child: Text("1/2 Full"),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                ),
                child: Text("3/4 Full"),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                ),
                child: Text("1/4 Full"),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Choice of Milk",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.white, fontSize: 20),
        ),
        GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            CustomToggleButton(text: "Skim Milk"),
            CustomToggleButton(text: "Full Cream Milk"),
            CustomToggleButton(text: "Almond Milk"),
            CustomToggleButton(text: "Full Cream Milk"),
            CustomToggleButton(text: "Soy Milk"),
            CustomToggleButton(text: "Oat Milk"),
            CustomToggleButton(text: "Lactose Free Milk"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Choice of Sugar",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.white, fontSize: 20),
        ),
        GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            CustomToggleButton(text: "Sugar X1"),
            CustomToggleButton(text: "Sugar X2"),
            CustomToggleButton(text: "½ Sugar"),
            CustomToggleButton(text: "No Sugar"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.5),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: _isChecked,
                        checkColor: Colors.white,
                        onChanged: (val) {
                          setState(() {
                            _isChecked = !_isChecked;
                          });
                        }),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "High Priority",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.white, fontSize: 15),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(Icons.error_rounded, color: Colors.redAccent),
                  ],
                ),
                GradeintButton()
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class GradeintButton extends StatelessWidget {
  const GradeintButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      child: Container(
        height: 35.0,
        width: 90.0,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 2, 173, 102),
              Colors.green,
            ],
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Center(
          child: Text(
            'Submit',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
