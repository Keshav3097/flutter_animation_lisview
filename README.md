# Flutter Animation List

## Features

* Infinite scroll
* Custom child widgets

## Supported platforms

* Flutter Android
* Flutter iOS
* Flutter web
* Flutter desktop

## Installation

Add `flutter_animation_list: <later-version>` to your `pubspec.yaml` dependencies. And import it:

```dart
import 'package:flutter_animation_list/flutter_animation_list.dart';
```

# How to Use
```          
AnimationListView(
          duration: 10000,
          reBounceDepth: 10.0,
          children: data.map((item) {
            //return widget
          }).toList(),
        ),
```
## Screenshot


![prefetch](animation_list.gif)