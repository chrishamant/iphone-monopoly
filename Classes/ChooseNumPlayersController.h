#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "PlayerNames.h"

@interface ChooseNumPlayersController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource> {
	UIPickerView* numplayers;
	int selectedPlayers;
}

@property (nonatomic, retain) IBOutlet UIPickerView* numplayers;

- (IBAction)chooseNumPlayers:(id)sender;

@end
