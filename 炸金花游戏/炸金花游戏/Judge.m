//
//  Judge.m
//  炸金花游戏
//
//  Created by student on 13-7-1.
//  Copyright (c) 2013年 student. All rights reserved.
//

#import "Judge.h"

#import "PlayerA.h"
#import "PlayerB.h"


@implementation Judge

@synthesize MoneyA,MoneyB,sumA,sumB;
static int money=100;   //   初始值金币设为30
- (id)init
{
    self=[super init];
    if (self)
    {
        
    }
    return self;

}

- (void)play
{
    Deck *deck=[Deck defaultdeck];
    [deck riffle];
    for (int i=1; i<9; i++)
    {
        PlayerA *playerA=[[PlayerA alloc] initC1];
        PlayerB *playerB=[[PlayerB alloc] initC2];
        NSLog(@"电脑B下注: %i",playerB.moneyB);
        if (playerA.moneyA<(playerB.moneyB/2))
        {
            MoneyB=playerA.moneyA+1;
            NSLog(@"电脑B Win,电脑B获得金币%i",MoneyB);
            sumB+=MoneyB;
            sumA-=playerA.moneyA+1;
        }
        else
        {
            MoneyA=playerB.moneyB+1;
            MoneyB=playerA.moneyA+1;

            [playerB play];
            
            //   玩家A为豹子
            if ([playerA JudgeA]==1)
            {
                if (([playerB JudgeB]==1&&playerA.card3.num>playerB.card3.num)||[playerB JudgeB]>1)
                {
                    NSLog(@"玩家A Win, 玩家A获得金币%i",MoneyA);
                    sumA+=MoneyA;
                    sumB-=playerB.moneyB+1;
                }
                else
                {
                    NSLog(@"电脑B Win,电脑B获得金币%i",MoneyB);
                    sumB+=MoneyB;
                    sumA-=playerA.moneyA+1;
                }
            }
            //  玩家A为同花顺
            else if([playerA JudgeA]==2)
            {
                if([playerB JudgeB]==1||([playerB JudgeB]==2&&playerB.card3.num>playerA.card3.num))
                {
                     NSLog(@"电脑B Win,电脑B获得金币%i",MoneyB);
                    sumB+=MoneyB;
                    sumA-=playerA.moneyA+1;
                }
                else
                {
                    NSLog(@"玩家A Win, 玩家A获得金币%i",MoneyA);
                    sumA+=MoneyA;
                    sumB-=playerB.moneyB+1;
                    sumA-=playerA.moneyA+1;
                }
            }
            //  玩家A为同花
            else if([playerA JudgeA]==3)
            {
                if([playerB JudgeB]==1||[playerB JudgeB]==2||([playerB JudgeB]==3&&playerA.card3.num<playerB.card3.num)||([playerB JudgeB]==3&&playerA.card3.num==playerB.card3.num&&playerA.card2.num<playerB.card2.num)||([playerB JudgeB]==3&&playerA.card3.num==playerB.card3.num&&playerA.card2.num==playerB.card2.num&&playerA.card1.num<playerB.card1.num))
                {
                     NSLog(@"电脑B Win,电脑B获得金币%i",MoneyB);
                    sumB+=MoneyB;
                    sumA-=playerA.moneyA+1;
                }
                else
                {
                    NSLog(@"玩家A Win, 玩家A获得金币%i",MoneyA);
                    sumA+=MoneyA;
                    sumB-=playerB.moneyB+1;
                }
            }
            //玩家A为顺子
            else if ([playerA JudgeA]==4)
            {
                if([playerB JudgeB]==5||[playerB JudgeB]==6||([playerB JudgeB]==4&&playerA.card3.num>playerB.card3.num))
                {
                    NSLog(@"玩家A Win, 玩家A获得金币%i",MoneyA);
                    sumA+=MoneyA;
                    sumB-=playerB.moneyB+1;
                }
                else
                {
                     NSLog(@"电脑B Win,电脑B获得金币%i",MoneyB);
                    sumB+=MoneyB;
                    sumA-=playerA.moneyA+1;
                }
            }
            //玩家A为对子
            else if ([playerA JudgeA]==5)
            {
                if([playerB JudgeB]==6||([playerB JudgeB]==5&&playerA.card2.num>playerB.card2.num)||([playerB JudgeB]==5&&playerA.card1.num==playerA.card2.num&&playerA.card1.num==playerB.card1.num&&playerB.card1.num==playerB.card2.num&&playerA.card3.num>playerB.card3.num)||([playerB JudgeB]==5&&playerA.card2.num==playerA.card3.num&&playerA.card2.num==playerB.card2.num&&playerB.card2.num==playerB.card3.num&&playerA.card1.num>playerB.card1.num))
                {
                   NSLog(@"玩家A Win, 玩家A获得金币%i",MoneyA);
                    sumA+=MoneyA;
                    sumB-=+playerB.moneyB+1;
                }
                else
                {
                     NSLog(@"电脑B Win,电脑B获得金币%i",MoneyB);
                    sumB+=MoneyB;
                    sumA-=playerA.moneyA+1;
                }
            }
            //玩家A为散牌
            else if([playerA JudgeA]==6)
            {
                if(([playerB JudgeB]==6&&playerA.card3.num>playerB.card3.num)||([playerB JudgeB]==6&&playerA.card3.num==playerB.card3.num&&playerA.card2.num>playerB.card2.num)||([playerB JudgeB]==6&&playerA.card3.num==playerB.card3.num&&playerA.card2.num==playerB.card2.num&&playerA.card1.num>playerB.card1.num))
                {
                    NSLog(@"玩家A Win, 玩家A获得金币%i",MoneyA);
                    sumA+=MoneyA;
                    sumB-=playerB.moneyB+1;
                }
                else
                {
                     NSLog(@"电脑B Win,电脑B获得金币%i",MoneyB);
                    sumB+=MoneyB;
                    sumA-=playerA.moneyA+1;
                }
            }
        }
        NSLog(@"第%i轮后玩家A剩余:%i金币",i,sumA+money);
        NSLog(@"第%i轮后电脑B剩余:%i金币",i,sumB+money);
        if (sumA+money<=0||sumB+money<=0)
        {
            NSLog(@"游戏结束");
            break;
        }
    }
    if (sumA>sumB)
    {
        NSLog(@"这局玩家赢, 还是人的智商比较高, 玩家赢得%i金币 ,电脑输了%i金币",sumA,sumA);
    }
    else
    {
        NSLog(@"这局电脑赢, 电脑可是很智能的千万不要小瞧它, 电脑赢得%i金币, 玩家输了%i金币",sumB,sumB);
    }
    

}

@end



