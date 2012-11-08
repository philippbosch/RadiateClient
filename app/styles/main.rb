Teacup::Stylesheet.new(:main) do
  style :root,
    landscape: false

  style :counter,
    top: 20,
    left: 20,
    width: 280,
    height: 440,
    backgroundColor: UIColor.clearColor,
    textColor: UIColor.whiteColor,
    textAlignment: UITextAlignmentCenter,
    font: UIFont.systemFontOfSize(100)

end