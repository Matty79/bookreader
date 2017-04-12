require "./bookreader.rb"

sample_text = "Mother did not spend all her time in paying dull calls to dull ladies,
and sitting dully at home waiting for dull ladies to pay calls to her."

sample_hash = {"dull"=>3, "calls"=>2, "to"=>3, "ladies"=>2}

describe '#count' do
  it 'counts occurrences of words' do
    count(sample_text)
     expect(@h).to include("dull" => 3, "calls" => 2)
  end
end

describe '#sort' do
  it 'outputs individual word occurrences' do
    expect(sort(sample_hash)).to include(["dull", 3], ["to", 3])
  end
end

describe '#sort' do
  it 'outputs whether number of word occurrences is a prime number' do
    expect { sort(sample_hash) }.to output("\"to\" occurs 3 times, which is a prime number\n\"dull\" occurs 3 times, which is a prime number\n\"ladies\" occurs 2 times, which is a prime number\n\"calls\" occurs 2 times, which is a prime number\n").to_stdout
  end
end
