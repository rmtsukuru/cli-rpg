class Options
  attr_reader :options

  def initialize(options)
    @options = options
  end

  def ===(text)
    options === text or options.include? text
  end
end
