#import "FlutterManager.h"
#import <FlutterPluginRegistrant/GeneratedPluginRegistrant.h>

NS_ASSUME_NONNULL_BEGIN

@implementation FlutterManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _flutterEngine = [[FlutterEngine alloc] initWithName:@"io.flutter.issue48630" project: nil allowHeadlessExecution: NO];
        [_flutterEngine runWithEntrypoint: @"mainMethod"];
        [GeneratedPluginRegistrant registerWithRegistry: _flutterEngine];

        _controller = [[FlutterViewController alloc] initWithEngine:_flutterEngine nibName:nil bundle:nil];
    }
    return self;
}

@end

NS_ASSUME_NONNULL_END
