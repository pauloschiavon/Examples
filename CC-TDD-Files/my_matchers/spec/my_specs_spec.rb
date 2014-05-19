class SimplestMatcher
  def matches?(actual)
    true
  end 
end

describe 'The matcher protocol' do
  it 'has a #matches?(actual) method' do
    expect('anything').to simple_matcher
  end
  
  def simple_matcher
    SimplestMatcher.new
  end 
end