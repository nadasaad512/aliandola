import 'package:aliandola/utils/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:direct_select/direct_select.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequiredData extends StatefulWidget{
  @override
  State<RequiredData> createState() => _RequiredDataState();
}

class _RequiredDataState extends State<RequiredData> with Helpers {
  late TextEditingController _NameTextController;
  final elements1 = [

    "الصف الأول    ",
    "الصف الثاني  ",
    "الصف الثالث  ",
    "الصف الرابع  ",

  ];
  final elements2 = [
    "الفصل الأول    ",
    "الفصل الثاني  ",

  ];
  int selectedIndex1 = 0, selectedIndex2 = 0;

  List<Widget> _buildItems1() {
    return elements1.map((val) => MySelectionItem(title: val,)).toList();
  }

  List<Widget> _buildItems2() {
    return elements2.map((val) => MySelectionItem(title: val,)).toList();
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _NameTextController = TextEditingController();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _NameTextController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50.h,),
              Text(""),
              SizedBox(height: 50.h,),
              Field(
                  controller:_NameTextController,
                  keyboardType: TextInputType.text,
                  title: 'أدخل الاسم ',
                  prefixIcon: Icon(Icons.person)

              ),
              SizedBox(height: 50.h,),
              DirectSelect(
                  itemExtent: 50.0,

                  selectedIndex: selectedIndex1,
                  backgroundColor: Colors.blueGrey,


                  child: MySelectionItem(
                    isForList: false,
                    title: elements1[selectedIndex1],
                  ),
                  onSelectedItemChanged: (index) {
                    setState(() {
                      selectedIndex1 = index!;
                    });
                  },
                  items: _buildItems1()),
              SizedBox(height: 50.h,),
              DirectSelect(
                  itemExtent: 50.0,
                  selectedIndex: selectedIndex2,
                  child: MySelectionItem(
                    isForList: false,
                    title: elements2[selectedIndex2],
                  ),
                  onSelectedItemChanged: (index) {
                    setState(() {
                      selectedIndex2 = index!;
                    });
                  },
                  items: _buildItems2()),
              SizedBox(height: 50.h,),
             Button(title: "Send")

            ],
          ),
        ),
      ),
    );
  }
}
class MySelectionItem extends StatelessWidget {
  final String title;
  final bool isForList;

  const MySelectionItem({Key? key, required  this.title,this.isForList = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: isForList
          ? Padding(
        child: _buildItem(context),
        padding: EdgeInsets.all(10.0),
      )
          : Card(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
             child: Stack(
          children: <Widget>[
            _buildItem(context),
            Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.arrow_drop_down),
            )
          ],
        ),
      ),
    );
  }

  _buildItem(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Text(title),
    );
  }
}