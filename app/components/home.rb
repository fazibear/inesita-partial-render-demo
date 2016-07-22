class Home
  include Inesita::Component

  def render
    component Input
    component Clock
  end
end
