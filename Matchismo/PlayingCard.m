//
//  PlayingCard.m
//  Matchismo
//
//  Created by Jesse Luo on 13-12-9.
//  Copyright (c) 2013年 Jesse Luo. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

static const int MATCH_SCORE_RANK = 4;
static const int MATCH_SCORE_SUIT = 1;

- (int)match:(NSArray *)otherCards {
    int score = 0;
    
    if ([otherCards count] == 1) {
        PlayingCard *otherCard = [otherCards firstObject];
        if (otherCard.rank == self.rank) {
            score = MATCH_SCORE_RANK;
        } else {
            if ([otherCard.suit isEqualToString:self.suit]) {
                score = MATCH_SCORE_SUIT;
            }
        }
    }
    return score;
}

- (NSString *)contents {
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

+ (NSArray *)validSuits {
    return @[@"♠︎", @"♣︎", @"♦︎", @"♥︎"];
}

- (void)setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit {
    return _suit? _suit: @"?";
}

+ (NSArray *)rankStrings {
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank {
    return [[self rankStrings] count]-1;
}

- (void)setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
