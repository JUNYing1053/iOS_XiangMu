//
//  PKLeftTableView.m
//  iOSPianKe
//
//  Created by June on 16/1/14.
//  Copyright © 2016年 赵金鹏. All rights reserved.
//

#import "PKLeftTableView.h"
#import "LeftTableViewCell.h"
@implementation PKLeftTableView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self. backgroundColor=[UIColor blackColor];
//        [self addSubview:self];
        self.dataSource= self;

        self.delegate= self;
        self.bounces=NO;
        

    }
    return self;
}


//hang
-(NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
    
}
//gao
//设置cell每行间隔的高度
-(CGFloat )tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
return 40;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
static NSString *Cell=@"cell";
   LeftTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:Cell];
    if (!cell) {
        cell=[[LeftTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Cell];
        cell.imageView.image=[UIImage imageNamed:@"收藏" ];
        cell.labl.text=@"sssdsf";
        
//        cell.textLabel.text=@"sss";
        
    }
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    tableView.separatorColor= [UIColor blueColor];
    

    
    
    NSLog(@"s");
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
