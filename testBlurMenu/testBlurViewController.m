//
//  ViewController.m
//  testBlurMenu
//
//  Created by Cyrilshanway on 2014/11/20.
//  Copyright (c) 2014年 Cyrilshanway. All rights reserved.
//

#import "testBlurViewController.h"
#import <QuartzCore/QuartzCore.h>
#import <Accelerate/Accelerate.h>
#import "BTSimpleSideMenu.h"

@interface testBlurViewController ()<BTSimpleSideMenuDelegate>
@property(nonatomic)BTSimpleSideMenu *sideMenu;
@end

@implementation testBlurViewController
@synthesize sideMenu, bgView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Simple Side Menu";
    self.navigationController.navigationBarHidden = YES;
    bgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"backGround.jpg"]];
    bgView.frame = [UIScreen mainScreen].bounds;
    [self.view addSubview:bgView];
        sideMenu.delegate = self;
    
    BTSimpleMenuItem *item1 = [[BTSimpleMenuItem alloc]initWithTitle:@"帽"
                                                               image:[UIImage imageNamed:@"icon1.png"]
                                                        onCompletion:^(BOOL success, BTSimpleMenuItem *item) {
                                                            
                                                            NSLog(@"I am Item 1");
                                                        }];
    
    BTSimpleMenuItem *item2 = [[BTSimpleMenuItem alloc]initWithTitle:@"尋找"
                                                               image:[UIImage imageNamed:@"icon2.png"]
                                                        onCompletion:^(BOOL success, BTSimpleMenuItem *item) {
                                                            
                                                            NSLog(@"I am Item 2");
                                                        }];
    
    BTSimpleMenuItem *item3 = [[BTSimpleMenuItem alloc]initWithTitle:@"分享"
                                                               image:[UIImage imageNamed:@"icon3.png"]
                                                        onCompletion:^(BOOL success, BTSimpleMenuItem *item) {
                                                            
                                                            NSLog(@"I am Item 3");
                                                        }];
    
    BTSimpleMenuItem *item4 = [[BTSimpleMenuItem alloc]initWithTitle:@"錄音"
                                                               image:[UIImage imageNamed:@"icon4.png"]
                                                        onCompletion:^(BOOL success, BTSimpleMenuItem *item) {
                                                            NSLog(@"I am Item 4");
                                                        }];
    
    BTSimpleMenuItem *item5 = [[BTSimpleMenuItem alloc]initWithTitle:@"不通"
                                                               image:[UIImage imageNamed:@"icon5.png"]
                                                        onCompletion:^(BOOL success, BTSimpleMenuItem *item) {
                                                            
                                                            NSLog(@"I am Item 5");
                                                        }];
    
    BTSimpleMenuItem *item6 = [[BTSimpleMenuItem alloc]initWithTitle:@"箱"
                                                               image:[UIImage imageNamed:@"icon6.png"]
                                                        onCompletion:^(BOOL success, BTSimpleMenuItem *item) {
                                                            
                                                            NSLog(@"I am Item 6");
                                                        }];
    
    BTSimpleMenuItem *item7 = [[BTSimpleMenuItem alloc]initWithTitle:@"酷"
                                                               image:[UIImage imageNamed:@"icon7.png"]
                                                        onCompletion:^(BOOL success, BTSimpleMenuItem *item) {
                                                            
                                                            NSLog(@"I am Item 7");
                                                            
                                                        }];
    
    sideMenu = [[BTSimpleSideMenu alloc]initWithItem:@[item1, item2, item3, item4, item5, item6, item7]
                                 addToViewController:self];
}

-(void)show{
    [sideMenu toggleMenu];
}

#pragma -mark BTSimpleSideMenuDelegate

-(void)BTSimpleSideMenu:(BTSimpleSideMenu *)menu didSelectItemAtIndex:(NSInteger)index {
    NSLog(@"Item Cliecked : %ld", (long)index);
}
/*
-(void)BTSimpleSideMenu:(BTSimpleSideMenu *)menu selectedItemTitle:(NSString *)title {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Menu Clicked"
                                                   message:[NSString stringWithFormat:@"Item Title : %@", title]
                                                  delegate:self
                                         cancelButtonTitle:@"Dismiss"
                                         otherButtonTitles:nil, nil];
    [alert show];
}
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
