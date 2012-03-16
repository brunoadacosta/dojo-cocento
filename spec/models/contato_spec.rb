require "spec_helper"

describe Contato do 
  context "validations" do 
    subject {Contato.create.errors}
    
    its([:nome]) {should_not be_empty}
    
    it "accepts attributes" do
      subject = Contato.new(:nome => "Bruno")
      subject.should be_valid
    end
  end
end