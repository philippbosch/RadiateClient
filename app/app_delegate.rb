class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    application.setStatusBarStyle(UIStatusBarStyleBlackOpaque, animated:true)
    mvc = MainViewController.alloc.init
    @window.rootViewController = mvc
    @window.makeKeyAndVisible()
    true
  end
end
