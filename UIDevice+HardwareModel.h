//
//  UIDevice+HardwareModel.h
//
//  Created by Heiko Dreyer on 11.05.11.
//  Copyright 2011 boxedfolder.com. All rights reserved.
//

#import <UIKit/UIKit.h>

enum UIHardwareModel 
{
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
	UIHardwareModeliPad3CDMA = 18
}; typedef NSUInteger UIHardwareModel;

@interface UIDevice (HardwareModel) 

/**
 *	Returns hardware id of device instance
 */
-(UIHardwareModel)hardwareModel;

@end
