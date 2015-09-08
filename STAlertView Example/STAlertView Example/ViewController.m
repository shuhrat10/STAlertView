//
//  ViewController.m
//  STAlertView Example
//
//  Created by Shukhrat Tursunov on 8/1/15.
//  Copyright (c) 2015 Shukhrat Tursunov. All rights reserved.
//

#import "ViewController.h"
#import "STAlertView.h"
#import "NSAttributedString+Application.h"

@implementation ViewController

- (IBAction)showButton:(UIButton *)sender {

  STAlertView * alert = [[STAlertView alloc] initOnView:self.view];
  alert.textString = [self demoText];
  [alert show];
}

- (NSAttributedString *)demoText {

  NSAttributedString * title = [NSAttributedString attributedText:@"What is Lorem Ipsum?\n" fontName:@"AvenirNext-Medium" andFontSize:14.f fontColor:[UIColor darkGrayColor] lineSpacing:0.5 alignBy:NSTextAlignmentLeft];
  NSAttributedString * bodyText = [NSAttributedString attributedText:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum." fontName:@"AvenirNext-Regular" andFontSize:12.f fontColor:[UIColor darkGrayColor] lineSpacing:0.15 alignBy:NSTextAlignmentLeft];
  NSAttributedString * strings = [NSAttributedString stringFromattributedStrings:@[title, bodyText]];
  
  return strings;
}

@end