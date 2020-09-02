import 'dart:convert';

import 'package:estock/blocs/load/load_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

getData(BuildContext context) async {
  /* return Future.delayed(Duration(seconds: 2), () {
    print("Check");
    BlocProvider.of<LoadBloc>(context).add(LoadSuccessEvent());
  }); */
  var jsonString = await rootBundle.loadString("json/stock_market_data.json");
  var jsonResponse = json.decode(jsonString);
  BlocProvider.of<LoadBloc>(context).add(LoadSuccessEvent(jsonResponse));
}
