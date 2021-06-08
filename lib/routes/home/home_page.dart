import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:teste_ioasys/repositories/enterprise_source.dart';
import 'package:teste_ioasys/routes/home/widgets/enterprise_widget.dart';

import 'widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final EnterpriseSource _enterpriseSource = EnterpriseSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/background_home.png',
                  ),
                  SearchWidget(),
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Obx(
                () {
                  final enterprises = _enterpriseSource.enterprises;
                  return enterprises.length > 0
                      ? ListView.builder(
                          itemBuilder: (_, i) => GestureDetector(
                            onTap: () {
                              setState(() {
                                Get.toNamed('/description',
                                    arguments: enterprises[i]);
                              });
                            },
                            child: EnterpriseWidget(
                              photoUrl: enterprises[i].photo!,
                              name: enterprises[i].enterprise_name!,
                            ),
                          ),
                          itemCount: enterprises.length,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                        )
                      : Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
