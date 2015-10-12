//
//  UIDevice+HardwareModel.h
//
//  Created by Heiko Dreyer on 05/11/11.
//  Copyright 2011 boxedfolder.com. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, UIHardwareModel) {
    UIHardwareModelUnknown = 0,
    UIHardwareModelSimulator = 1,
    
    UIHardwareModeliPhone1G = 2,
    UIHardwareModeliPhone3G = 3,
    UIHardwareModeliPhone3GS = 4,
    UIHardwareModeliPhone4 = 5,
    UIHardwareModeliPhone4Verizon = 6,
    
    UIHardwareModeliPodTouch1G = 7,
    UIHardwareModeliPodTouch2G = 8,
    UIHardwareModeliPodTouch3G = 9,
    UIHardwareModeliPodTouch4G = 10,
    
    UIHardwareModeliPad = 11,
    UIHardwareModeliPad2Wifi = 12,
    UIHardwareModeliPad2GSM = 13,
    UIHardwareModeliPad2CDMA = 14,
    
    UIHardwareModeliPhone4S = 15,
    
    UIHardwareModeliPad3Wifi = 16,
    UIHardwareModeliPad3GSM = 17,
    UIHardwareModeliPad3CDMA = 18,
    
    UIHardwareModeliPhone5 = 19,
    UIHardwareModeliPhone5Global = 20,
    
    UIHardwareModeliPodTouch5G = 21,
    
    UIHardwareModeliPadMiniWifi = 22,
    UIHardwareModeliPadMiniGSM = 23,
    UIHardwareModeliPadMiniCDMA = 24,
    
    UIHardwareModeliPad4Wifi = 25,
    UIHardwareModeliPad4GSM = 26,
    UIHardwareModeliPad4CDMA = 27,
    
    UIHardwareModeliPhone5c = 28,
    UIHardwareModeliPhone5cGlobal = 29,
    
    UIHardwareModeliPhone5s = 30,
    UIHardwareModeliPhone5sGlobal = 31,
    
    UIHardwareModeliPhone6 = 32,
    UIHardwareModeliPhone6Plus = 33,
    
    UIHardwareModeliPhone6s = 34,
    UIHardwareModeliPhone6sPlus = 35,
    
    UIHardwareModeliPadMini2Wifi = 36,
    UIHardwareModeliPadMini2Cellular = 37,
    UIHardwareModeliPadMini2CellularChina = 37,
    
    UIHardwareModeliPadMini3Wifi = 38,
    UIHardwareModeliPadMini3Cellular = 39,
    UIHardwareModeliPadMini3CellularChina = 39,
    
    UIHardwareModeliPadMini4Wifi = 40,
    UIHardwareModeliPadMini4Cellular = 41,
    
    UIHardwareModeliPadAirWifi = 42,
    UIHardwareModeliPadAirCellular = 43,
    UIHardwareModeliPadAirCellularChina = 44,
    
    UIHardwareModeliPadAir2Wifi = 45,
    UIHardwareModeliPadAir2Cellular = 46,
    
    UIHardwareModeliPodTouch6G = 47
} NS_ENUM_AVAILABLE_IOS(6_0);

@interface UIDevice (HardwareModel) 

/**
 *	Returns hardware id of device instance
 */
-(UIHardwareModel)hardwareModel;

@end
