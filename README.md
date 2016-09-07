<p align="center">
<img src="http://beichenming.me/img/BMLayoutConstraint_logo.jpg" alt="BMLayoutConstraint" title="BMLayoutConstraint" width="557"/>
</p>

<p align="center">
<a href="http://beichenming.me"><img src="https://img.shields.io/badge/Blog-@%E5%8C%97%E8%BE%B0%E6%98%8E-red.svg?style=flat"></a>
</p>

BMLayoutConstraint is a UI layout adaptation tool, through the JSON configuration file to form fast adaptation to different device and multi language UI layout, apply to iOS and Mac OSX application development, which implement by Objective-C.

BMLayoutConstraint is still in development, welcome to improve the project together.

## Requirements

- iOS 8+
- Xcode 6+

## Language
[中文说明](https://github.com/beichenming/BMLayoutConstraint/blob/master/README-CH.md)


## Example
The premise of using BMLayoutConstraint is our UI layout using Mansory or other code layout, BMLayoutConstraint layout is not suitable for Xib or Storyboard, we have to use Demo as an example.

1.We need to create a directory of the storage configuration file in the project, we create a new four directory to correspond to our device type:
<p align="left">
<img src="device_dir.jpg" alt="BMLayoutConstraint" title="BMLayoutConstraint" width="300"/>
</p>

drawable-iPad(768 * 1024)

drawable-iPhone5_S_C_SE(320 * 568)

drawable-iPhone6_S(375 * 667)

drawable-iPhone6P_S(414 * 736)

Because of the size of iPad is more, so I'm currently using a default size, if there is no match for the size, I'm use 768 * 1024. In future, I will continue to expand.

2:According to the need of adaptation interface, establish the corresponding adaptation file name. For example, I will to adapt to the control layout in ViewController, so I need create four ViewController_XXX.json files end of device name.

JSON configuration file format is through each control has its own unique ID, each ID can be followed by a language identifier to distinguish the same device under the multi language adaptation, can be divided into two kinds of situations:

First: The adaptation of each language under the same device is not the same, so you need to write configuration constraints for each language separately, by the end of the ID additional language identifier.

```
 "UILabel" :
 [
      {
          "bm_ViewControllerPhoneNoLabelID_BM_ZH_HANS_US" :
          {
              "marginLeft" : 30.0,
              "marginRight" : 0.0,
              "marginTop" : 100.0,
              "marginBottom" : 0.0,
              "width" : 100.0,
              "height" : 20.0,
              "fontSize" : 16.0
          }
      },
      {
          "bm_ViewControllerPhoneNoLabelID_BM_EN_US" :
          {
              "marginLeft" : 30.0,
              "marginRight" : 0.0,
              "marginTop" : 100.0,
              "marginBottom" : 0.0,
              "width" : 150.0,
              "height" : 20.0,
              "fontSize" : 16.0
          }
      },
   ]

```
Second: The same device under the adaptation of each language are the same, then we use the common configuration, through the end of the ID additional BM_BASE.

```
 "UILabel" :
 [
      {
          "bm_ViewControllerPhoneNoLabelID_BM_BASE" :
          {
              "marginLeft" : 30.0,
              "marginRight" : 0.0,
              "marginTop" : 100.0,
              "marginBottom" : 0.0,
              "width" : 100.0,
              "height" : 20.0,
              "fontSize" : 16.0
          }
      }
   ]

```
3:Read configuration file when the App didFinishLaunching.

```
 [[BMTLayoutConstraintInterpreter sharedInstance] layoutConstraintAsyncWithContainerName:[self getClassName:[ViewController class]]
  												                     andCompletionCallback:nil];
```

## Blog
[My Blog](http://www.jianshu.com/users/5d1e6bd11aa0)

