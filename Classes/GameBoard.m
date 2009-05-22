#import "GameBoard.h"

@implementation GameBoard
@synthesize spaces;

/**
 Abstracts the concept of figuring out where on the board the player lands
 
 @param fromSpace - Indicates starting location on board
 @param numSpace - Number of spaces from 'fromSpace' to advance to
 @return GameBoardSpace - Pointer to GameBoardSpace landed on
 */
-(GameBoardSpace*) getNewSpace:(GameBoardSpace*)fromSpace rolling:(int)numSpaces{
	//should never have a negative number, although this method would still technically work
	assert(numSpaces > 0);
	NSUInteger currIndex = [spaces indexOfObject: fromSpace];
	NSUInteger newIndex = (currIndex + numSpaces) % ([spaces count] - 1);
	return [spaces objectAtIndex:newIndex];
}

/**
 Class constructor
 
 Calls [self getSpacesFromStore] to load up board from 'store'. Currently this is an XML file, could be anything though.
 @return id - pointer to self
 */
-(id) init{
	self = [super init];
	[self getSpacesFromStore];
	return self;
}

/**
 Method to load and parse entries from XML store representing an array of GameBoardSpace(s).
 This is pretty tightly coupled to the datastore and relies on some information present in the xml/plist
 to know which GameBoardSpace instance to instantiate. 
 */
-(void)getSpacesFromStore{
	NSString* plistPath = [[NSBundle mainBundle] pathForResource:@"MonopolySpaces" ofType:@"plist"];
	NSArray* fromPlist = [NSArray arrayWithContentsOfFile:plistPath];
	int count = [fromPlist count];
	NSMutableArray* thespaces = [NSMutableArray arrayWithCapacity:count];
	NSDictionary* temp;
	
	for(int i=0;i<count;i++){
		temp = [fromPlist objectAtIndex:i];
		int spaceType = [[temp objectForKey:@"spaceType"] intValue];
		switch (spaceType) {
			case REGULAR:
				//regular space (inert)
				[thespaces addObject:[[[GameBoardSpace alloc] initWithTitle:[temp objectForKey:@"title"]] autorelease]];
				break;
			case RAILROAD:
				//railroad
				[thespaces addObject: [[[PropertyBoardSpace alloc] initFromDict:temp] autorelease]];
				break;
			case UTILITY:
				//utility
				[thespaces addObject: [[[PropertyBoardSpace alloc] initFromDict:temp] autorelease]];
				break;
			case IMPROVABLE:
				//improvable
				[thespaces addObject: [[[ImprovablePropertySpace alloc] initFromDict:temp] autorelease]];
				break;
			case ACTION:
				//action space
				[thespaces addObject: [[[GameBoardSpace alloc] initWithTitle:[temp objectForKey:@"title"]] autorelease]];
				break;
			default:
				//this should never happen
				assert(0);
				break;
		}
	}
	[self setSpaces:[NSArray arrayWithArray:thespaces]];
	/*[fromPlist release];
	[plistPath release]; 
	[thespaces release];*/
	//TODO Figure out why this is crashing when these are released...
}

/**
 Class destructor.
 
 Releases all retained instance variables.
 */
- (void)dealloc {
    [super dealloc];
	[spaces release];
}

@end
