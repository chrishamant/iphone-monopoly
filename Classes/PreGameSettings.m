//
//  PreGameSettings.m
//  Monopoly
//
//

#import "PreGameSettings.h"


@implementation PreGameSettings

@synthesize players;
@synthesize delegate;

 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
	[players release];
}

- (IBAction)done {
	[self.delegate flipsideViewControllerDidFinish:self];	
}

- (IBAction)showHideFields:(id)sender{
	switch ([sender selectedSegmentIndex]) {
		case 2:
			[p4 setHidden:NO];
		case 1:
			[p3 setHidden:NO];
			break;
		default:
			[p3 setHidden:YES];
			[p4 setHidden:YES];
			break;
	}
	[p3 setNeedsDisplay];
	[p4 setNeedsDisplay];
}

@end
