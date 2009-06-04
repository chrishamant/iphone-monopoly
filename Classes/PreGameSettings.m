/**
 @class PreGameSettings
 @file PreGameSettings.m
 @author Chris Hamant
 
 Controller class for view that lets users set their name/token before game starts.
 */

#import "PreGameSettings.h"

@implementation PreGameSettings

@synthesize players;
@synthesize delegate;

/**
 Contructor
 @param nibNameOrNil - Name of nib to load views from
 @param nibBundleOrNail - Shared relevant state
 @return point to self
 */
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
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
	[players release];
}

#pragma mark implementation methods
/**
 Action triggered by user when completed doing user settings
 */
- (IBAction)done {
	[self.delegate flipsideViewControllerDidFinish:self];	
}


/**
 Intended to enable/disable - show/hide fields when setting up initial users
 //todo doesn't actually work yet...
 */
- (IBAction)showHideFields:(id)sender{
	switch ([sender selectedSegmentIndex]) {
		case 2:
			p4.enabled = YES;
		case 1:
			p3.enabled = YES;
			break;
		default:
			p3.enabled = NO;
			p4.enabled = NO;
			break;
	}
	[self.view setNeedsDisplay];
}

@end
