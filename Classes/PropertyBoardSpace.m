/**
 @class PropertyBoardSpace
 @file PropertyBoardSpace.m
 @author Chris Hamant
 
 'Abstract' Base class for spaces that could be 'owned'
 */

#import "PropertyBoardSpace.h"


@implementation PropertyBoardSpace
@synthesize relatedSpaces;
@synthesize cost;
@synthesize owner;

/**
 Constructor
 @param dict - dictionary used in initializing class
 @return point to self
 */
-(id)initFromDict:(NSDictionary*) dict{
	if(self = [super initWithTitle:[dict objectForKey:@"title"]]){
		[self setCost:[[dict objectForKey:@"cost"] intValue]];
		[self setRelatedSpaces:[dict objectForKey:@"related"]];
		owner = nil;
	}
	return self;
}

/**
 stub method. This should be overridden in child classes
 */
-(int)calcRent{
	//should never be called. Should be shadowed by child classes
	assert(0);
	return 0;
}

/**
 Method to indicated whether a property is owned
 @return BOOL indicating whether or not property is owned (or just owner exists in current implentation)
 */
-(BOOL)isOwned{
	return owner ? YES : NO;
}

/**
 Destructor
 */
- (void)dealloc {
	[relatedSpaces release];
	[owner release];
    [super dealloc];
}

@end
