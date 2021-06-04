import 'package:flutter/cupertino.dart';
import 'package:teste_ioasys/modules/theme/app_theme.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 164),
      child: SizedBox(
        height: 48,
        child: CupertinoSearchTextField(
          controller: _textController,
          placeholder: 'Pesquise por Empresa',
          decoration: BoxDecoration(
            color: AppTheme.colors.textFieldColor,
          ),
        ),
      ),
    );
  }
}
