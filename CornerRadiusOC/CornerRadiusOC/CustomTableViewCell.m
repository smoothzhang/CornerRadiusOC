//
//  CustomTableViewCell.m
//  CornerRadiusOC
//
//  Created by Smooth on 16/3/9.
//  Copyright © 2016年 Smooth. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.rcImageView = [[RCImageView alloc] initWithFrame:CGRectMake(5, 10, 20, 21) radius:5];
        [self.contentView addSubview:self.rcImageView];
        
        self.rcView = [[RCView alloc] initWithFrame:CGRectMake(55, 10, 40, 21) radius:5 borderWidth:0 backgroundColor:[UIColor brownColor] borderColor:nil];
        [self.contentView addSubview:self.rcView];
        
        self.view = [[UIView alloc] initWithFrame:CGRectMake(150, 10, 40, 21)];
        self.view.backgroundColor = [UIColor brownColor];
        self.view.layer.cornerRadius = 5;
        [self.contentView addSubview:self.view];
        
        self.rcLabel = [[RCLabel alloc] initWithFrame:CGRectMake(250, 10, 80, 21) radius:8 borderWidth:1 backgroundColor:[UIColor brownColor] borderColor:[UIColor blackColor]];
        self.rcLabel.label.text = @"123";
        [self.contentView addSubview:self.rcLabel];
    }
    return self;
}

@end
