//
//  STAlertView.m
//  AlertView
//
//  Created by Shukhrat Tursunov on 8/1/15.
//  Copyright (c) 2015 Shukhrat Tursunov. All rights reserved.
//

#import "STAlertView.h"
#import <QuartzCore/QuartzCore.h>

//CGFloat    const STAlertViewContentPadding  = 5.f;

@interface STAlertView()
@property (weak, nonatomic)   UIView     * onView;
@property (strong, nonatomic) UIView     * backView;
@property (strong, nonatomic) UIView     * alertView;
@property (strong, nonatomic) UITextView * textView;
@property (assign, nonatomic) BOOL         isShown;
@end

@implementation STAlertView

@synthesize textView, backView, alertView, isShown;

- (void)defaultValues {
  self.backColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.4];
  self.alertViewSize = CGSizeMake(300, 200);
  self.alertViewCornerRadius = 5.f;
  self.padding = 6.f;
  [self updateProperties];
}

- (void)updateProperties {

}

#pragma mark - Properties

- (void)setBackColor:(UIColor *)backColor {
  _backColor = backColor;
  [self updateProperties];
}

#pragma mark - Lifecycle

- (instancetype)initOnView:(UIView *)view
{
  self = [super init];
  if (self) {
    self.onView = view;
    self.frame = CGRectMake(0, 0, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame));
    [self defaultValues];
  }
  return self;
}

- (void)dealloc {

}

- (void)show {
  if (self.isShown) {
    return;
  }
  self.isShown = YES;
  [self.onView addSubview:self];
  
  [self initBackground];
  [self initAlert];
}

- (void)hide {
  [self hideAlert];
}

#pragma mark - Background 

- (void)initBackground {
  backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
  backView.backgroundColor = self.backColor;
  [self addSubview:backView];
  
  [self initGestureReconizer];
}

- (void)hideBackground {
  [UIView animateWithDuration:0.25
                        delay:0
                      options:UIViewAnimationOptionCurveEaseInOut
                   animations:^{
                     self.alpha = 0.f;
                   }
                   completion:^(BOOL finished) {
                     [self removeFromSuperview];
                   }];
}

#pragma mark - Gesture Recognizer

- (void)initGestureReconizer {
  UITapGestureRecognizer * gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hide)];
  [backView addGestureRecognizer:gestureRecognizer];
}

#pragma mark - Alert

- (void)initAlert {
  
  alertView = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetMidX(self.onView.frame) - self.alertViewSize.width / 2,
                                                       CGRectGetMidY(self.onView.frame) - self.alertViewSize.height / 2,
                                                       self.alertViewSize.width, self.alertViewSize.height)];
  alertView.backgroundColor = [UIColor whiteColor];
  alertView.layer.cornerRadius = self.alertViewCornerRadius;
  
  textView = [[UITextView alloc] initWithFrame:CGRectMake(self.padding, self.padding * 2,
                                                          CGRectGetWidth(alertView.frame) - self.padding * 2,
                                                          CGRectGetHeight(alertView.frame) - self.padding * 4)];
  textView.attributedText = self.textString;
  textView.textContainerInset = UIEdgeInsetsZero;
  textView.selectable = NO;
  textView.editable = NO;
  [alertView addSubview:textView];
  
  [self addSubview:alertView];
  
  CGRect rect = self.alertView.frame;
  CGRect originalRect = rect;
  rect.origin.y = self.bounds.size.height;
  self.alertView.frame = rect;
  [UIView animateWithDuration:0.3
                   animations:^{
                     self.alertView.frame = originalRect;
                   }
                   completion:^(BOOL finished) {

                   }];
}

- (void)hideAlert {
  CGRect rect = self.alertView.frame;
  rect.origin.y = self.bounds.size.height;
  [UIView animateWithDuration:0.25
                        delay:0
                      options:UIViewAnimationOptionCurveEaseIn
                   animations:^{
                     self.alertView.frame = rect;
                   }
                   completion:^(BOOL finished) {
                     [self hideBackground];
                   }];
}

@end