describe 'Testing the exchange rates' do

  before(:all) do 
    @exchange_rates = ParseJson.new("json_exchange_rates.json")
  end

  it 'should be a hash' do 
    expect(@exchange_rates.json_data).to be_kind_of(Hash)
  end

  it 'should be in base EUR' do 
    expect(@exchange_rates.get_base).to eq "EUR"
  end

  it 'should have date string' do
    expect(@exchange_rates.get_date).to be_kind_of(String)
  end

  it "should countain 31 rates" do
    expect((@exchange_rates.get_rates).length).to eq 31 
  end
 

 it "should all rates should be Floats" do
    @exchange_rates.get_rates do |key, value|
      expect(@exchange_rates).to be_kind_of(String)
    end
 end

end
