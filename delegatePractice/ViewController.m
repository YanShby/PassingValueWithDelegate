//
//  ViewController.m
//  delegatePractice
//
//  Created by Yans on 16/7/25.
//  Copyright © 2016年 Yans. All rights reserved.
//

#import "ViewController.h"
#import "EditViewController.h"

@interface ViewController ()

@property(nonatomic,strong) UILabel *name;
@property(nonatomic,strong) UIButton *button;
@property(nonatomic,strong) UIBarButtonItem *done;
@property(nonatomic,strong) UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _name = [[UILabel alloc] initWithFrame:CGRectMake(100, 300, 100, 50)];
    _name.text = @"mingzi";
    _button = [UIButton buttonWithType:UIButtonTypeSystem];
    _button.frame = CGRectMake(100, 400, 50, 50);
    [_button setTitle:@"按钮" forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(modalInto) forControlEvents:UIControlEventTouchUpInside];
    
    _textView = [[UITextView alloc] initWithFrame:CGRectMake(100, 100, 100,50) textContainer:nil];
    _textView.backgroundColor = [UIColor blackColor];
    _textView.textColor = [UIColor whiteColor];
    _textView.delegate = self;
    
    _done = [[UIBarButtonItem alloc] initWithTitle:@"完成编辑" style:UIBarButtonItemStyleDone target:self action:@selector(finished)];
    
    [self.view addSubview:_name];
    [self.view addSubview:_button];
    [self.view addSubview:_textView];
    
}

-(void) finished {
    [self.textView resignFirstResponder];
    self.navigationItem.rightBarButtonItem = nil;
}

-(void) modalInto {
    EditViewController *edit = [[EditViewController alloc] init];
    edit.text.text = _name.text;
    edit.delegate = self;
    [self presentViewController:edit animated:YES completion:nil];
}

#pragma mark UITextViewDelegate
-(void)textViewDidBeginEditing:(UITextView *)textView {
    NSLog(@"%@",textView.delegate);
    self.navigationItem.rightBarButtonItem = _done;
}

#pragma mark EditProtocol
-(void) editView:(EditViewController *)viewController Info:(NSString *)string {
    _name.text = string;
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"1");
}
-(void) editCancel:(EditViewController *)viewController {
     [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"2 %@",self);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
