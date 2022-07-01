//
//  ViewController.m
//  YHLWVCDemo
//
//  Created by hpking　 on 2016/12/17.
//  Copyright © 2016年 hpking　. All rights reserved.
//

#import "ViewController.h"
#import "YHLWebViewController.h"

#define UIColorFromHexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 设置导航样式
    /*self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = UIColorFromHexRGB(0X151515);
    [self.navigationController.navigationBar setTitleTextAttributes:@{
                                                                      NSForegroundColorAttributeName:[UIColor whiteColor]
                                                                      }];*/
    
    UIButton *bt = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    bt.backgroundColor = [UIColor orangeColor];
    bt.layer.cornerRadius = 50;
    [self.view addSubview:bt];
    
    [bt setTitle:@"打开网页" forState:UIControlStateNormal];
    bt.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2);
    [bt addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonClick:(UIButton *)sender {
    
    NSString* urlStr = @"https://baidu.com";
    
    YHLWebViewController* webViewController = [[YHLWebViewController alloc] initWithUrl:[NSURL URLWithString:urlStr]];
    [self.navigationController pushViewController:webViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
