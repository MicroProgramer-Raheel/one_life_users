import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_life_users/views/layouts/item_user_event_list.dart';
import 'package:one_life_users/widgets/asset_icon.dart';

import '../../helpers/helpers.dart';
import '../screens/screen_user_profile_public.dart';

class LayoutUserSearch extends StatefulWidget {
  const LayoutUserSearch({Key? key}) : super(key: key);

  @override
  _LayoutUserSearchState createState() => _LayoutUserSearchState();
}

class _LayoutUserSearchState extends State<LayoutUserSearch> {
  String searchQuery = "";
  TextEditingController searchController = TextEditingController();
  List allEvents = [];
  List filteredEvents = [];
  List<String> filtersList = [
    "Dancing",
    "Travelling",
    "Drinking",
    "Flying",
    "Eating",
    "Claiming",
  ];
  String searchText = "";
  var selectedIndexes = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: bg2Color,
        child: Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            height: Get.height*0.3,
            width: Get.width,
            color: backGroundColorPink,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/Logo One Life.png",width: Get.width*0.3,),
                      GestureDetector(
                        onTap: (){
                          Get.to(ScreenUserProfilePublic());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2,color: Colors.white)
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            child: Image.asset("assets/images/avatar (0).png",fit: BoxFit.contain,),
                          ),
                        ),
                      )
                    ],),
                  Text("Search Events",style: TextStyle(fontSize: 16,color: Colors.white)),
                  _buildSearchField(),


                ],),
            ),
          ),
          Positioned(
              bottom: 0,
              top: Get.height*0.24,
              left: 15,
              right: 15,
              child: SingleChildScrollView(
                child: Column(children: [

                  GridView.builder(
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,

                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      childAspectRatio: 0.9
                    ),
                    itemCount: 21,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(bottom: 10),
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/Rectangle 9514.png")
                          )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("GROUPE",style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            ),),
                            Text("266",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300
                            ),),
                          ],
                        ),
                      );
                    },
                  )

                ],),
              ))
        ],),
      ),
    );
  }
  Widget _buildSearchField() {
    return CustomInputField(
      onTap: (){
        bottomSheet(context);
      },
        hint: "Search Event",
        isPasswordField: false,
        onChange: (value) {
          filterEvents(value.toString().trim());
        },
        prefix: Icon(Icons.search,color: backGroundColorPink,),
        suffix:  IconButton(
          onPressed: () {
            Get.defaultDialog(
                title: "Filter",
                content: StatefulBuilder(builder: (_, setState) {
                  return Expanded(
                    child: CustomListviewBuilder(
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                          value: selectedIndexes.contains(index),
                          onChanged: (_) {
                            if (selectedIndexes.contains(index)) {
                              selectedIndexes.remove(index);
                            } else {
                              selectedIndexes.add(index);
                            }
                            setState(() {});
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(allEventTags[index]),
                        );
                      },
                      itemCount: allEventTags.length,
                      scrollDirection: CustomDirection.vertical,
                    ),
                  );
                }),
                onConfirm: () {
                  filtersList.clear();
                  selectedIndexes.forEach((element) {
                    filtersList.add(allEventTags[element]);
                  });
                  setState(() {});
                  filterEvents(searchController.text);
                  Get.back();
                },
                textConfirm: "Filter",
                textCancel: "Cancel",
                onCancel: () {
                });
          },
          icon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "${filtersList.length}",
                style: (GetPlatform.isWeb ? normal_h4Style_web : normal_h4Style).copyWith(
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 1.sp,),
              Container(
                padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: appBoxShadow
                  ),
                  child: AssetIcon(path: "assets/svg/filter.svg"))
            ],
          ),
          splashColor: Colors.transparent,
        ) ,
        controller: searchController,
        keyboardType: TextInputType.text);
  }
  @override
  void onEventAdded(List events) {
    if (mounted) {
      setState(() {
        allEvents = events;
      });
    }
    filterEvents(searchController.text);
  }

  void filterEvents(String query) {
    query = query.toLowerCase();
    filteredEvents.clear();
    if (query.isEmpty) {
      filteredEvents.addAll(allEvents);
      filtersList.clear();
      if (mounted) {
        setState(() {});
      }
      return;
    }
    print(query);
    allEvents.forEach((element) {
      if (element.title.toLowerCase().startsWith(query) || element.description.toLowerCase().contains(query)) {
        print(element.title);
        var newTagsList = filtersList;
        // selectedIndexes.forEach((index) {
        //   newTagsList.add(allEventTags[index]);
        // });

        if (newTagsList.isNotEmpty) {
          print(newTagsList);

          for (var tag in newTagsList) {
            if (element.tags.contains(tag)) {
              filteredEvents.add(element);
              break;
            }
          }
          if (mounted) {
            setState(() {});
          }
          return;
        }
        filteredEvents.add(element);
      }
    });
    if (mounted) {
      setState(() {});
    }
  }
  void bottomSheet(context) {
    showModalBottomSheet(

      barrierColor: Colors.black.withOpacity(.9),
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      context: context, builder: (BuildContext context) {
      return StatefulBuilder(builder: (BuildContext context,
          void Function(void Function()) setState) {
        return SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              height: Get.height,
              decoration: BoxDecoration(
                  color: backGroundColorBlue,

                  borderRadius: BorderRadius.circular(25)
              ),
              padding: EdgeInsets.only(left: 15,right: 15,top: 15),

              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Search Results",style: normal_h2Style.copyWith(color: Colors.white),),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: bg2Color,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(color: backGroundColorBlueLight, blurRadius: 1)
                            ],
                          ),
                          child: Icon(
                            Icons.clear,
                            size: 20,
                            color: Color(0xFFFD65AF),
                          ),
                        ),
                      )
                    ],),
                  CustomInputField(
                    keyboardType: TextInputType.text,
                    hint: "Search",
                    isPasswordField: false,
                    prefix: Icon(Icons.search,color: backGroundColorPink,),
                  ),
                  CustomChips(
                    chipNames: filtersList,
                    selectable: false,
                    scrollable: true,
                    selectedChipColor: backGroundColorBlue,
                    // onDeleted: (newList) {
                    //   setState(() {
                    //     filtersList = newList;
                    //     filterEvents(searchController.text);
                    //   });
                    // },
                  ),
                 Expanded(
                   child: CustomListviewBuilder(
                       itemCount: 10,
                       scrollDirection: CustomDirection.vertical,
                     itemBuilder: (BuildContext context, int index) {
                         return ItemUserEventList();
                     },),
                 )

                ],),
            ));
      },);
    },);
  }
}
