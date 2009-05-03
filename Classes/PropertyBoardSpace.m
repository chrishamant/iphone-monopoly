//
//  PropertyBoardSpace.m
//  Monopoly
//
//

#import "PropertyBoardSpace.h"


@implementation PropertyBoardSpace
@synthesize relatedSpaces;
@synthesize cost;

-(id)initFromDict:(NSDictionary*) dict{
	if(self = [super initWithTitle:[dict objectForKey:@"title"]]){
		[self setCost:(int)[dict objectForKey:@"cost"]];
		[self setRelatedSpaces:[dict objectForKey:@"related"]];
	}
	return self;
}

-(int)calcRent{
	return [self cost];
}

- (void)dealloc {
    [super dealloc];
	[relatedSpaces release];
}

@end
