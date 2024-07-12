part of arre_router;
//
// class ArreRouteInformationProvider extends RouteInformationProvider
//     with ChangeNotifier {
//   static ArreRouteInformationProvider instance =
//       ArreRouteInformationProvider._();
//
//   ArreRouteInformationProvider._();
//
//   RouteInformation _value = RouteInformation(location: "/");
//
//   void setRouteInformation(RouteInformation information) {
//     _value = information;
//     notifyListeners();
//   }
//
//   @override
//   RouteInformation get value => _value;
//
//   @override
//   void routerReportsNewRouteInformation(RouteInformation routeInformation,
//       {RouteInformationReportingType type =
//           RouteInformationReportingType.none}) {
//     print("routerReportsNewRouteInformation ${routeInformation.location}");
//     setRouteInformation(routeInformation);
//     super.routerReportsNewRouteInformation(routeInformation, type: type);
//   }
// }
