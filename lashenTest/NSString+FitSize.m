//
//  NSString+FitSize.m
//  lashenTest
//
//  Created by 刘杰 on 2017/6/8.
//  Copyright © 2017年 LJ. All rights reserved.
//

#import "NSString+FitSize.h"

@implementation NSString (FitSize)

+ (CGSize)sizeWithString:(NSString *)str textFont:(UIFont *)font maxSize:(CGSize)size {
    NSDictionary *textDic = @{NSFontAttributeName : font};
    CGSize tempSize = [str boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:textDic context:nil].size;
    return tempSize;
}

@end
