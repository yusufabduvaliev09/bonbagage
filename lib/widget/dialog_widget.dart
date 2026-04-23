import 'package:bonbagage/bloc/journeys_cubit.dart';
import 'package:flutter/material.dart';

void dialogCubit(BuildContext context, JourneysCubit cubit) {
  showDialog(
    context: context,
    builder: (context) {
      return journeysDialog(cubit: cubit);
    },
  );
}

class journeysDialog extends StatefulWidget {
  const journeysDialog({super.key, required this.cubit});
  final JourneysCubit cubit;

  @override
  State<journeysDialog> createState() => _dialogWidgetState();
}

class _dialogWidgetState extends State<journeysDialog> {
  BorderRadius border = BorderRadius.all(Radius.circular(12));
  BorderSide borderSide = BorderSide(width: 3, color: Colors.black26);

  final TextEditingController _controllerCity = TextEditingController();

  final TextEditingController _controllerEndDate = TextEditingController();

  final TextEditingController _controllerStartDate = TextEditingController();

  @override
  void dispose() {
    _controllerCity.dispose();
    _controllerEndDate.dispose();
    _controllerStartDate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final focusedBorderTextField = OutlineInputBorder(
      borderRadius: border,
      borderSide: borderSide,
    );

    final enableBorderTextField = OutlineInputBorder(
      borderRadius: border,
      borderSide: borderSide,
    );

    final elevatedButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.black12,
      shape: RoundedRectangleBorder(borderRadius: border),
    );

    return AlertDialog(
      actions: <Widget>[
        SizedBox(height: 10),
        TextField(
          controller: _controllerCity,
          cursorColor: Colors.black26,
          decoration: InputDecoration(
            hintText: "City",
            focusedBorder: focusedBorderTextField,
            enabledBorder: enableBorderTextField
          ),
        ),
        SizedBox(height: 10),
        TextField(
          controller: _controllerStartDate,
          cursorColor: Colors.black26,
          decoration: InputDecoration(
            hintText: "start date",
            focusedBorder: focusedBorderTextField,
            enabledBorder: enableBorderTextField
          )
        ),
        SizedBox(height: 10),
        TextField(
          controller: _controllerEndDate,
          cursorColor: Colors.black26,
          decoration: InputDecoration(
            hintText: "end date",
            focusedBorder: focusedBorderTextField,
            enabledBorder: enableBorderTextField
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: elevatedButtonStyle,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Отмена",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              onPressed: () {
                widget.cubit.addJourneys(
                  _controllerCity.text,
                  _controllerStartDate.text,
                  _controllerEndDate.text,
                );
                _controllerCity.clear();
                _controllerStartDate.clear();
                _controllerEndDate.clear();
                Navigator.pop(context);
              },
              child: Text(
                "Добавить",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
