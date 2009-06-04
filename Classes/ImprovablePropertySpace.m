/**
 @class ImprovablePropertySpace
 @file ImprovablePropertySpace.m
 @author Chris Hamant
 
 Class used to represent a 'color-group' space on a Monopoly GameBoard
 */

#import "ImprovablePropertySpace.h"


@implementation ImprovablePropertySpace
@synthesize color;
@synthesize rent;

/**
 Constructor
 @param dict - dictionary used in initializing class
 @return point to self
 */
-(id)initFromDict:(NSDictionary*) dict{
	if(self = [super initFromDict:dict]){
		//[UIColor 
		[self setColor:[dict objectForKey:@"color"]];
		[self setRent:[dict objectForKey:@"rent"]];
		houseCost = (int)[dict objectForKey:@"housecost"];
		spaceType = IMPROVABLE;
		numHouses = 0;
	}
	return self;
}

/**
 Method to calculate current rent
 @return integer value or current rent
 */
-(int)calcRent{
	//this might be kind of bad cause I'm coupling really tightly to the array implementation...
	int rentAmount = (int)[rent objectAtIndex:numHouses];
	if([self isMonopoly] && (numHouses==0)){
		//rent is doubled if player has monopoly on unimproved lots
		rentAmount = rentAmount *2;
	}
	return rentAmount;
}

/**
 Method indicating whether property is a Monopoly
 @return BOOL indicating whether property is a Monopoly
 */
-(BOOL)isMonopoly{
	BOOL test = YES;
	for(id space in relatedSpaces){
		if([space owner] != owner){
			test = NO;
		}
	}
	return test;
}

/**
 Destructor
 */
- (void)dealloc {
    [super dealloc];
	[color release];
}

@end
