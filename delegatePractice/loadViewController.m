//
//  loadViewController.m
//  delegatePractice
//
//  Created by  on 16/7/26.
//  Copyright © 2016年 Yans. All rights reserved.
//

#import "loadViewController.h"

@interface loadViewController ()

@end

@implementation loadViewController
-(void)loadView {
    [super loadView];
    NSLog(@"LOAD");
    
    NSLog(@"%@",self.view);
    self.view.backgroundColor = [UIColor whiteColor];
    

    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view.backgroundColor = [UIColor colorWithRed:0.9714 green:0.3662 blue:1.0 alpha:1.0];
    
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
