Dir[File.join(File.dirname(__FILE__),
              '../class/*.rb')].sort.each { |file| require file }

module ClassObjects

  def common
    Common.new
  end

  def enumerationsVrpat
    EnumerationsVrpat.new
  end

  def removeTextos
    RemoveTextos.new
  end

end