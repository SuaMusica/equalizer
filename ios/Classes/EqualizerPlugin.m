#import "EqualizerPlugin.h"

static int OK = 0;
static int NOT_OK = -1;

@implementation EqualizerPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    FlutterMethodChannel* channel = [FlutterMethodChannel
                                     methodChannelWithName:@"equalizer"
                                     binaryMessenger:[registrar messenger]];
    EqualizerPlugin* instance = [[EqualizerPlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
        
    if ([@"open" isEqualToString:call.method]) {
        result(@(OK));
    } else if ([@"setAudioSessionId" isEqualToString:call.method]) {
        
    } else if ([@"removeAudioSessionId" isEqualToString:call.method]) {
        
    } else if ([@"init" isEqualToString:call.method]) {
        
    } else if ([@"enable" isEqualToString:call.method]) {
        
    } else if ([@"release" isEqualToString:call.method]) {
        
    } else if ([@"getBandLevelRange" isEqualToString:call.method]) {
        
    } else if ([@"getCenterBandFreqs" isEqualToString:call.method]) {
        
    } else if ([@"getPresetNames" isEqualToString:call.method]) {
        
    } else if ([@"getBandLevel" isEqualToString:call.method]) {
        
    } else if ([@"setBandLevel" isEqualToString:call.method]) {
        
    } else if ([@"setPreset" isEqualToString:call.method]) {
        
    } else {
        result(FlutterMethodNotImplemented);
    }
}

@end
