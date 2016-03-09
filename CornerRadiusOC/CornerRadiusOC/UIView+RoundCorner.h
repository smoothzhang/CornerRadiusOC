//
//  UIView+RoundCorner.h
//  CornerRadiusOC
//
//  Created by Smooth on 16/3/9.
//  Copyright © 2016年 Smooth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (RoundCorner)

- (void)addCornerWithRadius:(CGFloat)radius;
- (void)addCornerWithRadius:(CGFloat)radius borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor;

@end
