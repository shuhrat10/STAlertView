//
//  STAlertView.h
//  AlertView
//
//  Created by Shukhrat Tursunov on 8/1/15.
//  Copyright (c) 2015 Shukhrat Tursunov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STAlertView : UIView

@property (strong, nonatomic) UIColor            * backColor;
@property (strong, nonatomic) NSAttributedString * textString;
@property (assign, nonatomic) CGSize               alertViewSize;
@property (assign, nonatomic) CGFloat              alertViewCornerRadius;
@property (assign, nonatomic) CGFloat              padding;

+ (instancetype)new __attribute__((unavailable("Use initOnView instead.")));
- (instancetype)init __attribute__((unavailable("Use initOnView instead.")));
- (instancetype)initWithFrame:(CGRect)frame __attribute__((unavailable("Use initOnView instead.")));
- (instancetype)initWithCoder:(NSCoder *)aDecoder __attribute__((unavailable("Use initOnView instead.")));
- (instancetype)initOnView:(UIView *)view;

- (void)show;
- (void)hide;

@end