//
//  main.m
//  炸金花游戏
//
//  Created by student on 13-7-1.
//  Copyright (c) 2013年 student. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Judge.h"
#import "Deck.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        Judge *autoJudge=[[Judge alloc] init];
        [autoJudge play];
      }
    return 0;
}

