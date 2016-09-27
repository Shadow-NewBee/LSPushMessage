//
//  ViewController.m
//  PushMessageTest
//
//  Created by xiaoT on 16/9/23.
//  Copyright © 2016年 赖三聘. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
{
    UITextField *textTF;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createUI];
}

-(void)createUI
{
    textTF = [[UITextField alloc]init];
    textTF.frame = CGRectMake(0, 100, self.view.frame.size.width, 30);
    textTF.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:textTF];
    
    UIButton * PushBtn = [UIButton buttonWithType:(UIButtonTypeSystem)];
    PushBtn.frame = CGRectMake(0, 140, self.view.frame.size.width, 30);
    [PushBtn setTitle:@"Push" forState:(UIControlStateNormal)];
    [PushBtn addTarget:self action:@selector(PushClick:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:PushBtn];
}

-(void)PushClick:(UIButton*)sender{
    
    SecondViewController * secondVc = [[SecondViewController alloc]init];
    secondVc.pushValueString = ^(NSString *str){
        textTF.text =str;
    } ;
    
    [self.navigationController pushViewController:secondVc animated:YES];
    
}

@end
