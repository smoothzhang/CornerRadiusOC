//
//  UIView+RoundCorner.h
//  CornerRadiusOC
//
//  Created by Smooth on 16/3/9.
//  Copyright © 2016年 Smooth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (RoundCorner)

/**
 *  将背景颜色变为圆角
 *
 *  @param radius 圆角半径
 */
- (void)addCornerWithRadius:(CGFloat)radius;
/**
 *  添加圆角背景
 *
 *  @param radius          圆角半径
 *  @param borderWidth     边线宽度
 *  @param backgroundColor 背景颜色
 *  @param borderColor     边线颜色
 */
- (UIImageView *)addCornerWithRadius:(CGFloat)radius borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor;

@end
