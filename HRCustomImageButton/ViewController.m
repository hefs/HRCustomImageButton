//
//  ViewController.m
//  HRCustomImageButton
//
//  Created by 何发松 on 2017/12/19.
//  Copyright © 2017年 HeRay. All rights reserved.
//

#import "ViewController.h"
#import "HRCustomImageButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    HRCustomImageButton *imageButton = [HRCustomImageButton buttonWithType:UIButtonTypeCustom];
    imageButton.frame = CGRectMake(50, 100, 200, 60);
    imageButton.position = ImageButtonImagePositionBottom;
    imageButton.buttonImage = [UIImage imageNamed:@"telephone_no"];
    imageButton.buttonTitle = @"自定义图片按钮";
    imageButton.space = 8;
    imageButton.buttonSelectedImage = [UIImage imageNamed:@"telephone_yes"];
    imageButton.backgroundColor = [[UIColor lightGrayColor] colorWithAlphaComponent:0.5];
    [imageButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:imageButton];
//    imageButton.selected = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
