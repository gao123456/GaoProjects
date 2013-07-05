//
//  Deck.m
//  炸金花游戏
//
//  Created by student on 13-7-1.
//  Copyright (c) 2013年 student. All rights reserved.
//

#import "Deck.h"

static Deck *deck;

@implementation Deck

@synthesize array;
@synthesize dict;
@synthesize bufferCard;
@synthesize
card1_club,
card2_club,
card3_club,
card4_club,
card5_club,
card6_club,
card7_club,
card8_club,
card9_club,
card10_club,
card11_club,
card12_club,
card13_club,
card1_diamond,
card2_diamond,
card3_diamond,
card4_diamond,
card5_diamond,
card6_diamond,
card7_diamond,
card8_diamond,
card9_diamond,
card10_diamond,
card11_diamond,
card12_diamond,
card13_diamond,
card1_heart,
card2_heart,
card3_heart,
card4_heart,
card5_heart,
card6_heart,
card7_heart,
card8_heart,
card9_heart,
card10_heart,
card11_heart,
card12_heart,
card13_heart,
card1_spade,
card2_spade,
card3_spade,
card4_spade,
card5_spade,
card6_spade,
card7_spade,
card8_spade,
card9_spade,
card10_spade,
card11_spade,
card12_spade,
card13_spade;
- (id)initWithArray
{
    self = [super init];
    if(self)
    {
        self.card1_club = [[Card alloc]initWithNum:@"A" Suit:@"♣️"];
        self.card2_club = [[Card alloc]initWithNum:@"2" Suit:@"♣️"];
        self.card3_club = [[Card alloc]initWithNum:@"3" Suit:@"♣️"];
        self.card4_club = [[Card alloc]initWithNum:@"4" Suit:@"♣️"];
        self.card5_club = [[Card alloc]initWithNum:@"5" Suit:@"♣️"];
        self.card6_club = [[Card alloc]initWithNum:@"6" Suit:@"♣️"];
        self.card7_club = [[Card alloc]initWithNum:@"7" Suit:@"♣️"];
        self.card8_club = [[Card alloc]initWithNum:@"8" Suit:@"♣️"];
        self.card9_club = [[Card alloc]initWithNum:@"9" Suit:@"♣️"];
        self.card10_club = [[Card alloc]initWithNum:@"10" Suit:@"♣️"];
        self.card11_club = [[Card alloc]initWithNum:@"J" Suit:@"♣️"];
        self.card12_club = [[Card alloc]initWithNum:@"Q" Suit:@"♣️"];
        self.card13_club = [[Card alloc]initWithNum:@"K" Suit:@"♣️"];
        
        self.card1_diamond = [[Card alloc]initWithNum:@"A" Suit:@"♦️"];
        self.card2_diamond = [[Card alloc]initWithNum:@"2" Suit:@"♦️"];
        self.card3_diamond = [[Card alloc]initWithNum:@"3" Suit:@"♦️"];
        self.card4_diamond = [[Card alloc]initWithNum:@"4" Suit:@"♦️"];
        self.card5_diamond = [[Card alloc]initWithNum:@"5" Suit:@"♦️"];
        self.card6_diamond = [[Card alloc]initWithNum:@"6" Suit:@"♦️"];
        self.card7_diamond = [[Card alloc]initWithNum:@"7" Suit:@"♦️"];
        self.card8_diamond = [[Card alloc]initWithNum:@"8" Suit:@"♦️"];
        self.card9_diamond = [[Card alloc]initWithNum:@"9" Suit:@"♦️"];
        self.card10_diamond = [[Card alloc]initWithNum:@"10" Suit:@"♦️"];
        self.card11_diamond = [[Card alloc]initWithNum:@"J" Suit:@"♦️"];
        self.card12_diamond = [[Card alloc]initWithNum:@"Q" Suit:@"♦️"];
        self.card13_diamond = [[Card alloc]initWithNum:@"K" Suit:@"♦️"];
        
        self.card1_heart = [[Card alloc]initWithNum:@"A" Suit:@"♥️"];
        self.card2_heart = [[Card alloc]initWithNum:@"2" Suit:@"♥️"];
        self.card3_heart = [[Card alloc]initWithNum:@"3" Suit:@"♥️"];
        self.card4_heart = [[Card alloc]initWithNum:@"4" Suit:@"♥️"];
        self.card5_heart = [[Card alloc]initWithNum:@"5" Suit:@"♥️"];
        self.card6_heart = [[Card alloc]initWithNum:@"6" Suit:@"♥️"];
        self.card7_heart = [[Card alloc]initWithNum:@"7" Suit:@"♥️"];
        self.card8_heart = [[Card alloc]initWithNum:@"8" Suit:@"♥️"];
        self.card9_heart = [[Card alloc]initWithNum:@"9" Suit:@"♥️"];
        self.card10_heart = [[Card alloc]initWithNum:@"10" Suit:@"♥️"];
        self.card11_heart = [[Card alloc]initWithNum:@"J" Suit:@"♥️"];
        self.card12_heart = [[Card alloc]initWithNum:@"Q" Suit:@"♥️"];
        self.card13_heart = [[Card alloc]initWithNum:@"K" Suit:@"♥️"];
        
        self.card1_spade = [[Card alloc]initWithNum:@"A" Suit:@"♠️"];
        self.card2_spade = [[Card alloc]initWithNum:@"2" Suit:@"♠️"];
        self.card3_spade = [[Card alloc]initWithNum:@"3" Suit:@"♠️"];
        self.card4_spade = [[Card alloc]initWithNum:@"4" Suit:@"♠️"];
        self.card5_spade = [[Card alloc]initWithNum:@"5" Suit:@"♠️"];
        self.card6_spade = [[Card alloc]initWithNum:@"6" Suit:@"♠️"];
        self.card7_spade = [[Card alloc]initWithNum:@"7" Suit:@"♠️"];
        self.card8_spade = [[Card alloc]initWithNum:@"8" Suit:@"♠️"];
        self.card9_spade = [[Card alloc]initWithNum:@"9" Suit:@"♠️"];
        self.card10_spade = [[Card alloc]initWithNum:@"10" Suit:@"♠️"];
        self.card11_spade = [[Card alloc]initWithNum:@"J" Suit:@"♠️"];
        self.card12_spade = [[Card alloc]initWithNum:@"Q" Suit:@"♠️"];
        self.card13_spade = [[Card alloc]initWithNum:@"K" Suit:@"♠️"];
        self.bufferCard = [[Card alloc]init ];
        
        
        //以下创建一副牌
        self.array = [[NSMutableArray alloc] init];// 初始化数组
        
        //   将52张牌添加进array中
        [array addObject:card1_club];
        [array addObject:card2_club];
        [array addObject:card3_club];
        [array addObject:card4_club ];
        [array addObject:card5_club ];
        [array addObject:card6_club ];
        [array addObject:card7_club ];
        [array addObject:card8_club ];
        [array addObject:card9_club ];
        [array addObject:card10_club];
        [array addObject:card11_club];
        [array addObject:card12_club];
        [array addObject:card13_club];
        
        [array addObject:card1_diamond];
        [array addObject:card2_diamond];
        [array addObject:card3_diamond];
        [array addObject:card4_diamond];
        [array addObject:card5_diamond];
        [array addObject:card6_diamond];
        [array addObject:card7_diamond];
        [array addObject:card8_diamond];
        [array addObject:card9_diamond];
        [array addObject:card10_diamond];
        [array addObject:card11_diamond];
        [array addObject:card12_diamond];
        [array addObject:card13_diamond];
        
        [array addObject:card1_heart];
        [array addObject:card2_heart];
        [array addObject:card3_heart];
        [array addObject:card4_heart];
        [array addObject:card5_heart];
        [array addObject:card6_heart];
        [array addObject:card7_heart];
        [array addObject:card8_heart];
        [array addObject:card9_heart];
        [array addObject:card10_heart];
        [array addObject:card11_heart];
        [array addObject:card12_heart];
        [array addObject:card13_heart];
        
        [array addObject:card1_spade];
        [array addObject:card2_spade];
        [array addObject:card3_spade];
        [array addObject:card4_spade];
        [array addObject:card5_spade];
        [array addObject:card6_spade];
        [array addObject:card7_spade];
        [array addObject:card8_spade];
        [array addObject:card9_spade];
        [array addObject:card10_spade];
        [array addObject:card11_spade];
        [array addObject:card12_spade];
        [array addObject:card13_spade];
        self.dict =[[NSMutableArray alloc ] init ];
    }
    return self;
}

