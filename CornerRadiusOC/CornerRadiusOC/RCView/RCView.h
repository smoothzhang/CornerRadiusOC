//
//  RCView.h
//  CornerRadiusOC
//
//  Created by 张太华 on 16/3/10.
//  Copyright © 2016年 张太华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RCView : UIView

@property (nonatomic, assign) CGFloat radius;//圆角半径
@property (nonatomic, assign) CGFloat borderWidth;//边线宽度
@property (nonatomic) UIColor * cornerBackgroundColor;//控制圆角背景颜色，若将backgroundColor改成非透明则无圆角效果
@property (nonatomic) UIColor * borderColor;//边线颜色

/**
 *  创建圆角View
 *
 *  @param frame           frame
 *  @param radius          圆角半径
 *  @param borderWidth     边线宽度
 *  @param backgroundColor 背景颜色
 *  @param borderColor     边线颜色
 *
 *  @return 圆角View
 */
- (instancetype)initWithFrame:(CGRect)frame radius:(CGFloat)radius borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor;

@end


@interface RCLabel : RCView

@property (nonatomic) UILabel * label;//将backgroundColor改成非透明则无圆角效果

@end


@interface RCImageView : UIImageView

@property (nonatomic, assign) CGFloat radius;//圆角半径
@property (nonatomic) UIImage * rcImage;//将图片传入这个属性有圆角效果，传入image无圆角效果

/**
 *  创建圆角ImageView
 *
 *  @param frame  frame
 *  @param radius 圆角半径
 *
 *  @return 圆角ImageView
 */
- (instancetype)initWithFrame:(CGRect)frame radius:(CGFloat)radius;

@end
