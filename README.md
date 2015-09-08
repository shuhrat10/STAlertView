# STAlertView

**STAlertView** is the new **wonderful** alert kind of View. It was also designed to cover user’s needs during customization. Created with **delightful combination**, **STAlertView** improves your user experience.

## Installation
There are two ways to add the **JTAlertView** library to your project. Add it as a regular library or install it through CocoaPods.

`pod 'STAlertView'`

You may also quick try the example project with

`pod try STAlertView'

**Library requires target iOS 7.0 and above**

## Usage and Customization

- Use `initOnView:` **to initialize**.
- Then you can use many properties **to customize** the **STAlertView**. 
- Then `textString` property takes NSAttributedString.
- And finally use `show` or `hide` methods **to handle displaying**.

### Simple One-button example:

```objective-c
STAlertView * alert = [[STAlertView alloc] initOnView:self.view];
alert.textString = [self demoText]; // This method return string kind of class NSAttributedString.
[alert show];
```

### Properties:

- `backColor` background color behind alert window.
- `textString` attributed text for alert window.
- `alertViewSize` custom Rect for alert window.
- `alertViewCornerRadius` corner radius for alert window.
- `padding` padding between text and alert frame.

## Changelog

### v1.0.0
- [**NEW**] Initial commit

## Author
This library is open-sourced by [Shukhrat Tursunov](http://stursunov.com).

## License
The MIT License (MIT)
Copyright © 2015 Shukhrat Tursunov