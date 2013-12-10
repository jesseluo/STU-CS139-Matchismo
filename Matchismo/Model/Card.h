//
//  Card.h
//  Matchismo
//
//  Created by Jesse Luo on 13-12-9.
//  Copyright (c) 2013年 Jesse Luo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
