//
//  FISCard.h
//  OOP-Cards-Model
//
//  Created by Elli Scharlin on 6/15/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
// ♠ ♥ ♣ ♦

#import <Foundation/Foundation.h>

@interface FISCard : NSObject
@property (strong, nonatomic, readonly) NSString *suit;
@property (strong, nonatomic, readonly) NSString *rank;
@property (strong, nonatomic, readonly) NSString *cardLabel;
@property (nonatomic, readonly) NSUInteger cardValue;
+(NSArray *)validSuits;
+(NSArray *)validRanks;
-(instancetype) initWithSuit:(NSString *)suit rank:(NSString *)rank;




/*
 TASKS
 
two class methods,
validSuits which returns an NSArray, and
validRanks which returns an NSArray;
four public readonly properties in the .h (remember to make them privately readwrite in the .m file, so we can change them in there),
an NSString property called suit,
an NSString property called rank,
an NSString property called cardLabel, and
an NSUInteger property called cardValue; and
a designated initializer that accepts arguments for the suit and rank string properties.
 
  ♠ ♥ ♣ ♦
*/
@end
