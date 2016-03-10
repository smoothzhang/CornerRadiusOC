//
//  CustomTableViewCell.h
//  CornerRadiusOC
//
//  Created by Smooth on 16/3/9.
//  Copyright © 2016年 Smooth. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RCView.h"

@interface CustomTableViewCell : UITableViewCell

@property (nonatomic) RCImageView * rcImageView;
@property (nonatomic) RCView * rcView;
@property (nonatomic) UIView * view;
@property (nonatomic) RCLabel * rcLabel;

@end
