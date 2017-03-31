//
//  ViewController.m
//  ZYAlterView
//
//  Created by 赵岩 on 2017/3/31.
//  Copyright © 2017年 赵岩. All rights reserved.
//

#import "ViewController.h"
#import "ZYAlterView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIButton *Btn = [UIButton buttonWithType:UIButtonTypeSystem];
    Btn.frame = CGRectMake(100, 50, 200, 100);
    [Btn setTitle:@"弹出提示框" forState:UIControlStateNormal];
    [Btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    Btn.titleLabel.font = [UIFont systemFontOfSize:20];
    Btn.backgroundColor = [UIColor cyanColor];
    [Btn addTarget:self action:@selector(showAlterView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Btn];
    
}

- (void)showAlterView
{
    ZYAlterView *AlertView = [[ZYAlterView alloc] initWithTitle:@"自定义UIAlertView" message:@"66%的用户正在使用新版本V6.6.66\n1.家购物性能优化\n2.修复bug" sureBtn:@"确认" cancleBtn:@"取消"];
    AlertView.resultIndex = ^(NSInteger index){
        //回调---处理一系列动作
        NSLog(@"点击了确认按钮");
    };
    [AlertView showZYAlterView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
