//
//  Leftbofangqi.m
//  iOSPianKe
//
//  Created by June on 16/1/15.
//  Copyright © 2016年 赵金鹏. All rights reserved.
//

#import "Leftbofangqi.h"
#import "Masonry.h"

@implementation Leftbofangqi


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.backbtn];
        [self addSubview:self.imageview];
 
        [self addSubview:self.name];
        [self addSubview:self.frame];
        [self addSubview:self.starbtn];
        WS(sw)
        [_backbtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(sw.mas_top);
            make.bottom.mas_equalTo(sw.mas_bottom);
            make.left.mas_equalTo(sw.mas_left);
            make.right.mas_equalTo(sw.mas_right).offset(-50);
            
            
        }];
        [_imageview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(sw.mas_top).offset(10);
            make.bottom.mas_equalTo(sw.mas_bottom).offset(10);
            make.left.mas_equalTo(sw.mas_left);
            make.width.mas_equalTo(@40);
            
            
        }];
        [_name mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(sw.mas_top).offset(10);
            make.right.mas_equalTo(sw.mas_right).offset(-50);
            make.left.mas_equalTo(sw.mas_left).offset(40);
            make.height.mas_equalTo(@20);
            
            
        }];
        
        [_frame mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_name.mas_bottom).offset(10);
            make.right.mas_equalTo(sw.mas_right).offset(-50);
            make.left.mas_equalTo(sw.mas_left).offset(40);
            make.height.mas_equalTo(@20);
            
            
        }];
        
        [_starbtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(sw.mas_top).offset(10);
            make.left.mas_equalTo(sw.mas_left).offset(10);
            make.bottom.mas_equalTo(sw.mas_bottom).offset(10);
            make.width.mas_equalTo(40);
            
            
        }];
    }
    return self;
}


-(UIImageView *)imageview
{
    if (!_imageview) {
        _imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"音乐"]];
        
    }
    return _imageview;
    

}
-(UILabel *)name
{
    if (!_name) {
        _name=[[UILabel alloc]init];
        _name.font=[UIFont systemFontOfSize:10.0];
        _name.textColor=[UIColor whiteColor];
        _name.textAlignment=NSTextAlignmentLeft;
        
        
    }
    return _name;
    
}

-(UILabel *)frame
{
    if (!_frame) {
        _frame=[[UILabel alloc]init];
        _frame.font=[UIFont systemFontOfSize:10.0];
        _frame.textColor=[UIColor whiteColor];
        _frame.textAlignment=NSTextAlignmentLeft;
        

        
        
    }
    return _frame;
    
}
-(UIButton *)starbtn
{
    if (!_starbtn) {
        _starbtn=[UIButton buttonWithType:UIButtonTypeCustom];
        _starbtn.selected=NO;
        [_starbtn setBackgroundImage:[UIImage imageNamed:@"播放"] forState:UIControlStateNormal];
        [_starbtn setBackgroundImage:[UIImage imageNamed:@"暂停"] forState:UIControlStateHighlighted];
        
    }
    return _starbtn;
    
}
-(UIButton *)backbtn
{
    if (!_backbtn) {
        _backbtn=[UIButton buttonWithType:UIButtonTypeCustom];
        [_backbtn setBackgroundColor:RGB(28, 28, 28)];
        
        
    }
    return _backbtn;
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
