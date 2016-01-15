//
//  PKBaseViewController.m
//  iOSPianKe
//
//  Created by 赵金鹏 on 16/1/14.
//  Copyright © 2016年 赵金鹏. All rights reserved.
//

#import "PKBaseViewController.h"
#import "Masonry.h"
#import "AFNetworking.h"
#import "RESideMenu.h"
#import "UIImageView+SDWedImage.h"
#import "UIView+Toast.h"
#import "JPRefreshView.h"
#import "UIBarButtonItem+Helper.h"
#import "ZJPBaseHttpTool.h"

#import "PKonesdenglu.h"
#import "PKLeftTableView.h"
#import "Leftbofangqi.h"
#import "PKLoginViewController.h"

@interface PKBaseViewController ()
@property(strong,nonatomic)PKonesdenglu *deongl;
@property(strong,nonatomic)PKLeftTableView * lefttabView;
@property(strong,nonatomic) Leftbofangqi    * leftbofangView;
@end


/*
 
 Product->Scheme->Edit Scheme->Run ???.app
 右边的选项中，选中Enable Zombie Objects
 */


@implementation PKBaseViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self AddBackItemBtn];
//    [self backView];
//    [self.view addSubview:self.deongl];
//    [self.view addSubview:self.lefttabView];
    
    
    [self.view addSubview:self. leftbofangView];
    [self.deongl.iconImageBtn addTarget:self action:@selector(PushLogin) forControlEvents:UIControlEventTouchUpInside];
    [self.deongl.userNameBtn addTarget:self action:@selector(PushLogin) forControlEvents:UIControlEventTouchUpInside];

    
    
    
    
    WS(weakSelf)
    [_deongl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.view.mas_top);
        make.height.equalTo(@165);
        make.left.equalTo(weakSelf.view.mas_left);
        make.right.equalTo(weakSelf.view.mas_right);
        
    }];
    
    [_lefttabView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.view.mas_top).offset(165);
        make.left.equalTo(weakSelf.view.mas_left);
        make.right.equalTo(weakSelf.view.mas_right);
        make.bottom.equalTo(weakSelf.view .mas_bottom).offset(-54);
        
    }];
    [_leftbofangView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@54);
        make.left.equalTo(weakSelf.view.mas_left);
        make.right.equalTo(weakSelf.view.mas_right);
        make.bottom.equalTo(weakSelf.view .mas_bottom);
        
    }];

    // Do any additional setup after loading the view.
}

-(void )PushLogin
{
    PKLoginViewController*loginviewController=[[PKLoginViewController alloc]init];
    [self presentViewController:loginviewController animated:YES completion:nil];
}


-(PKonesdenglu *)deongl
{
    if (!_deongl) {
        _deongl=[[PKonesdenglu alloc]init];
        
    }
    return _deongl;
}
-(PKLeftTableView*)lefttabView
{
    if (!_lefttabView) {
        _lefttabView=[[PKLeftTableView alloc]init];
        
    }
    return _lefttabView;
}
-(Leftbofangqi * )leftbofangView
{
    if (!_leftbofangView) {
        _leftbofangView=[[Leftbofangqi alloc]init];
        
    }
    return _leftbofangView;
}

//
- (void)AddBackItemBtn{
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc]initWithNormalIcon:@"bubble-classic-blue.jpg" highlightedIcon:@"" target:self action:@selector(backView)];
    self.navigationItem.leftBarButtonItem = backItem;
    
}

- (void)backView{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)GETHttpRequest:(NSString *)url
                   dic:(NSDictionary *)dic
          successBalck:(HttpSuccessBlock)RequestSuccess
            errorBlock:(HttpErrorBlock)RequestError{
    [ZJPBaseHttpTool getWithPath:url params:dic success:^(id JSON) {
        if (RequestSuccess) {
            RequestSuccess(JSON);
        }
    } failure:^(NSError *error) {
        if (RequestError) {
            RequestError(error);
        }
    }];
}

- (void)POSTHttpRequest:(NSString *)url
                    dic:(NSDictionary *)dic
           successBalck:(HttpSuccessBlock)RequestSuccess
             errorBlock:(HttpErrorBlock)RequestError
{
    [ZJPBaseHttpTool postWithPath:url params:dic success:^(id JSON) {
        if (RequestSuccess) {
            RequestSuccess(JSON);
        }
    } failure:^(NSError *error) {
        if (RequestError) {
            RequestError(error);
        }
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end





