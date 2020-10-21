import 'package:flutter/material.dart';

class Detailbreakdown extends StatefulWidget {
  var map = <String, dynamic>{};
  Detailbreakdown(this.map);

  _DetailbreakdownState createState() => _DetailbreakdownState();
}

class _DetailbreakdownState extends State<Detailbreakdown> {
  int price = 0;
  String temprice = "";
  @override
  void initState() {
    super.initState();

    for (var i = 0; i < widget.map['price'].length; i++) {
      temprice = widget.map['price'][i];
      price += int.parse(temprice);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '상세 내역',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 310, 0),
              child: Text(
                '${widget.map['카페이름']}',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(350, 30, 0, 0),
              child: Text(
                '${widget.map['주문시간']}',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      height: 130,
                      child: ListView.builder(
                          itemCount: widget.map['menu'].length,
                          itemBuilder: (BuildContext context, int index) {
                            return _menuview(widget.map['menu'][index]);
                          }),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      height: 130,
                      child: ListView.builder(
                        itemCount: widget.map['price'].length,
                        itemBuilder: (BuildContext context, int index) {
                          return _priceview(widget.map['price'][index]);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 0,
              thickness: 5,
              indent: 38,
              endIndent: 38,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Text(
                    '총 합',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 63),
                  child: Text(
                    '$price원',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuview(dynamic doc) {
    return Column(
      children: [
        Text(
          '$doc',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Divider(
          height: 10,
          color: Colors.black,
          indent: 38,
        )
      ],
    );
  }

  Widget _priceview(dynamic doc) {
    return Column(
      children: [
        Text(
          '$doc원',
          style: TextStyle(fontSize: 25),
        ),
        Divider(
          height: 10,
          color: Colors.black,
          endIndent: 38,
        ),
      ],
    );
  }
}
