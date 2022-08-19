
To run this example open the *MapBoxCrash.xcworkspace* and then:

- You must configure your access token in `AppDelegate.setupMapbox()`, and your style URL in `ViewController`. Search for *YOURS* in the codebase.
- on a simulator iOS 15+ it crash more or less 100% of the time. _I tested on iPhone 13, iOS 15.5 for example._
- use any simulator in iOS 14.x and see that it work each time. _I tested on iPhone X, iOS 14.5 for example._

There is a bug in Xcode and/or the simulator so that the first time you run the location isn't simulated. Re-run and begin the crashing. Also don't forget to accept the popup for location ("Allow While Using App"), on that run it never crash for me.

It may help to change the zoom/view a bit by some pan and zoom. Then re-run. For me it helped make it crash 100% everytime.

If it never crash for you then maybe it is in the style ? Maybe it contain something that cause the crash ? We could discuss from there in that case.
