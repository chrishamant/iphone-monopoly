//
//  ImprovablePropertySpace.m
//  Monopoly
//
//

#import "ImprovablePropertySpace.h"


@implementation ImprovablePropertySpace
@synthesize color;
@synthesize rent;

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

-(int)calcRent{
	//this might be kind of bad cause I'm coupling really tightly to the array implementation...
	int rentAmount = (int)[rent objectAtIndex:numHouses];
	if([self isMonopoly] && (numHouses==0)){
		//rent is doubled if player has monopoly on unimproved lots
		rentAmount = rentAmount *2;
	}
	return rentAmount;
}

-(BOOL)isMonopoly{
	BOOL test = YES;
	for(id space in relatedSpaces){
		if([space owner] != owner){
			test = NO;
		}
	}
	return test;
}

- (void)dealloc {
    [super dealloc];
	[color release];
}

@end
