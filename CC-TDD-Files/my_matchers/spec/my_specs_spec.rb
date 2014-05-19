class SimplestMatcher
  def matches?(actual)
    true
  end 
end

describe 'The matcher protocol' do
  context 'a minimal matcher' do
    it 'has a #matches?(actual) method' do
      expect('anything').to SimplestMatcher.new
    end 
  end
end