+ (Deck *)defaultdeck
{
    if (deck==nil)
    {
        deck=[[Deck alloc]initWithArray];
    }
    return deck;
}
//出过的牌都放到dict 里面
- (void)dictCard:(Card *)card
{
    Card *mycard =[[Card alloc]init ];
    mycard =card;
    [dict addObject:card];
    
}

- (Card*)deal//发牌
{
    //NSLog(@"发牌之前的牌数为%lu",array.count);
    if (array.count >4)
    {
        Card * card =[self todeal];
        
        //  NSLog(@"发牌之后的牌数为%lu",array.count);
        return card;
    }
    else
    {
        //        array = dict;//array指向dict
        array =[[NSMutableArray alloc]initWithArray:dict];
        
        if (array)
        {
            [dict removeAllObjects];//要清空dict
            [self riffle];
            Card *card = [self deal];
            //  NSLog(@"发牌之后的牌数为%lu",array.count);
            return card;
        }
        else
        {
            return nil;
        }
        
    }
}
- (Card*)todeal//分牌
{
    Card * card = [array lastObject];
    [array removeLastObject];
    return card;
}
- (void)riffle//洗牌
{
    deck =[Deck defaultdeck];
    int i=0;
    int j=0;
    for (int k=0; k<150; k++)
    {
        long int count = [deck.array count]; //   一副牌章数
        
        i= arc4random()%count;
        
        j= arc4random()%count;
        
        while (i==j)
        {
            j= arc4random()%count;
        }
        [array exchangeObjectAtIndex:i withObjectAtIndex:j];
    }
}

@end
