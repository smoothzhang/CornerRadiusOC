//
//  CustomTableViewCell.m
//  CornerRadiusOC
//
//  Created by Smooth on 16/3/9.
//  Copyright © 2016年 Smooth. All rights reserved.
//

#import "CustomTableViewCell.h"
#import "UIView+RoundCorner.h"

@interface CustomTableViewCell ()

@property (nonatomic) UIImageView * imageView1;
@property (nonatomic) UIImageView * imageView2;
@property (nonatomic) UIView * view;
@property (nonatomic) UILabel * label;

@end

@implementation CustomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(5, 10, 20, 21)];
        self.imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(55, 10, 20, 21)];
        self.view = [[UIView alloc] initWithFrame:CGRectMake(150, 10, 40, 21)];
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(250, 10, 80, 21)];
        
        [self.contentView addSubview:self.imageView1];
        [self.contentView addSubview:self.imageView2];
        
        self.view.backgroundColor = [UIColor brownColor];
        self.view.layer.cornerRadius = 5;
        [self.contentView addSubview:self.view];
        
        [self.label addCornerWithRadius:8];
//        self.label.layer.cornerRadius = 5;
        self.label.text = @"123";
        self.label.backgroundColor = [UIColor brownColor];
        [self.contentView addSubview:self.label];
    }
    return self;
}

- (void)setupContent:(NSString *)string {
    self.imageView1.image = [UIImage imageNamed:string];
    self.imageView2.image = [UIImage imageNamed:string];
    
    [self.imageView1 addCornerWithRadius:5];
    [self.imageView2 addCornerWithRadius:5];
}

@end
