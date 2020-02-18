#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlutterManager : NSObject
@property (nonatomic, strong) FlutterEngine *flutterEngine;
@property (nonatomic, assign) BOOL runWithEntryPointSuccess;
@property (nullable, nonatomic, strong) FlutterViewController *controller;
@end

NS_ASSUME_NONNULL_END
