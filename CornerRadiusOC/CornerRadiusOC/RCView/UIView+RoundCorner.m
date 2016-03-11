//
//  UIView+RoundCorner.m
//  CornerRadiusOC
//
//  Created by Smooth on 16/3/9.
//  Copyright © 2016年 Smooth. All rights reserved.
//

#import "UIView+RoundCorner.h"
#import "UIImage+ImageRoundedCorner.h"

double CeilByUnit(double num, double *unit) {
    return num = modf(num, unit) + *unit;
}

double FloorByUnit(double num, double *unit) {
    return num - modf(num, unit);
}

double RoundByUnit(double num, double *unit) {
    double remain = modf(num, unit);
    if (remain > *unit / 2.0) {
        return CeilByUnit(num, unit);
    } else {
        return FloorByUnit(num, unit);
    }
}

double Pixel(double num) {
    double unit;
    switch ((int)[UIScreen mainScreen].scale) {
        case 1:
            unit = 1.0 / 1.0;
            break;
        case 2:
            unit = 1.0 / 2.0;
            break;
        case 3:
            unit = 1.0 / 3.0;
            break;
        default:
            unit = 0.0;
            break;
    }
    return RoundByUnit(num, &unit);
}

@implementation UIView (RoundCorner)

- (void)addCornerWithRadius:(CGFloat)radius {
    
    [self addCornerWithRadius:radius borderWidth:0 backgroundColor:self.backgroundColor borderColor:[UIColor clearColor]];
}

- (UIImageView *)addCornerWithRadius:(CGFloat)radius borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor {
    
    if (!backgroundColor) {
        backgroundColor = [UIColor clearColor];
    }
    if (!borderColor) {
        borderColor = [UIColor clearColor];
    }
    
    UIImageView * imageView = [[UIImageView alloc] initWithImage:[self drawRectWithRoundedCorner:radius borderWidth:borderWidth backgroundColor:backgroundColor borderColor:borderColor]];
    [self insertSubview:imageView atIndex:0];
    
    self.backgroundColor = [UIColor clearColor];
    
    return imageView;
}

- (UIImage *)drawRectWithRoundedCorner:(CGFloat)radius borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor {
    
    CGSize sizeToFit = CGSizeMake(Pixel(self.bounds.size.width), self.bounds.size.height);
    CGFloat halfBorderWidth = borderWidth / 2.0;
    
    UIGraphicsBeginImageContextWithOptions(sizeToFit, false, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, borderWidth);
    CGContextSetStrokeColorWithColor(context, borderColor.CGColor);
    CGContextSetFillColorWithColor(context, backgroundColor.CGColor);
    
    CGFloat width = sizeToFit.width;
    CGFloat height = sizeToFit.height;
    
    CGContextMoveToPoint(context, width - halfBorderWidth, radius + halfBorderWidth);  // 开始坐标右边开始
    CGContextAddArcToPoint(context, width - halfBorderWidth, height - halfBorderWidth, width - radius - halfBorderWidth, height - halfBorderWidth, radius);  // 右下角角度
    CGContextAddArcToPoint(context, halfBorderWidth, height - halfBorderWidth, halfBorderWidth, height - radius - halfBorderWidth, radius); // 左下角角度
    CGContextAddArcToPoint(context, halfBorderWidth, halfBorderWidth, width - halfBorderWidth, halfBorderWidth, radius); // 左上角
    CGContextAddArcToPoint(context, width - halfBorderWidth, halfBorderWidth, width - halfBorderWidth, radius + halfBorderWidth, radius); // 右上角
    
    CGContextDrawPath(UIGraphicsGetCurrentContext(), kCGPathFillStroke);
    UIImage * output = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return output;
}

@end


@implementation UIImageView (RoundCorner)

- (void)addCornerWithRadius:(CGFloat)radius {
    
    if (self.image) {
        self.image = [self.image imageAddCornerWithRadius:radius andSize:self.bounds.size];
    }
}

@end
