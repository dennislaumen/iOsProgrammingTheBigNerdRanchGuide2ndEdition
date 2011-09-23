//
//  Possession.m
//  RandomPossessions
//
//  Created by Dennis Laumen on 7/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Possession.h"


@implementation Possession

+ (id)randomPossession
{
    // Create an array of three adjectives
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",
                                                            @"Rusty",
                                                            @"Shiny", nil];
    
    // Create an array of three nouns
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",
                                                       @"Spork",
                                                       @"Mac", nil];
    
    // Get the index of a random adjective/noun from the lists
    // Note: The % operator, called the modulo operator, gives
    // you the remainder. So adjectiveIndex is a random number
    // from 0 to 2 inclusive.
    int adjectiveIndex = rand() % [randomAdjectiveList count];
    int nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    
    // Once again, ignore the memory problems with this method.
    Possession *newPossession = 
                [[self alloc] initWithPossessionName:randomName 
                                      valueInDollars:randomValue 
                                        serialNumber:randomSerialNumber];
    
    return newPossession;
                                    
}

- (id)init
{
    return [self initWithPossessionName:@"Possession" 
                         valueInDollars:100 
                           serialNumber:@""];
}

- (id)initWithPossessionName:(NSString *)name 
              valueInDollars:(int)value 
                serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if (self) {
        [self setPossessionName:name];
        [self setValueInDollars:value];
        [self setSerialNumber:sNumber];
        dateCreated = [[NSDate alloc] init];
    }
         
    return self;
}

- (void)setPossessionName:(NSString *)str
{
    possessionName = str;
}

- (NSString *)possessionName
{
    return possessionName;
}

- (void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}

- (NSString *)serialNumber
{
    return serialNumber;
}

- (void)setValueInDollars:(int)i
{
    valueInDollars = i;
}

- (int)valueInDollars
{
    return valueInDollars;
}

- (NSDate *)dateCreated
{
    return dateCreated;
}

- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", possessionName, serialNumber, valueInDollars, dateCreated];
    return descriptionString;
}

@end
