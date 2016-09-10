//
//  EditViewController.m
//  delegatePractice
//
//  Created by Yans on 16/7/25.
//  Copyright © 2016年 Yans. All rights reserved.
//

#import "EditViewController.h"
#import "EditProtocol.h"
#import "ViewController.h"


@interface EditViewController ()

@property(nonatomic,strong) UIButton *submit;
@property(nonatomic,strong) UIButton *cancel;
@end

@implementation EditViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _text = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    _text.backgroundColor = [UIColor grayColor];
    
    _submit = [UIButton buttonWithType:UIButtonTypeSystem];
    _submit.frame = CGRectMake(100, 150, 70, 20);
    [_submit setTitle:@"SUBMIT" forState:UIControlStateNormal];
    [_submit addTarget:self action:@selector(submit:) forControlEvents:UIControlEventTouchUpInside];
    _cancel = [UIButton buttonWithType:UIButtonTypeSystem];
    _cancel.frame = CGRectMake(200, 150, 70, 20);
    [_cancel setTitle:@"CANCLE" forState:UIControlStateNormal];
    [_cancel addTarget:self action:@selector(cancel:) forControlEvents:UIControlEventTouchUpInside];
   
    [self.view addSubview:_text];
    [self.view addSubview:_submit];
    [self.view addSubview:_cancel];
}
-(void) submit:(UIButton *)sender {
    [_delegate editView:self Info:_text.text];
    [_text resignFirstResponder];
    NSLog(@"SUB");
}
-(void) cancel:(UIButton *)sender  {
     [_delegate editCancel:self];
     [_text resignFirstResponder];
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
