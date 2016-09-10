//
//  ViewController.h
//  delegatePractice
//
//  Created by Yans on 16/7/25.
//  Copyright © 2016年 Yans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditProtocol.h"
@interface ViewController : UIViewController<EditProtocol,UITextViewDelegate>
@end

