//
//  NSAttributedString+Application.h
//  Lyric
//
//  Created by Shukhrat Tursunov on 2/20/15.
//  Copyright (c) 2015 Honeywell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (Application)

+ (NSAttributedString *)attributedText:(NSString *)text fontName:(NSString *)fontName andFontSize:(CGFloat)fontSize fontColor:(UIColor *)fontColor lineSpacing:(CGFloat)lineSpacing alignBy:(NSTextAlignment)alignBy;
+ (NSAttributedString *)stringFromattributedStrings:(NSArray *)strings;

@end