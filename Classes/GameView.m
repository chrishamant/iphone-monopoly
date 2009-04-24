//
//  GameView.m
//  Monopoly
//
//

#import "GameView.h"


@implementation GameView

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
	NSLog(@"drawing!");
}


- (void)dealloc {
    [super dealloc];
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"begin!");
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"middle!");
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"end!");
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
	NSLog(@"begin!");
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
	NSLog(@"end!");
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
	NSLog(@"cancelled!!");
}

@end
