import 'package:bonbagage/bloc/bags_cubit.dart';
import 'package:bonbagage/widget/dialog_edit_bags_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BagsCardWidget extends StatelessWidget {
  const BagsCardWidget({
    super.key,
    required this.id,
    required this.title,
  });

  final int id;
  final String title;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onLongPress: () {
        final cubit = context.read<BagsCubit>();
        showDialogEditBags(context, title, cubit, id);
      },
      child: Card(
        color: Color(0xFFf2f2f2),
        child: SizedBox(
          height: height * 0.1,
          child: Row(
            children: [
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
