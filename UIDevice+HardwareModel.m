//
//  UIDevice+HardwareModel.m
//
//  Created by Heiko Dreyer on 05/11/11.
//  Copyright 2011 boxedfolder.com. All rights reserved.
//

#import "UIDevice+HardwareModel.h"
#include <sys/sysctl.h>

@implementation UIDevice (HardwareModel)

-(UIHardwareModel)hardwareModel {
	static UIHardwareModel _hardwareModel;

	if(!_hardwareModel) {
        size_t size;
		char *model;

		sysctlbyname("hw.machine", NULL, &size, NULL, 0);
		model = malloc(size);
		sysctlbyname("hw.machine", model, &size, NULL, 0);

		NSString *hwString = [NSString stringWithCString: model encoding: NSUTF8StringEncoding];
		free(model);

        _hardwareModel = UIHardwareModelUnknown; // Unknown by default

		if([hwString isEqualToString: @"i386"] || [hwString isEqualToString:@"x86_64"])
            _hardwareModel = UIHardwareModelSimulator;

		if([hwString isEqualToString: @"iPhone1,1"])
			_hardwareModel = UIHardwareModeliPhone1G;

		if([hwString isEqualToString: @"iPhone1,2"])
			_hardwareModel = UIHardwareModeliPhone3G;

		if([hwString isEqualToString: @"iPhone2,1"])
			_hardwareModel = UIHardwareModeliPhone3GS;

		if([hwString isEqualToString: @"iPhone3,1"])
			_hardwareModel = UIHardwareModeliPhone4;

		if([hwString isEqualToString: @"iPhone3,2"])
			_hardwareModel = UIHardwareModeliPhone4Verizon;

		if([hwString isEqualToString: @"iPhone4,1"])
			_hardwareModel = UIHardwareModeliPhone4S;

		if([hwString isEqualToString: @"iPod1,1"])
			_hardwareModel = UIHardwareModeliPodTouch1G;

		if([hwString isEqualToString: @"iPod2,1"])
			_hardwareModel = UIHardwareModeliPodTouch2G;

		if([hwString isEqualToString: @"iPod3,1"])
			_hardwareModel = UIHardwareModeliPodTouch3G;

		if([hwString isEqualToString: @"iPod4,1"])
			_hardwareModel = UIHardwareModeliPodTouch4G;

		if([hwString isEqualToString: @"iPad1,1"])
			_hardwareModel = UIHardwareModeliPad;

		if([hwString isEqualToString: @"iPad2,1"])
			_hardwareModel = UIHardwareModeliPad2Wifi;

		if([hwString isEqualToString: @"iPad2,2"])
			_hardwareModel = UIHardwareModeliPad2GSM;

		if([hwString isEqualToString: @"iPad2,3"])
			_hardwareModel = UIHardwareModeliPad2CDMA;

		if([hwString isEqualToString: @"iPad2,4"])
			_hardwareModel = UIHardwareModeliPad2Wifi;

		if([hwString isEqualToString: @"iPad3,1"])
			_hardwareModel = UIHardwareModeliPad3Wifi;

		if([hwString isEqualToString: @"iPad3,2"])
			_hardwareModel = UIHardwareModeliPad3GSM;

		if([hwString isEqualToString: @"iPad3,3"])
			_hardwareModel = UIHardwareModeliPad3CDMA;

		if([hwString isEqualToString: @"iPhone5,1"])
			_hardwareModel = UIHardwareModeliPhone5;

		if([hwString isEqualToString: @"iPhone5,2"])
			_hardwareModel = UIHardwareModeliPhone5Global;

		if([hwString isEqualToString: @"iPhone5,3"])
			_hardwareModel = UIHardwareModeliPhone5c;

		if([hwString isEqualToString: @"iPhone5,4"])
			_hardwareModel = UIHardwareModeliPhone5cGlobal;

		if([hwString isEqualToString: @"iPhone6,1"])
			_hardwareModel = UIHardwareModeliPhone5s;

		if([hwString isEqualToString: @"iPhone6,2"])
			_hardwareModel = UIHardwareModeliPhone5sGlobal;

		if([hwString isEqualToString: @"iPod5,1"])
			_hardwareModel = UIHardwareModeliPodTouch5G;

		if([hwString isEqualToString: @"iPad2,5"])
            _hardwareModel = UIHardwareModeliPadMiniWifi;

		if([hwString isEqualToString: @"iPad2,6"])
			_hardwareModel = UIHardwareModeliPadMiniGSM;

		if([hwString isEqualToString: @"iPad2,7"])
			_hardwareModel = UIHardwareModeliPadMiniCDMA;

		if([hwString isEqualToString: @"iPad3,4"])
			_hardwareModel = UIHardwareModeliPad4Wifi;

		if([hwString isEqualToString: @"iPad3,5"])
			_hardwareModel = UIHardwareModeliPad4GSM;

		if([hwString isEqualToString: @"iPad3,6"])
			_hardwareModel = UIHardwareModeliPad4CDMA;

        if([hwString isEqualToString: @"iPad5,2"])
            _hardwareModel = UIHardwareModeliPad4CDMA;

        if([hwString isEqualToString: @"iPhone7,1"])
            _hardwareModel = UIHardwareModeliPhone6Plus;

        if([hwString isEqualToString: @"iPhone7,2"])
            _hardwareModel = UIHardwareModeliPhone6;

        if([hwString isEqualToString: @"iPhone8,1"])
            _hardwareModel = UIHardwareModeliPhone6s;

        if([hwString isEqualToString: @"iPhone8,2"])
            _hardwareModel = UIHardwareModeliPhone6sPlus;

        if([hwString isEqualToString: @"iPad4,4"])
            _hardwareModel = UIHardwareModeliPadMini2Wifi;

        if([hwString isEqualToString: @"iPad4,5"])
            _hardwareModel = UIHardwareModeliPadMini2Cellular;

        if([hwString isEqualToString: @"iPad4,6"])
            _hardwareModel = UIHardwareModeliPadMini2CellularChina;

        if([hwString isEqualToString: @"iPad4,7"])
            _hardwareModel = UIHardwareModeliPadMini3Wifi;

        if([hwString isEqualToString: @"iPad4,8"])
            _hardwareModel = UIHardwareModeliPadMini3Cellular;

        if([hwString isEqualToString: @"iPad4,9"])
            _hardwareModel = UIHardwareModeliPadMini3CellularChina;

        if([hwString isEqualToString: @"iPad5,1"])
            _hardwareModel = UIHardwareModeliPadMini4Wifi;

        if([hwString isEqualToString: @"iPad5,2"])
            _hardwareModel = UIHardwareModeliPadMini4Cellular;

        if([hwString isEqualToString: @"iPad4,1"])
            _hardwareModel = UIHardwareModeliPadAirWifi;

        if([hwString isEqualToString: @"iPad4,2"])
            _hardwareModel = UIHardwareModeliPadAirCellular;

        if([hwString isEqualToString: @"iPad4,3"])
            _hardwareModel = UIHardwareModeliPadAirCellularChina;

        if([hwString isEqualToString: @"iiPad5,3"])
            _hardwareModel = UIHardwareModeliPadAir2Wifi;

        if([hwString isEqualToString: @"iPad5,4"])
            _hardwareModel = UIHardwareModeliPadAir2Cellular;

        if([hwString isEqualToString: @"iPod7,1"])
            _hardwareModel = UIHardwareModeliPodTouch6G;
	}

	return _hardwareModel;
}

@end
