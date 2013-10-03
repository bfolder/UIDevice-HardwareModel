//
//  UIDevice+HardwareModel.m
//
//  Created by Heiko Dreyer on 11.05.11.
//  Copyright 2011 boxedfolder.com. All rights reserved.
//

#import "UIDevice+HardwareModel.h"
#include <sys/sysctl.h>

@implementation UIDevice (HardwareModel)

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
