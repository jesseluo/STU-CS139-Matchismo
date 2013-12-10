//
//  Card.m
//  Matchismo
//
//  Created by Jesse Luo on 13-12-9.
//  Copyright (c) 2013年 Jesse Luo. All rights reserved.
//

#import "Card.h"
@interface Card()

@end

@implementation Card

- (int)match:(NSArray *)otherCards {
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}
@end
