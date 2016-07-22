class Input
  include Inesita::Component

  def initialize
    @is_leaf = true
  end

  def init
  end

  def render
    div do
      h2 { "Input Component" }
    end
    div do
      input type: 'text', value: store.get('value'), onchange: -> (e) { store.set('value', e.target.value) }
    end
  end
end
