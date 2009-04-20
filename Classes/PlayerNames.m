//
//  PlayerNames.m
//  Monopoly
//
//  Created by Chris Hamant on 4/12/09.
//

#import "PlayerNames.h"

@implementation PlayerNames

@synthesize playernames;
//@synthesize playerlist;

#pragma mark UIView actions
- (IBAction)startGame:(id)sender{
	NSLog(@"Trying to Start Game");
}

#pragma mark UIView overrides
//TODO fix layout of keyboard... Get rid of magic numbers
- (id)initWithNumPlayers:(int)num{
    if (self = [super initWithNibName:@"GetPlayerNames" bundle:nil]) {
        numPlayers = num;
		NSLog(@"Creating PlayerNames Controller with %d players",num);
		[self setTitle:@"Player Names"];
		int ystart = 20+39+39+5;//px
		for(int i=0;i<numPlayers;i++){
			NSLog(@"Trying to create subview for player %d",i);
			//PlayerNameController* temp = [[PlayerNameController alloc] initWithNibName:@"PlayerName" bundle:nil];
			UITextField* temp = [[UITextField alloc] initWithFrame:CGRectMake(20, ystart, 278, 31)];
			ystart = ystart + 39;//px
			[playernames addObject:temp];
			[temp setBackgroundColor:[UIColor clearColor]];
			[temp setBorderStyle:UITextBorderStyleRoundedRect];
			[temp setDelegate:self];
			[[self view] addSubview:temp];
			[temp setPlaceholder:[NSString stringWithFormat:@"Player Number %d",i+1]];
			[temp release];
		}
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

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
}



#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	[textField resignFirstResponder];
	return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationBeginsFromCurrentState:YES];
	[UIView setAnimationDuration:0.25];
	CGRect rect = [self.view frame];
	rect.origin.y -= 100;
	[self.view setFrame:rect];
	[UIView commitAnimations];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationBeginsFromCurrentState:YES];
	[UIView setAnimationDuration:0.25];
	CGRect rect = [self.view frame];
	rect.origin.y += 100;
	[self.view setFrame:rect];
	[UIView commitAnimations];
}

@end
