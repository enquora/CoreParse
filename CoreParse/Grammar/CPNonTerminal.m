//
//  Production.m
//  CoreParse
//
//  Created by Tom Davie on 13/02/2011.
//  Copyright 2011 In The Beginning... All rights reserved.
//

#import "CPNonTerminal.h"

@implementation CPNonTerminal

@synthesize name;

+ (id)nonTerminalWithName:(NSString *)name
{
    return [[[CPNonTerminal alloc] initWithName:name] autorelease];
}

- (id)initWithName:(NSString *)initName
{
    self = [super init];
    
    if (nil != self)
    {
        self.name = initName;
    }
    
    return self;
}

- (id)init
{
    return [self initWithName:@""];
}

- (BOOL)isEqual:(id)object
{
    return [object isKindOfClass:[CPNonTerminal class]] && [((CPNonTerminal *)object).name isEqualToString:self.name];
}

- (NSUInteger)hash
{
    return [self.name hash];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@>", self.name];
}

@end