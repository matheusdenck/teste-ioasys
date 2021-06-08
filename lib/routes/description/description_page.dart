import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:teste_ioasys/repositories/entities/enterprise_model.dart';
import 'package:teste_ioasys/routes/description/widgets/description_app_bar_widget.dart';
import 'package:teste_ioasys/routes/home/widgets/enterprise_widget.dart';
import 'package:teste_ioasys/routes/theme/app_theme.dart';

class DescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EnterpriseModel model =
        ModalRoute.of(context)!.settings.arguments as EnterpriseModel;
    return Scaffold(
      appBar: DescriptionAppBarWidget(
        label: model.enterprise_name!,
      ),
      body: Column(
        children: [
          EnterpriseWidget(
            photoUrl: model.photo!,
            name: model.enterprise_name!,
          ),
          Flexible(
            fit: FlexFit.loose,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Text(
                model.description!,
                style: AppTheme.textStyle.descriptionText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
