// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved. 
// Use of this source code is governed by the MIT license that can be found 
// in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_architecture_samples/flutter_architecture_samples.dart';
import 'package:fire_redux_sample/models/models.dart';

class ExtraActionsButton extends StatelessWidget {
  final PopupMenuItemSelected<ExtraAction> onSelected;
  final bool allComplete;

  ExtraActionsButton({
    this.onSelected,
    this.allComplete = false,
    Key key,
  })
      : super(key: ArchSampleKeys.extraActionsButton);

  @override
  Widget build(BuildContext context) {
    return new PopupMenuButton<ExtraAction>(
      onSelected: onSelected,
      itemBuilder: (BuildContext context) => <PopupMenuItem<ExtraAction>>[
            new PopupMenuItem<ExtraAction>(
              key: ArchSampleKeys.toggleAll,
              value: ExtraAction.toggleAllComplete,
              child: new Text(allComplete
                  ? ArchSampleLocalizations.of(context).markAllIncomplete
                  : ArchSampleLocalizations.of(context).markAllComplete),
            ),
            new PopupMenuItem<ExtraAction>(
              key: ArchSampleKeys.clearCompleted,
              value: ExtraAction.clearCompleted,
              child:
                  new Text(ArchSampleLocalizations.of(context).clearCompleted),
            ),
          ],
    );
  }
}
