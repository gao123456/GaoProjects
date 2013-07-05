//
//  Judge.h
//  炸金花游戏
//
//  Created by student on 13-7-1.
//  Copyright (c) 2013年 student. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PlayerA.h"
#import "PlayerB.h"
@interface Judge : NSObject
{
    int MoneyA;
    int MoneyB;
    int sumA;
    int sumB;
}
@property(nonatomic,assign) int MoneyA;
@property(nonatomic,assign) int MoneyB;
@property(nonatomic,assign) int sumA;
@property(nonatomic,assign) int sumB;
- (void)play;
@end
