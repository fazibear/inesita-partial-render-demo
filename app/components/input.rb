class Input
  include Inesita::Component

  def change(e)
    store.set('value', e.target.value)
    render!
  end

  def render
    div do
      h2 { "Input Component" }
    end
    div do
      input type: 'text', value: store.get('value'), onkeyup: method(:change)
    end
  end
end
