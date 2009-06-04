/**
 @file BoardScreen.m
 @author Chris Hamant
 @class PlayersScreen
 
 @brief Control class for BoardScreen.xib
 Class used to control and interact with the BoardScreen.xib GUI interface.
 
 */

#import "BoardScreen.h"


@implementation BoardScreen


/**
 Constructor
 
 @param nibNameOrNil - string name of nib to load
 @param nibBundleOrNil - settings bundle/ shared state
 @return pointer to self
 */
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
		[self setTitle:@"Board"];
    }
    return self;
}

/**
 Method triggered when the screen is displayed to the user
 */
- (void)viewDidLoad {
    [super viewDidLoad];
	[scrollview setContentSize:CGSizeMake(board.frame.size.width, board.frame.size.height)];
	scrollview.maximumZoomScale = 4.0;
	scrollview.minimumZoomScale = .50;
	[scrollview addSubview:board];
}

/**
 Method triggered when the device runs out of memory
 */
- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

/**
 Method triggered when the screen will disappear
 */
- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

/**
 Destructor
 */
- (void)dealloc {
    [super dealloc];
}

#pragma mark UIScrollViewDelegate protocol methods
/**
 Method called by the scroll view when user 'pinches' the enclosed view
 @param pointer to UIScrollView that  called this method
 @return pointer to UIView subclass that should be zoomed
 */
-(UIView*)viewForZoomingInScrollView:(UIScrollView*)scroll{
	return board;
}

@end
