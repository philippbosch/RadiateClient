class MainViewController < UIViewController
  stylesheet :main

  layout :root do
    @counter = subview(UILabel, :counter)
  end

  def viewDidLoad
    if super
      BW::HTTP.get("http://radiate.herokuapp.com/counter") do |response|
        if response.ok?
          json = BW::JSON.parse(response.body.to_str)
          @counter.text = json['value']
        else
          App.alert(response.error_message)
        end
      end

      @bully = BLYClient.alloc.initWithAppKey("eed0809a13bc35456e5e", delegate:self)
      @channel = @bully.subscribeToChannelWithName('updates')
      @channel.bindToEvent('update:counter', block: lambda do |message|
        @counter.text = message['value']
      end)

      buttons = RBVolumeButtons.alloc.init

      buttons.upBlock = lambda do
        UIApplication.sharedApplication.setNetworkActivityIndicatorVisible(true)
        BW::HTTP.put("http://radiate.herokuapp.com/counter", {payload: {action: 'INCR'}}) do |response|
          UIApplication.sharedApplication.setNetworkActivityIndicatorVisible(false)
        end
      end

      buttons.downBlock = lambda do
        UIApplication.sharedApplication.setNetworkActivityIndicatorVisible(true)
        BW::HTTP.put("http://radiate.herokuapp.com/counter", {payload: {action: 'DECR'}}) do |response|
          UIApplication.sharedApplication.setNetworkActivityIndicatorVisible(false)
        end
      end

    end
  end

  def shouldAutorotateToInterfaceOrientation(orientation)
    autorotateToOrientation(orientation)
  end
end