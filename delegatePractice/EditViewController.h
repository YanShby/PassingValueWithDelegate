//
//  EditViewController.h
//  delegatePractice
//
//  Created by Yans on 16/7/25.
//  Copyright © 2016年 Yans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditProtocol.h"
@interface EditViewController : UIViewController  {
     id <EditProtocol> __unsafe_unretained _delegate;
}
@property(nonatomic,strong) UITextField *text;
@property (nonatomic, unsafe_unretained) id <EditProtocol> delegate;
@end
