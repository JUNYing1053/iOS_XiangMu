//
//  LeftTableViewCell.m
//  iOSPianKe
//
//  Created by June on 16/1/15.
//  Copyright © 2016年 赵金鹏. All rights reserved.
//

#import "LeftTableViewCell.h"

@implementation LeftTableViewCell


-(UIImageView *)imageview
{
    if (!_imageview) {
        _imageview=[[UIImageView alloc]init];
    }
    return _imageview;
}


-(UILabel *)labl
{
    if (!_labl) {
        _labl=[[UILabel alloc]init];
        
    }
    return _labl;
    
}

- (void)awakeFromNib {
    // Initialization code
    
    self.backgroundColor=[UIColor blackColor];
    
    [self addSubview:self.imageView];
    [self addSubview:self.labl];
    
    
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
