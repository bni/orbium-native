#import <AudioToolbox/AudioServices.h>
#import "PhoneGap/PGPlugin.h"

@interface SoundPlug : PGPlugin {
}

- (void) play:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;

@end
