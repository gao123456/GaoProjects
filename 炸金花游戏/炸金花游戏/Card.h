//
//  Card.h
//  炸金花游戏
//
//  Created by student on 13-7-1.
//  Copyright (c) 2013年 student. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
{
    NSString *number;//  号码
    NSString *suit;//花色suit
    
    int num;
    int suit1;
}

@property(nonatomic,copy) NSString*number;
@property(nonatomic,copy) NSString*suit;

@property(nonatomic,assign) int num;
@property(nonatomic,assign) int suit1;

- (id)initWithCard:(Card *)_card;
- (id)initWithNum:(NSString *)_num Suit:(NSString *)_suit;
- (void)print;
@end
