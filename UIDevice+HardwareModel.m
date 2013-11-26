//
//  UIDevice+HardwareModel.m
//
//  Created by Heiko Dreyer on 11.05.11.
//  Copyright 2011 boxedfolder.com. All rights reserved.
//

#import "UIDevice+HardwareModel.h"
#include <sys/sysctl.h>

@implementation UIDevice (HardwareModel)

- (NSString *)hardwareName
{
	NSString *name = @"Unknown";
	
	switch ([self hardwareModel]) {
		case UIHardwareModeliPad:
			name = @"iPad 1G";
			break;
		case UIHardwareModeliPad2CDMA:
			name = @"iPad 2 CDMA";
			break;
		case UIHardwareModeliPad2GSM:
			name = @"iPad 2 GSM";
			break;
		case UIHardwareModeliPad2Wifi:
			name = @"iPad 2 Wifi";
			break;
		case UIHardwareModeliPad3CDMA:
			name = @"iPad 3 CDMA";
			break;
		case UIHardwareModeliPad3GSM:
			name = @"iPad 3 GSM";
			break;
		case UIHardwareModeliPad3Wifi:
			name = @"iPad 3 Wifi";
			break;
		case UIHardwareModeliPad4CDMA:
			name = @"iPad 4 CDMA";
			break;
		case UIHardwareModeliPad4GSM:
			name = @"iPad 4 GSM";
			break;
		case UIHardwareModeliPad4Wifi:
			name = @"iPad 4 Wifi";
			break;
		case UIHardwareModeliPadMiniCDMA:
			name = @"iPad mini CDMA";
			break;
		case UIHardwareModeliPadMiniGSM:
			name = @"iPad mini GSM";
			break;
		case UIHardwareModeliPadMiniWifi:
			name = @"iPad mini Wifi";
			break;
		case UIHardwareModeliPhone1G:
			name = @"iPhone 1G";
			break;
		case UIHardwareModeliPhone3G:
			name = @"iPhone 3G";
			break;
		case UIHardwareModeliPhone3GS:
			name = @"iPhone 3Gs";
			break;
		case UIHardwareModeliPhone4:
			name = @"iPhone 4";
			break;
		case UIHardwareModeliPhone4S:
			name = @"iPhone 4s";
			break;
		case UIHardwareModeliPhone4Verizon:
			name = @"iPhone 4 Verizon";
			break;
		case UIHardwareModeliPhone5:
			name = @"iPhone 5";
			break;
		case UIHardwareModeliPhone5c:
			name = @"iPhone 5c";
			break;
		case UIHardwareModeliPhone5cGlobal:
			name = @"iPhone 5c Global";
			break;
		case UIHardwareModeliPhone5Global:
			name = @"iPhone 5 Global";
			break;
		case UIHardwareModeliPhone5s:
			name = @"iPhone 5s";
			break;
		case UIHardwareModeliPhone5sGlobal:
			name = @"iPhone 5s Global";
			break;
		case UIHardwareModeliPodTouch1G:
			name = @"iPod 1G";
			break;
		case UIHardwareModeliPodTouch2G:
			name = @"iPod 2G";
			break;
		case UIHardwareModeliPodTouch3G:
			name = @"iPod 3G";
			break;
		case UIHardwareModeliPodTouch4G:
			name = @"iPod 4G";
			break;
		case UIHardwareModeliPodTouch5G:
			name = @"iPod 5G";
			break;
		case UIHardwareModelSimulator:
			name = @"Simulator";
			break;
		default:
			name = @"Unknown";
			break;
	}
	
	return name;
}

-(UIHardwareModel)hardwareModel
{
	static UIHardwareModel _hardwareModel;
	
	if(!_hardwareModel)
	{
		size_t size;
		char *model;
		
		sysctlbyname("hw.machine", NULL, &size, NULL, 0);
		model = malloc(size);
		sysctlbyname("hw.machine", model, &size, NULL, 0);
		
		NSString *hwString = [NSString stringWithCString: model encoding: NSUTF8StringEncoding];
		free(model);
		
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
	}
	
	return _hardwareModel;
}

@end
