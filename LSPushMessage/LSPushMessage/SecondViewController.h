//
//  SecondViewController.h
//  PushMessageTest
//
//  Created by xiaoT on 16/9/23.
//  Copyright © 2016年 赖三聘. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^PushBlock)(NSString *);

@interface SecondViewController : UIViewController

@property (nonatomic, strong)  PushBlock pushValueString;

@end
