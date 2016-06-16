    //
    //  FISCardDeck.m
    //  OOP-Cards-Model
    //
    //  Created by Elli Scharlin on 6/15/16.
    //  Copyright © 2016 Al Tyus. All rights reserved.
    //

#import "FISCardDeck.h"

@implementation FISCardDeck

-(FISCard *)drawNextCard{
    FISCard *nextCard = [FISCard new];
    if (![self.remainingCards isEqualToArray: @[]]) {
        nextCard = self.remainingCards[0];
        [self.dealtCards addObject:nextCard];
        [self.remainingCards removeObjectAtIndex:0];
    } else {
        nextCard = nil;
        NSLog(@"The deck is empty");
    }
    
    return nextCard;
}
-(void)resetDeck{
    [self gatherDealtCards];
    [self shuffleRemainingCards];
    
    
}
-(void)gatherDealtCards{
    /*Write the implementation for the gatherDealtCards method. It should add the cards in the dealtCards array back into the remainingCards array and leave the dealtCards array empty.
     */
    [self.remainingCards addObjectsFromArray:self.dealtCards];
    self.dealtCards = @[];
}
-(void)shuffleRemainingCards{
        //create a random variable to use as an index random var must be generated between the count of the remaining cards.
    NSMutableArray *shuffledDeck = [NSMutableArray new];
    FISCard *cardToBeInserted = [[FISCard alloc]init];
    NSUInteger numberOfCardsToBeShuffled = self.remainingCards.count;
        //    NSLog(@"%@ original remaining cards",self.remainingCards);
    
    
    for (NSUInteger i = 0; i < numberOfCardsToBeShuffled; i++) {
        NSUInteger randomIndex = arc4random() % [self.remainingCards count];
        cardToBeInserted = self.remainingCards[randomIndex];
        
        
            //        NSLog(@"%@ remaining cards before remove",self.remainingCards);
        
        
        [shuffledDeck addObject:cardToBeInserted];
        [self.remainingCards removeObjectAtIndex:randomIndex];
        
        
            //        NSLog(@"%@  remaining cardsafter remove",self.remainingCards);
            //        NSLog(@"%@ shuffled deck after add", shuffledDeck);
            //        NSLog(@"%lu", randomIndex);
        
        
        
            //    NSLog(@"%@ shuffled deck", shuffledDeck);
    }
    self.remainingCards = shuffledDeck;
    
}

-(NSString *)description{
    NSString *description = [NSString stringWithFormat: @"count: %lu \n cards: \n %@", self.remainingCards.count, self.remainingCards];
    return description;
}
-(void)createDeck{
    for (NSUInteger suit = 0; suit < [FISCard validSuits].count; suit++){
        for (NSUInteger rank = 0; rank < [FISCard validRanks].count; rank++) {
            FISCard *currentCard = [[FISCard alloc]initWithSuit:[FISCard validSuits][suit] rank:[FISCard validRanks][rank]];
            [self.remainingCards addObject:currentCard];
        }
    }
}

-(instancetype) init{
    self = [super init];
    if (self) {
        _remainingCards = [NSMutableArray new];
        _dealtCards = [NSMutableArray new];
        [self createDeck];
    }
    return self;
}


@end
