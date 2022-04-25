import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  List<PageMod> pages= <PageMod>[];


void _addPages(){
  pages.add(PageMod('welcome!', '2 alrfsoeed adafalnjar devalwber the gmadanwgr alrfsoeed adaf',
    Icons.calendar_today,  'assest/images/pdi.jpg',));
  pages.add(PageMod('aran!', ' 2 alrfsoeed adafalnjar devalwber the gmadanwgr alrfsoeed adaf',
    Icons.favorite,  'assest/images/we.jpg',));
  pages.add(PageMod('blac!', ' 3 alrfsoeed adafalnjar devalwber the gmadanwgr alrfsoeed adaf',
      Icons.map,  'assest/images/ww.jpg',));
  pages.add(PageMod('bazarr!', '4 alrfsoeed adafalnjar devalwber the gmadanwgr alrfsoeed adaf',
    Icons.male_sharp,   'assest/images/bg.png',));
}



  @override
  Widget build(BuildContext context) {
  _addPages();

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage(pages[index].images,),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.translate(
                        child: Icon(
                          pages[index].iconData,
                          size: 200,
                          color: Colors.white,
                        ),
                        offset: Offset(0, -100),
                      ),
                      Text(
                        pages[index].titles,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48, right: 48),
                        child: Text(
                          pages[index].descrtion,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.green,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
            itemCount: 4,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24.0, left: 16, right: 16),
              child: SizedBox(
                width: double.maxFinite,
                height: 50,

                // ignore: deprecated_member_use
                child: RaisedButton(

                  color: Colors.red,
                  child: Text(
                    ' GET STARTED',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      letterSpacing:2,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class PageMod{
  String _titles;
  String _descrtion;
  IconData _iconData;
  String _images;

  PageMod(this._titles, this._descrtion, this._iconData, this._images);

  String get images => _images;

  IconData get iconData => _iconData;

  String get descrtion => _descrtion;

  String get titles => _titles;
}
