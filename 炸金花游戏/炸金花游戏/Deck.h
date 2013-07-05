//
//  Deck.h
//  炸金花游戏
//
//  Created by student on 13-7-1.
//  Copyright (c) 2013年 student. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Card.h"
@interface Deck : NSObject
{
    NSMutableArray *array;  //  可变数组
    NSMutableArray *dict;   //  可变字典
    Card *card1_club;//club梅花
    Card *card2_club;
    Card *card3_club;
    Card *card4_club;
    Card *card5_club;
    Card *card6_club;
    Card *card7_club;
    Card *card8_club;
    Card *card9_club;
    Card *card10_club;
    Card *card11_club;
    Card *card12_club;
    Card *card13_club;
    
    Card *card1_diamond;//diamond方片
    Card *card2_diamond;
    Card *card3_diamond;
    Card *card4_diamond;
    Card *card5_diamond;
    Card *card6_diamond;
    Card *card7_diamond;
    Card *card8_diamond;
    Card *card9_diamond;
    Card *card10_diamond;
    Card *card11_diamond;
    Card *card12_diamond;
    Card *card13_diamond;
    
    Card *card1_heart;// heart红桃
    Card *card2_heart;
    Card *card3_heart;
    Card *card4_heart;
    Card *card5_heart;
    Card *card6_heart;
    Card *card7_heart;
    Card *card8_heart;
    Card *card9_heart;
    Card *card10_heart;
    Card *card11_heart;
    Card *card12_heart;
    Card *card13_heart;
    
    Card *card1_spade;//spade黑桃
    Card *card2_spade;
    Card *card3_spade;
    Card *card4_spade;
    Card *card5_spade;
    Card *card6_spade;
    Card *card7_spade;
    Card *card8_spade;
    Card *card9_spade;
    Card *card10_spade;
    Card *card11_spade;
    Card *card12_spade;
    Card *card13_spade;
    Card *bufferCard;
    
}
@property(nonatomic,retain)NSMutableArray *array;
@property(nonatomic,retain)NSMutableArray *dict;

@property(nonatomic,retain)Card *bufferCard;
@property(nonatomic,retain)Card *card1_club;
@property(nonatomic,retain)Card *card2_club;
@property(nonatomic,retain)Card *card3_club;
@property(nonatomic,retain)Card *card4_club;
@property(nonatomic,retain)Card *card5_club;
@property(nonatomic,retain)Card *card6_club;
@property(nonatomic,retain)Card *card7_club;
@property(nonatomic,retain)Card *card8_club;
@property(nonatomic,retain)Card *card9_club;
@property(nonatomic,retain)Card *card10_club;
@property(nonatomic,retain)Card *card11_club;
@property(nonatomic,retain)Card *card12_club;
@property(nonatomic,retain)Card *card13_club;

@property(nonatomic,retain)Card *card1_diamond;
@property(nonatomic,retain)Card *card2_diamond;
@property(nonatomic,retain)Card *card3_diamond;
@property(nonatomic,retain)Card *card4_diamond;
@property(nonatomic,retain)Card *card5_diamond;
@property(nonatomic,retain)Card *card6_diamond;
@property(nonatomic,retain)Card *card7_diamond;
@property(nonatomic,retain)Card *card8_diamond;
@property(nonatomic,retain)Card *card9_diamond;
@property(nonatomic,retain)Card *card10_diamond;
@property(nonatomic,retain)Card *card11_diamond;
@property(nonatomic,retain)Card *card12_diamond;
@property(nonatomic,retain)Card *card13_diamond;


@property(nonatomic,retain)Card *card1_heart;
@property(nonatomic,retain)Card *card2_heart;
@property(nonatomic,retain)Card *card3_heart;
@property(nonatomic,retain)Card *card4_heart;
@property(nonatomic,retain)Card *card5_heart;
@property(nonatomic,retain)Card *card6_heart;
@property(nonatomic,retain)Card *card7_heart;
@property(nonatomic,retain)Card *card8_heart;
@property(nonatomic,retain)Card *card9_heart;
@property(nonatomic,retain)Card *card10_heart;
@property(nonatomic,retain)Card *card11_heart;
@property(nonatomic,retain)Card *card12_heart;
@property(nonatomic,retain)Card *card13_heart;

@property(nonatomic,retain)Card *card1_spade;
@property(nonatomic,retain)Card *card2_spade;
@property(nonatomic,retain)Card *card3_spade;
@property(nonatomic,retain)Card *card4_spade;
@property(nonatomic,retain)Card *card5_spade;
@property(nonatomic,retain)Card *card6_spade;
@property(nonatomic,retain)Card *card7_spade;
@property(nonatomic,retain)Card *card8_spade;
@property(nonatomic,retain)Card *card9_spade;
@property(nonatomic,retain)Card *card10_spade;
@property(nonatomic,retain)Card *card11_spade;
@property(nonatomic,retain)Card *card12_spade;
@property(nonatomic,retain)Card *card13_spade;

- (id)initWithArray;
- (void)dictCard:(Card *)_card;//玩家出过的牌都放到dict字典里
+ (Deck *)defaultdeck;
- (Card*)todeal;//分牌
- (Card*)deal;//发牌
- (void)riffle;//洗牌;

@end
