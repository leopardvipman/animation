//
//  CViewController.m
//  animation
//
//  Created by 杨 宏强 on 13-2-26.
//  Copyright (c) 2013年 yanghongqiang. All rights reserved.
//

#import "CViewController.h"

@interface CViewController ()

@end

@implementation CViewController
-(IBAction)animation:(id)sender{

    [UIView beginAnimations:@"ResizeView" context:nil];
    [UIView setAnimationDuration:2.0f];
    [UIView setAnimationDelegate:self];//这里设置代理才能调用annimation1；
    button.frame=CGRectMake(100, 300, 100, 100);
    button.backgroundColor=[UIColor redColor];
    [UIView setAnimationDidStopSelector:@selector(animation1)];
  
 [UIView commitAnimations];

}

-(void)animation1{
    [UIView beginAnimations:@"ResizeView" context:nil];
    [UIView setAnimationDuration:2.0f];
    [UIView setAnimationDelegate:self];
    button.frame=CGRectMake(0, 0, 50, 50);
    button.backgroundColor=[UIColor blackColor];
  
    [UIView commitAnimations];

}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    button=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    button.backgroundColor=[UIColor redColor];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
