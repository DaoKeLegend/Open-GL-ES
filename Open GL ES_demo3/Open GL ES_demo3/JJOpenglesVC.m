//
//  JJOpenglesVC.m
//  Open GL ES_demo3
//
//  Created by lucy on 2018/1/7.
//  Copyright © 2018年 com.daoKeLegend. All rights reserved.
//

#import "JJOpenglesVC.h"
#import "JJOpenglesView.h"

@interface JJOpenglesVC()

@property (nonatomic, strong) JJOpenglesView *openView;

@end

@implementation JJOpenglesVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.openView = [[JJOpenglesView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:self.openView];
}

@end
