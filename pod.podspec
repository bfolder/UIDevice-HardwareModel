Pod::Spec.new do |s|
  s.name         = 'UIDevice-HardwareModel'
  s.version      = '1.1'
  s.license      =  :type => 'MIT'
  s.homepage     = 'http://605studio.info'
  s.authors      =  'ZY' => 'zzymoon@gmail.com'
  s.summary      = 'Determines exact hardware of current iOS device. Forked from https://github.com/bfolder/UIDevice-HardwareModel'

# Source Info
  s.platform     =  :ios, '3.0'
  s.source       =  :git => 'https://github.com/tecentmoon/UIDevice-HardwareModel.git', :tag => '1.1'
  s.source_files = ''
  s.framework    =  ''

  s.requires_arc = false

end