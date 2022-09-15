import 'package:am_box/screens/box_display.dart';
import 'package:am_box/screens/box_types.dart';
import 'package:am_box/screens/components/custom_drawer.dart';
import 'package:am_box/screens/home/box_category.dart';
import 'package:am_box/screens/home/desc_categorie.dart';
import 'package:am_box/utils/colors.dart';
import 'package:am_box/utils/constant.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String reason = '';
  int changedIndex=0;
  final CarouselController _controller = CarouselController();
  void onPageChange(int index, CarouselPageChangedReason changeReason) {
    setState(() {
      reason = changeReason.toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // drawerScrimColor: primaryColor,
      drawer: Drawer(
        child: CustomDrawer(),
      ),
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              Positioned(
                top: 5,
                right:10,
                child: Text(
                  "1",
                  style: TextStyle(color: primaryColor),
                ),
              ),
              IconButton(
            onPressed: 
            () {
              debugPrint("salut toi");
            },
            icon: Icon(Icons.notifications,color: primaryColor,)
            ),
            ],
          )
        ],
        elevation:0,
        title: Padding(
          padding: const EdgeInsets.only(left:0.0),
          child: Text(
            "AMBOX",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: primaryColor,
              fontSize: 20
            ),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          // systemNavigationBarDividerColor: primaryColor,
          // systemNavigationBarColor: primaryColor,
          statusBarColor: primaryColor,
          statusBarIconBrightness: Brightness.light
        ),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children:[
            Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left:25.0,top: 10,bottom: 15),
                    child: Text(
                      "Bonjour User,",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                     CarouselSlider.builder(
                  itemCount: 4,
                  itemBuilder: (context,index,changedIndex){
                    return categoryBox(
                  "Parfums",
                  "parfum.jpg",
                  );
                  },
                options: CarouselOptions(
                  initialPage: 0,
                  // enlargeCenterPage: true,
                  aspectRatio: 16/9,
                  onPageChanged: (index,reason){
                    setState(() {
                      changedIndex = index;
                    });
                  },
                  autoPlay: true,
                  // onScrolled: (index){
                  //   _controller.animateToPage(index!.toInt());
                  //   debugPrint("index"+index.toString());   
                  // }
                ),
                carouselController: _controller,
                ),
                Positioned(
                  bottom: 50,
                  left: 180,
                  right:150,
                  child: AnimatedSmoothIndicator(
                  count: 5,
                  activeIndex: changedIndex,
                  onDotClicked: animateToSlide,
                  effect: SlideEffect(
                    activeDotColor: primaryColor,
                    dotColor: Colors.white,
                    dotWidth: 10,
                    dotHeight: 8
                  ),
                ),
                ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,bottom: 18),
                  child: Text(
                    "Les box",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children:[
                boxDisplay(
                "Coffret feminin",
                "parfum.jpg",
                ),
                BuyButton(),
                ]
              ),
                
              Stack(
                children: [
                  boxDisplay(
                  "Coffret gourmand",
                  "vin.jpg",
                ),
                  BuyButton()
                ]
              ),
            ],
          ),
          
          Padding(
            padding: const EdgeInsets.only(bottom: 18,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Stack(
                   children:[
                    boxDisplay(
                    "Coffret feminin",
                    "parfum.jpg",
                    ),
                    BuyButton(),
                   ]
                 ),
                
                Stack(
                  children: [
                    boxDisplay(
                    "Coffret gourmand",
                    "vin.jpg",
                  ),
                   BuyButton()
                  ]
                ),
               
            ],
            ),
          ),
          // GridView.count(
          //   shrinkWrap: true,
          //   scrollDirection: Axis.vertical,
          //   crossAxisCount: 2,
          //   children: [
          //     boxDisplay(
          //       "Parfums",
          //       "parfum.jpg",
          //     ),
          //     boxDisplay(
          //       "Vins",
          //       "vin.jpg",
          //     ),
          //     boxDisplay(
          //       "Vins",
          //       "vin.jpg",
          //     ),
          //      boxDisplay(
          //       "Parfums",
          //       "parfum.jpg",
          //     ),
          //   ],
          // )
          ] 
        ),
      ),
    );
  }
 void animateToSlide(int index)=>_controller.animateToPage(index);
}

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      right: 12,
      child: ElevatedButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(primaryColor.withOpacity(0.25)),
            shadowColor:  MaterialStateProperty.all(primaryColor.withOpacity(0.75)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            backgroundColor: MaterialStateProperty.all<Color>(primaryColor)
        ),
        onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(
          builder: (context)=> BoxType(
          "Coffret gourmand",
          "Blabla",
          22500,
          "3 mois"
          )
          )
          );
        },           
        child: Text(
          "Acheter",
          style: TextStyle(
          fontSize: 10,
          color: Colors.white
          ),
        )
      ),
    );
  }
}