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
		
		if([hwString isEqualToString: @"i386"])   
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
		
		if ([hwString isEqualToString: @"iPad2,1"])   
			_hardwareModel = UIHardwareModeliPad2Wifi;
		
		if([hwString isEqualToString: @"iPad2,2"])   
			_hardwareModel = UIHardwareModeliPad2GSM;
		
		if([hwString isEqualToString: @"iPad2,3"])      
			_hardwareModel = UIHardwareModeliPad2CDMA;
	}
	
	return _hardwareModel;
}

@end
