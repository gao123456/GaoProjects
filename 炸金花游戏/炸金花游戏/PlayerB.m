//
//  PlayerB.m
//  炸金花游戏
//
//  Created by student on 13-7-1.
//  Copyright (c) 2013年 student. All rights reserved.
//

#import "PlayerB.h"

#import "Deck.h"
#import "Card.h"
#import "Judge.h"

static PlayerB * playerB;
@implementation PlayerB
@synthesize card,card1,card2,card3,cards,deck,moneyB;

- (id)initC2
{
    self = [super init];
    if (self)
    {
        self.deck= [Deck defaultdeck];
        self.card1 = [[Card alloc] init ];
        self.card2 = [[Card alloc] init ];
        self.card3 = [[Card alloc] init ];
        
        self.card1 = [deck deal];
        self.card2 = [deck deal];
        self.card3 = [deck deal];
        
        self.cards =[[NSMutableArray alloc] init];
        [self.cards addObject:card1];
        [self.cards addObject:card2];
        [self.cards addObject:card3];
        [self sort];
        if (card1.num==card2.num&&card1.num==card3.num)   //豹子
        {
            self.moneyB=arc4random()%30+10;
        }
        else if (card1.num==card2.num-1&&card1.num==card3.num-2&&card1.suit==card2.suit&&card1.suit==card3.suit)//  同花顺
        {
            self.moneyB=arc4random()%25+10;
        }
        else if (card1.suit==card2.suit&&card1.suit==card3.suit)  //同花
        {
            self.moneyB=arc4random()%20+10;
        }else if (card1.num==card2.num-1&&card1.num==card3.num-2)//  顺子
        {
            self.moneyB=arc4random()%15+10;
        }
        else if (card1.num==card2.num||card2.num==card3.num) //  对子
        {
            self.moneyB=arc4random()%10+10;
        }
        else    //  散牌
        {
            self.moneyB=arc4random()%5+5;
        }

        
    }
    return self;
    
}
+ (PlayerB *)defaultPlayerB
{
    if (playerB==nil) {
        
        playerB  = [[PlayerB alloc]initC2];
        
        
    }
    return playerB;
}
- (void)play
{
    deck =[Deck defaultdeck];
    // NSLog(@"%lu",yifupai.array.count);
    NSLog(@"电脑B的牌:");
    
    [card1 print];
    [card2 print];
    [card3 print];

    
    
}
- (void)sort
{
    for (int i=0; i<[cards count]-1;i++)
    {
        for (int j=0; j<[cards count]-i-1; j++) {
            Card *s1=[cards objectAtIndex:j];
            Card *s2=[cards objectAtIndex:j+1];
            if (s1.num>s2.num) {
                [cards exchangeObjectAtIndex:j withObjectAtIndex:j+1];
                //                NSLog(@"第 %i次循环，%i和%i替换",i+1,j,j+1);
                
            }
            //NSLog(@"第%i位同学的分数是：%i",s.s_id,s.score);
            
        }
    }
    card1=[cards objectAtIndex:0];
    card2=[cards objectAtIndex:1];
    card3=[cards objectAtIndex:2];

}
- (void)removeCards:(int)_x
{
    int x=_x;
    self.deck= [Deck defaultdeck];
    //  NSLog(@"cards数列中要丢掉索引是%i的card",x);
    Card *diu=[[Card alloc]init];
    diu=[cards objectAtIndex:x];//丢掉的牌放到一副牌deck的dict里面
    
    [deck dictCard:diu];
    
    [cards removeObjectAtIndex:x];//从cards中
}
- (int)JudgeB
{
    [self sort];
    if (card1.num==card2.num&&card1.num==card3.num)   //豹子
    {
        return 1;
    }
    else if (card1.num==card2.num-1==card3.num-2&&card1.suit==card2.suit&&card1.suit==card3.suit)//  同花顺
    {
        return 2;
    }
    else if (card1.suit==card2.suit&&card1.suit==card3.suit)  //同花
    {
        return 3;
    }else if (card1.num==card2.num-1&&card1.num==card3.num-2)   //顺子
    {
        return 4;
    }
    else if (card1.num==card2.num||card2.num==card3.num)//   对子
    {
        return 5;
    }
    else      // 散牌
    {
        return 6;
    }
    
}

@end
