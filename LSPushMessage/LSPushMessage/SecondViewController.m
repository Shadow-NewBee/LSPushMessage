//
//  SecondViewController.m
//  PushMessageTest
//
//  Created by xiaoT on 16/9/23.
//  Copyright © 2016年 赖三聘. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
{
    
    UITextField * textF;
    NSString * textFString;
}
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor orangeColor];
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    textF = [[UITextField alloc]init];
    textF.frame = CGRectMake(0, 100, self.view.frame.size.width, 30);
    textF.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:textF];
    
    UIButton * Backbtn = [UIButton buttonWithType:(UIButtonTypeSystem)];
    
    Backbtn.frame  =CGRectMake(0, 140, self.view.frame.size.width, 30);
    
    [Backbtn addTarget:self action:@selector(backClick:) forControlEvents:(UIControlEventTouchUpInside)];
    [Backbtn setTitle:@"back" forState:(UIControlStateNormal)];
    [self.view addSubview:Backbtn];
}

-(void)backClick:(UIButton*)sender{
    //核心代码
    [self.navigationController popViewControllerAnimated:YES];
    self.pushValueString(textF.text);

}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
