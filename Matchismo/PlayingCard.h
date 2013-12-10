//
//  PlayingCard.h
//  Matchismo
//
//  Created by Jesse Luo on 13-12-9.
//  Copyright (c) 2013年 Jesse Luo. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
