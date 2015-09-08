//
//  NSAttributedString+Application.m
//  Lyric
//
//  Created by Shukhrat Tursunov on 2/20/15.
//  Copyright (c) 2015 Honeywell. All rights reserved.
//

#import "NSAttributedString+Application.h"

@implementation NSAttributedString (Application)

+ (NSAttributedString *)attributedText:(NSString *)text fontName:(NSString *)fontName andFontSize:(CGFloat)fontSize fontColor:(UIColor *)fontColor lineSpacing:(CGFloat)lineSpacing alignBy:(NSTextAlignment)alignBy {
    
    UIFont *font = [UIFont fontWithName:fontName size:fontSize];
    
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineSpacing = lineSpacing * font.lineHeight;
    paragraph.alignment = alignBy;
  
    NSDictionary *attributes = @{NSFontAttributeName:font,
                                 NSForegroundColorAttributeName:fontColor,
                                 NSBackgroundColorAttributeName:[UIColor clearColor],
                                 NSParagraphStyleAttributeName:paragraph,
                                 };
    
    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithString:text attributes:attributes];
    
    return attributedText;
}

+ (NSAttributedString *)stringFromattributedStrings:(NSArray *)strings {
  
  NSMutableAttributedString * string = [[NSMutableAttributedString alloc] init];
  
  for (NSAttributedString * item in strings) {
    [string appendAttributedString:item];
  }
 
  return string;
}

@end
