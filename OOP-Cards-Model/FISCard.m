//
//  FISCard.m
//  OOP-Cards-Model
//
//  Created by Elli Scharlin on 6/15/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
//

#import "FISCard.h"

@interface FISCard ()
@property (strong, nonatomic, readwrite) NSString *suit;
@property (strong, nonatomic, readwrite) NSString *rank;
@property (strong, nonatomic, readwrite) NSString *cardLabel;
@property (nonatomic, readwrite) NSUInteger cardValue;
@end

@implementation FISCard
+(NSArray *)validRanks{
    return @[@"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+(NSArray *)validSuits{
    return @[@"♠", @"♥", @"♣",@"♦"];


}
-(NSUInteger)cardValueHelper:(NSString *)rank{
    NSUInteger cardValue = 0;
    if ([rank isEqualToString:@"K"]||[rank isEqualToString:@"Q"]||[rank isEqualToString:@"J"]||[rank isEqualToString:@"10"]){
        cardValue = 10;
    } else if ([rank isEqualToString:@"A"]) {
        cardValue = 1;
    } else {
        cardValue = [rank integerValue];
    }
    return cardValue;
}

-(instancetype) init{
    self = [self initWithSuit:@"!" rank:@"N"];
    return self;
}

-(NSString *)description{
    return self.cardLabel;
}

-(instancetype)initWithSuit:(NSString *)suit rank:(NSString *)rank{
    self = [super init];
    if (self) {
        _rank = rank;
        _suit = suit;
        _cardLabel = [NSString stringWithFormat:@"%@%@",suit, rank];
        _cardValue = [self cardValueHelper:rank];
    }
    return self;
}
@end
