class Bridge
  def initialize
    puts "bridge created"
    @opened = false
  end
  def open
    puts "bridge is open, you can get through now"
    @opened = true
  end
  def is_opened?
    return @opened
  end
end