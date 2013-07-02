require 'spec_helper'

describe 'Code gen: no return' do
  it "codegens if with NoReturn on then and union on else" do
    run(%(require "prelude"; (if 1 == 2; exit; else; 1 || 2.5; end).to_i)).to_i.should eq(1)
  end
end
