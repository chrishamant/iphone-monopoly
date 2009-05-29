//
//  PropertyBoardSpace.m
//  Monopoly
//
//

#import "PropertyBoardSpace.h"


@implementation PropertyBoardSpace
@synthesize relatedSpaces;
@synthesize cost;
@synthesize owner;

-(id)initFromDict:(NSDictionary*) dict{
	if(self = [super initWithTitle:[dict objectForKey:@"title"]]){
		[self setCost:[[dict objectForKey:@"cost"] intValue]];
		[self setRelatedSpaces:[dict objectForKey:@"related"]];
		owner = nil;
	}
	return self;
}

-(int)calcRent{
	//should never be called. Should be shadowed by child classes
	assert(0);
	return 0;
}

-(BOOL)isOwned{
	return owner ? YES : NO;
}

- (void)dealloc {
	[relatedSpaces release];
	[owner release];
    [super dealloc];
}

@end
