//
//  PlayerA.m
//  炸金花游戏
//
//  Created by student on 13-7-1.
//  Copyright (c) 2013年 student. All rights reserved.
//

#import "PlayerA.h"

#import "Deck.h"
#import "Card.h"

static PlayerA * playerA;

@implementation PlayerA
@synthesize card,card1,card2,card3,cards,deck,moneyA,n;

- (id)initC1   //  初始化三张牌
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
        [self play];
        
        printf("玩家A下注: ");
        scanf("%i",&n);
        
        if(n>1&&n<=50)
        {
           printf("玩家A下注: ");
           self.moneyA=n;
        }
        else if(n>50)
        {
            self.moneyA=50;
            printf("玩家A下注: %i\n",self.moneyA);
        }
        else
        {
            self.moneyA=1;
            printf("玩家A下注: %i\n",self.moneyA);
        }
    }
    return self;

}
+ (PlayerA *)defaultPlayerA
{
    if (playerA==nil)
    {
        playerA  = [[PlayerA alloc]initC1];
    }
    return playerA;
}
- (void)play
{
    deck =[Deck defaultdeck];
    static int i=1;
    printf("\n");
    printf("第%i轮开始\n",i);
    printf("\n");
    NSLog(@"玩家A的牌:");
   
    [card1 print];
    [card2 print];
    [card3 print];
    
    i++;

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
    card1=[cards objectAtIndex:0];//   将cards1设置为第一位即三章牌中最小的牌
    card2=[cards objectAtIndex:1];
    card3=[cards objectAtIndex:2];

}
- (void)removeCards:(int)_x
{
    int x=_x;
    self.deck= [Deck defaultdeck];
    //  NSLog(@"cards数列中要丢掉索引是%i的card",x);
    Card *diu=[[Card alloc]init];
    diu=[cards objectAtIndex:x];//丢掉的牌放到deck的rest里面
    
    [deck dictCard:diu];
    
    [cards removeObjectAtIndex:x];//从cards中
}

- (int)JudgeA
{
    [self sort];
    if (card1.num==card2.num&&card1.num==card3.num)   //豹子
    {
        return 1;
    }
    else if (card1.num==card2.num-1&&card1.num==card3.num-2&&card1.suit==card2.suit&&card1.suit==card3.suit)//  同花顺
    {
        return 2;
    }
    else if (card1.suit==card2.suit&&card1.suit==card3.suit)  //同花
    {
        return 3;
    }else if (card1.num==card2.num-1&&card1.num==card3.num-2)//  顺子
    {
        return 4;
    }
    else if (card1.num==card2.num||card2.num==card3.num) //  对子
    {
        return 5;
    }
    else    //  散牌
    {
        return 6;
    }
}

@end
