# AwesomeSDK (Dynamic)

[TOC]

## 1、介绍AwesomeSDK

AwesomeSDK，是个Dummy工程，用于生成动态framework。然后使用CocoaPods集成这个framework，进行开发和测试。

说明

> Xcode工程，可以配置生成动态framework。这里AwesomeSDK工程，使用CocoaPod方式，生成动态framework



### (1) podspec

AwesomeSDK提供两种podspec

* AwesomeSDK_development.podspec，支持源码集成
* AwesomeSDK_production.podspec，支持framework集成，framework放在Product文件夹下，使用Example工程来生成framework。



### (2) 自动拷贝framework到Product文件夹

Example/Podfile

```ruby
...
# Configurations
run_script_name = '[Podfile] Copy To Product Folder'
script_content = 'rsync -arv "${CONFIGURATION_BUILD_DIR}" "${PROJECT_DIR}/../../Product/"'

post_install do |installer|
  installer.pods_project.targets.each do |target|
    if target.name == 'AwesomeSDK'
      new_phase = target.new_shell_script_build_phase(run_script_name)
      new_phase.shell_script = script_content
    end
  end

  installer.pods_project.save(installer.pods_project.path)
end
```