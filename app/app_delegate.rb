class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    application.setStatusBarStyle(UIStatusBarStyleBlackOpaque, animated:true)
    @window.rootViewController = MainViewController.alloc.init
    @window.makeKeyAndVisible()
    true
  end
end
