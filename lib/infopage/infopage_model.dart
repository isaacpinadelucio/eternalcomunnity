import '/flutter_flow/flutter_flow_util.dart';
import 'infopage_widget.dart' show InfopageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class InfopageModel extends FlutterFlowModel<InfopageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 1;

  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 1;

  // State field(s) for PageView widget.
  PageController? pageViewController3;

  int get pageViewCurrentIndex3 => pageViewController3 != null &&
          pageViewController3!.hasClients &&
          pageViewController3!.page != null
      ? pageViewController3!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController4;

  int get pageViewCurrentIndex4 => pageViewController4 != null &&
          pageViewController4!.hasClients &&
          pageViewController4!.page != null
      ? pageViewController4!.page!.round()
      : 0;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController3;
  int carouselCurrentIndex3 = 1;

  // State field(s) for PageView widget.
  PageController? pageViewController5;

  int get pageViewCurrentIndex5 => pageViewController5 != null &&
          pageViewController5!.hasClients &&
          pageViewController5!.page != null
      ? pageViewController5!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController6;

  int get pageViewCurrentIndex6 => pageViewController6 != null &&
          pageViewController6!.hasClients &&
          pageViewController6!.page != null
      ? pageViewController6!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
