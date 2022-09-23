# [MToast](https://pub.dev/packages/m_toast)

[![pub package](https://img.shields.io/pub/likes/m_toast)](https://pub.dev/packages/m-toast)
[![pub package](https://img.shields.io/pub/points/m_toast?style=plastic)](https://pub.dev/packages/m-toast)

Toast Library for Flutter


# Supported Platforms
>
> - Android
> - IOS
> - Android
> - Linux
> - MacOS
> - Windows

## How to Use

```yaml
# add this line to your dependencies
m_toast: ^0.1.7
```

```dart
import 'package:m_toast/m_toast.dart';
```

### To call the toast

```dart
ShowMToast toast = ShowMToast();

toast.successToast(context, message: "Hello");
toast.errorToast(context, message: "Hello");
```

## Preview Images

<img src="https://raw.githubusercontent.com/abdulmanafpfassal/image/master/Screenshot_20220915_140721.png" width="320px" />
<img src="https://raw.githubusercontent.com/abdulmanafpfassal/image/master/Screenshot_20220915_140744.png" width="320px" />

## Toast with custom images

<img src="https://raw.githubusercontent.com/abdulmanafpfassal/image/master/Screenshot_20220917_202519.png" width="320px" />
<img src="https://raw.githubusercontent.com/abdulmanafpfassal/image/master/Screenshot_20220917_202303.png" />

MToast have default style, and you also can custom style or other behavior.

|         name         |          type           |   need   |                             desc                              |
| :------------------: | :---------------------: | :------: | :-----------------------------------------------------------: |
|       message        |        String           | required |                     Toast message                             |
|      textColor       |        Color            | optional |              Color of text(toast message)                     |
|   backgroundColor    |          Color          | optional |                        backgroundColor                         |
|       alignment      |      ToastPosition      | required |                                                               |
|      iconColor       |          Color          | optional | If Color is not given the icon will adapt the default color   |
|        icon          |        IconData         | optional |                   Icon in Toast                               |
|        image         |      AssetImage         | optional |                   Image instead of Icon                       |
|       duration       |         int             | optional |Duration should be given in milliseconds(for eg duration: 1500)|

## If you need any features suggest

...

