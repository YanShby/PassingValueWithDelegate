//
//  EditProtocol.h
//  delegatePractice
//
//  Created by Yans on 16/7/25.
//  Copyright © 2016年 Yans. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class EditViewController;

@protocol EditProtocol <NSObject>
-(void) editView:(EditViewController *)viewController Info:(NSString *)string;
-(void) editCancel:(EditViewController *)viewController;
@end
