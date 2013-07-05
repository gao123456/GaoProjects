//
//  PlayerA.h
//  炸金花游戏
//
//  Created by student on 13-7-1.
//  Copyright (c) 2013年 student. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Card.h"
#import "Deck.h"
@interface PlayerA : NSObject
{
    @public
    Card *card1;
    Card *card2;
    Card *card3;
    
    Card *card;//抽到的牌
    
    Deck *deck;
    int moneyA;
    int n;
    NSMutableArray *cards;
    
    
}
@property(nonatomic,retain)Card *card1;
@property(nonatomic,retain)Card *card2;
@property(nonatomic,retain)Card *card3;
@property(nonatomic,retain)Card *card;
@property(nonatomic,retain)Deck *deck;
@property(nonatomic,assign)int moneyA;
@property(nonatomic,assign)int n;
@property(nonatomic,retain)NSMutableArray *cards;
+ (PlayerA *)defaultPlayerA;
- (id)initC1;
- (void)play;
- (void)sort;
- (void)removeCards:(int)_x;
- (int)JudgeA;
@end
