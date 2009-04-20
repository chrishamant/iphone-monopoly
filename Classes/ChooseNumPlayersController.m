#import "ChooseNumPlayersController.h"

@implementation ChooseNumPlayersController

@synthesize numplayers;

- (IBAction)chooseNumPlayers:(id)sender{
	NSLog(@"Selected %d",selectedPlayers);
	[[self navigationController] pushViewController:[[[PlayerNames alloc] initWithNumPlayers:selectedPlayers] autorelease] animated:YES];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	[self setTitle:@"Choose # Players"];
	selectedPlayers = 1;
	[numplayers setShowsSelectionIndicator:YES];
	[numplayers setDataSource:self];
}

// returns the number of columns to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
	NSLog(@"in numberOfComponentsInPickerView");
	return 1;
}

// returns the number of rows
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
	return 8;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
	NSLog(@"in pickerView:titleForRow:");
	return [NSString stringWithFormat:@"%d",row+1];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
	NSLog(@"Selected %d",row+1);
	selectedPlayers = row+1;
}

@end
