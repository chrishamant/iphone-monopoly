//
//  PropertyBoardSpace.m
//  Monopoly
//
//

#import "PropertyBoardSpace.h"


@implementation PropertyBoardSpace
-(int)calcRent{
	return 100;
}

- (void)dealloc {
    [super dealloc];
	[relatedSpaces release];
}

@end
