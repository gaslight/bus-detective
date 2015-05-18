require 'rails_helper'

RSpec.describe TsqueryBuilder do

  it 'a single value is simple' do
    expect(TsqueryBuilder.build('Main')).to eq('(main)')
  end

  it 'values separated by and are separated' do
    expect(TsqueryBuilder.build('Main and Bar')).to eq('(main) & (bar)')
  end

  it 'multiple values are anded together' do
    expect(TsqueryBuilder.build('Main Bar')).to eq('(main & bar)')
  end

  it 'provides substitutions' do
    expect(TsqueryBuilder.build('Main St and Twelfth Ave')).to eq('(main & (street | st | str)) & ((12 | twelfth | 12th) & (avenue | ave))')
  end
end
