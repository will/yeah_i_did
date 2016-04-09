module DidYouMean
  def self.yeah_i_did
    begin
      yield
    rescue NoMethodError => e
      e.receiver.send(e.corrections.first, *e.args)
    end
  end
end
