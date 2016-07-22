class Clock
  include Inesita::Component

  def initialize
    @time = Time.now
    every 1 do
      @time = Time.now
      render!
    end
  end

  def init
  end

  def render
    div do
      h2 { "Clock Component" }
    end
    div class: 'clock' do
      text @time.strftime('%r')
    end
    div do
      input type: 'text', value: store.get('value'), onkeyup: -> (e) { store.set('value', e.target.value); render! }
    end
  end
end
