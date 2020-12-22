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
        
        int sessionId = [call.arguments intValue];
        [self setAudioSessionId:sessionId];
        
    } else if ([@"removeAudioSessionId" isEqualToString:call.method]) {
        
        int sessionId = [call.arguments intValue];
        [self removeAudioSessionId:sessionId];
        
    } else if ([@"init" isEqualToString:call.method]) {
        
        int sessionId = [call.arguments intValue];
        [self init:sessionId];
        
    } else if ([@"enable" isEqualToString:call.method]) {
        
        bool isToEnable = [call.arguments boolValue];
        [self enable:isToEnable];
        
    } else if ([@"release" isEqualToString:call.method]) {
        
        // has no parameters
        // TODO to implement
        
    } else if ([@"getBandLevelRange" isEqualToString:call.method]) {
        
        // ArrayList<Integer> getBandLevelRange()
        result(@(0));
        
    } else if ([@"getCenterBandFreqs" isEqualToString:call.method]) {
        
        // ArrayList<Integer> getCenterBandFreqs()
        result(@(0));
        
    } else if ([@"getPresetNames" isEqualToString:call.method]) {
        
        // ArrayList<String> getPresetNames()
        result(@(0));
        
    } else if ([@"getBandLevel" isEqualToString:call.method]) {
        
        int bandId = [call.arguments intValue];
        // int getBandLevel
        result(@(0));
        
    } else if ([@"setBandLevel" isEqualToString:call.method]) {
        
        int bandId = [call.arguments[@"bandId"] intValue];
        int level = [call.arguments[@"level"] intValue];
        [self setBandLevel:bandId level:level];
        
    } else if ([@"setPreset" isEqualToString:call.method]) {
        
        NSString *presetName = call.arguments;
        [self setPreset:presetName];
        
    } else {
        result(FlutterMethodNotImplemented);
    }
}

-(void) setAudioSessionId: (int) sessionId {
    
}

-(void) removeAudioSessionId: (int) sessionId {
    
}

-(void) init: (int) sessionId {
    
}

-(void) enable: (bool) isToEnable {
    
}

-(void) setBandLevel: (int) bandId level: (int) level {
    
}

-(void) setPreset: (NSString *) presetName {
    
}

@end
