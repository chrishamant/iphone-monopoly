//
//  UtilityBoardSpace.m
//  Monopoly
//
//  Created by Chris Hamant on 5/20/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "UtilityBoardSpace.h"


@implementation UtilityBoardSpace

-(id)initFromDict:(NSDictionary*) dict{
	if(self = [super initFromDict:dict]){
		//doesn't really need any more customization for now
	}
	return self;
}

-(int)calcRent{
	//overloaded method
	return 100;
}

@end
