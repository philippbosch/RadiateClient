Teacup::Stylesheet.new(:main) do
  style :root,
    landscape: true,
    backgroundColor: UIColor.blackColor

  style :counter,
    width: UIScreen.mainScreen.bounds.size.width,
    height: 200,
    center: [(UIScreen.mainScreen.bounds.size.width-20)/2, UIScreen.mainScreen.bounds.size.height/2],
    backgroundColor: UIColor.clearColor,
    textColor: UIColor.whiteColor,
    textAlignment: UITextAlignmentCenter,
    font: UIFont.systemFontOfSize(150),
    landscape: {
      width: UIScreen.mainScreen.bounds.size.height,
      center: [UIScreen.mainScreen.bounds.size.height/2, (UIScreen.mainScreen.bounds.size.width-20)/2]
    }
end