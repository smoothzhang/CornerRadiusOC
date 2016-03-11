//
//  RCView.m
//  CornerRadiusOC
//
//  Created by 张太华 on 16/3/10.
//  Copyright © 2016年 张太华. All rights reserved.
//

#import "RCView.h"
#import "UIView+RoundCorner.h"

@interface RCView ()

@property (nonatomic) UIImageView * backgroundImageView;

@end

@implementation RCView

- (instancetype)initWithFrame:(CGRect)frame radius:(CGFloat)radius borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor {
    
    if (self = [super initWithFrame:frame]) {
        _radius = radius;
        _borderWidth = borderWidth;
        _cornerBackgroundColor = backgroundColor;
        _borderColor = borderColor;
        _backgroundImageView = nil;
        [self reloadBackgroundImageView];
    }
    return self;
}

- (void)setRadius:(CGFloat)radius {
    _radius = radius;
    [self reloadBackgroundImageView];
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;
    [self reloadBackgroundImageView];
}

- (void)setCornerBackgroundColor:(UIColor *)cornerBackgroundColor {
    _cornerBackgroundColor = cornerBackgroundColor;
    [self reloadBackgroundImageView];
}

- (void)setBorderColor:(UIColor *)borderColor {
    _borderColor = borderColor;
    [self reloadBackgroundImageView];
}

- (void)reloadBackgroundImageView {
    if (self.backgroundImageView) {
        [self.backgroundImageView removeFromSuperview];
        self.backgroundImageView = nil;
    }
    self.backgroundImageView = [self addCornerWithRadius:self.radius borderWidth:self.borderWidth backgroundColor:self.cornerBackgroundColor borderColor:self.borderColor];
}

@end


@implementation RCLabel

- (instancetype)initWithFrame:(CGRect)frame radius:(CGFloat)radius borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor {
    
    if (self = [super initWithFrame:frame radius:radius borderWidth:borderWidth backgroundColor:backgroundColor borderColor:borderColor]) {
        self.label = [[UILabel alloc] initWithFrame:self.bounds];
        [self addSubview:self.label];
    }
    return self;
}

@end


@implementation RCImageView

- (instancetype)initWithFrame:(CGRect)frame radius:(CGFloat)radius{
    if (self = [super initWithFrame:frame]) {
        _radius = radius;
    }
    return self;
}

- (void)setRadius:(CGFloat)radius {
    _radius = radius;
    [self reloadImage];
}

- (void)setRcImage:(UIImage *)rcImage {
    _rcImage = rcImage;
    [self reloadImage];
}

- (void)reloadImage {
    self.image = self.rcImage;
    [self addCornerWithRadius:self.radius];
}

@end
