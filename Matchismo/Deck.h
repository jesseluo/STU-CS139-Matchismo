//
//  Deck.h
//  Matchismo
//
//  Created by Jesse Luo on 13-12-10.
//  Copyright (c) 2013年 Jesse Luo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
