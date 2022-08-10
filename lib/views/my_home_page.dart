import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ncl_assessment/controllers/home_page_controller.dart';
import 'package:ncl_assessment/widgets/bottom_menu_button.dart';
import 'package:ncl_assessment/widgets/custom_text_area.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late MainController mainController;
  int currentTab = 0;
  @override
  void initState() {
    mainController = Get.put(MainController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Obx(() => CustomTextArea(label: 'Ship Name', text: mainController.getModel(currentTab).value.shipName,)),

                Obx(() => CustomTextArea(label: 'Passenger Capacity', text:mainController.getModel(currentTab).value.shipFacts?.passengerCapacity,)),

                Obx(() => CustomTextArea(label: 'Crew', text: mainController.getModel(currentTab).value.shipFacts?.crew,)),

                Obx(() => CustomTextArea(label: 'Inaugural Date', text: mainController.getModel(currentTab).value.shipFacts?.inauguralDate,)),
              ],
            ),
              Obx(() => Align(
                  alignment: Alignment.bottomCenter,
                  child: mainController.loading.value ? const CircularProgressIndicator():Container())
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: const CircularNotchedRectangle(),
        notchMargin: 12,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              BottomMenuButton(
                  onTap: (){
                    setState(() {
                      currentTab = 0;
                    });
                    mainController.getSkyData();
                  },
                  buttonText: 'SKY',
                  focus: currentTab==0?true:false),
              BottomMenuButton(
                  onTap: (){
                    setState(() {
                      currentTab = 1;
                    });
                    mainController.getBlissData();
                  },
                  buttonText: 'BLISS',
                  focus: currentTab==1?true:false),
              BottomMenuButton(
                  onTap: (){
                    setState(() {
                      currentTab = 2;
                    });
                    mainController.getEscapeData();
                  },
                  buttonText: 'ESCAPE',
                  focus: currentTab==2?true:false),
            ],
          ),
        ),
      ),
    );
  }
}

