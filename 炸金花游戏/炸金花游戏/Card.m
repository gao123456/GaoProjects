//
//  Card.m
//  炸金花游戏
//
//  Created by student on 13-7-1.
//  Copyright (c) 2013年 student. All rights reserved.
//

#import "Card.h"

@implementation Card
@synthesize number,suit,num,suit1;

- (id)initWithCard:(Card *)_card
{
    self = [super init];
    if (self) {
        self.number=_card.number;
        self.suit = _card.suit;
        self.num = _card.num;
        self.suit1 = _card.suit1;
    }
    return self;
}
- (id)initWithNum:(NSString *)_num Suit:(NSString *)_suit
{
    self = [super init];
    if (self)
    {
        self.number = _num;
        self.suit = _suit;
        if ([self.number isEqualToString:@"2"])
        {
            self.num=2;
        }
        if ([self.number isEqualToString:@"3"])
        {
            self.num=3;
        }
        if ([self.number isEqualToString:@"4"])
        {
            self.num=4;
        }
        if ([self.number isEqualToString:@"5"])
        {
            self.num=5;
        }
        if ([self.number isEqualToString:@"6"])
        {
            self.num=6;
        }
        if ([self.number isEqualToString:@"7"])
        {
            self.num=7;
        }
        if ([self.number isEqualToString:@"8"])
        {
            self.num=8;
        }
        if ([self.number isEqualToString:@"9"])
        {
            self.num=9;
        }
        if ([self.number isEqualToString:@"10"])
        {
            self.num=10;
        }
        if ([self.number isEqualToString:@"J"])
        {
            self.num=11;
        }
        if ([self.number isEqualToString:@"Q"])
        {
            self.num=12;
        }
        if ([self.number isEqualToString:@"K"])
        {
            self.num=13;
        }
        if ([self.number isEqualToString:@"A"])
        {
            self.num=14;
        }
        if ([self.suit isEqualToString:@"梅花"])
        {
            self.suit1=1;
        }
        if ([self.suit isEqualToString:@"方片"])
        {
            self.suit1=2;
        }
        if ([self.suit isEqualToString:@"红桃"])
        {
            self.suit1=3;
        }
        if ([self.suit isEqualToString:@"黑桃"])
        {
            self.suit1=4;
        }
        
    }
    return self;
}

- (void)print
{
    NSLog(@"%@   %@",self.suit,self.number);
}

@end
