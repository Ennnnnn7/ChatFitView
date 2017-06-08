//
//  NSString+FitSize.h
//  lashenTest
//
//  Created by 刘杰 on 2017/6/8.
//  Copyright © 2017年 LJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (FitSize)


/**
 根据给定宽度计算文字高度

 @param str 文字
 @param font 字体
 @param size 给定最大宽度
 @return size
 */
+ (CGSize)sizeWithString:(NSString *)str textFont:(UIFont *)font maxSize:(CGSize)size;

@end
