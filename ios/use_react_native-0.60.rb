#
# Copyright (c) Microsoft Corporation. All rights reserved.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.
#

def include_react_native!(react_native)
  pod 'React', :path => react_native
  pod 'React-Core', :path => "#{react_native}/React", :inhibit_warnings => true
  pod 'React-DevSupport', :path => "#{react_native}/React"
  pod 'React-RCTActionSheet', :path => "#{react_native}/Libraries/ActionSheetIOS"
  pod 'React-RCTAnimation', :path => "#{react_native}/Libraries/NativeAnimation"
  pod 'React-RCTBlob', :path => "#{react_native}/Libraries/Blob"
  pod 'React-RCTImage', :path => "#{react_native}/Libraries/Image"
  pod 'React-RCTLinking', :path => "#{react_native}/Libraries/LinkingIOS"
  pod 'React-RCTNetwork', :path => "#{react_native}/Libraries/Network"
  pod 'React-RCTSettings', :path => "#{react_native}/Libraries/Settings"
  pod 'React-RCTText', :path => "#{react_native}/Libraries/Text", :inhibit_warnings => true
  pod 'React-RCTVibration', :path => "#{react_native}/Libraries/Vibration"
  pod 'React-RCTWebSocket', :path => "#{react_native}/Libraries/WebSocket"

  pod 'React-cxxreact', :path => "#{react_native}/ReactCommon/cxxreact", :inhibit_warnings => true
  pod 'React-jsi', :path => "#{react_native}/ReactCommon/jsi"
  pod 'React-jsiexecutor', :path => "#{react_native}/ReactCommon/jsiexecutor"
  pod 'React-jsinspector', :path => "#{react_native}/ReactCommon/jsinspector"
  pod 'yoga', :path => "#{react_native}/ReactCommon/yoga"

  pod 'DoubleConversion', :podspec => "#{react_native}/third-party-podspecs/DoubleConversion.podspec"
  pod 'glog', :podspec => "#{react_native}/third-party-podspecs/glog.podspec"
  pod 'Folly', :podspec => "#{react_native}/third-party-podspecs/Folly.podspec"
end