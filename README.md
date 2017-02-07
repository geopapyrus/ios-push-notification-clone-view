
# How to use it

Incorporate the changes in your App Delegate. Then use the snippet below to display the popup on your view controller.

```
AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];

[appDelegate presentPushNotificationWithAppName:@"SNAPCHAT" iconURLString:@"http://is3.mzstatic.com/image/thumb/Purple122/v4/19/63/e8/1963e836-9a9c-55b1-d4df-e5c6391129de/mzl.lnaiedte.png/100x100bb-85.png" message:@"You have a new message" time:@"now"];
```
    
    
# Demo

![alt tag](https://raw.githubusercontent.com/geopapyrus/ios-push-notification-clone-view/master/demo.gif)

