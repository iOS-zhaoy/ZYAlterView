//
//  ZYAlterView.h
//  ZYAlterView
//
//  Created by 赵岩 on 2017/3/30.
//  Copyright © 2017年 赵岩. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^AlertResult)(NSInteger index);

@interface ZYAlterView : UIView

@property (nonatomic,copy) AlertResult resultIndex;

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message sureBtn:(NSString *)sureTitle cancleBtn:(NSString *)cancleTitle;

- (void)showZYAlterView;

@end
