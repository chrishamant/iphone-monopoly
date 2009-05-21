//
//  ImprovablePropertySpace.m
//  Monopoly
//
//  Created by Chris Hamant on 4/28/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ImprovablePropertySpace.h"


@implementation ImprovablePropertySpace
@synthesize color;

-(id)initFromDict:(NSDictionary*) dict{
	if(self = [super initFromDict:dict]){
		//[UIColor 
		[self setColor:[dict objectForKey:@"color"]];
		[self setRelatedSpaces:[dict objectForKey:@"related"]];
		spaceType = IMPROVABLE; 
	}
	return self;
}

-(int)calcRent{
	//overidden
	return 100;
}

- (void)dealloc {
    [super dealloc];
	[color release];
}

@end
