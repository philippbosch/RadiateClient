class MainViewController < UIViewController
  stylesheet :main

  layout :root do
    @counter = subview(UILabel, :counter)
    @counter.text = "-1"
  end
end