require 'rails_helper'

RSpec.describe "pedigrees/show", :type => :view do
  before(:each) do
    @pedigree = assign(:pedigree, Pedigree.create!(
      :father => "Father",
      :mother => "Mother",
      :f_father => "F Father",
      :f_father => "F Father",
      :m_father => "M Father",
      :m_mother => "M Mother",
      :f_f_father => "F F Father",
      :f_f_mother => "F F Mother",
      :f_m_father => "F M Father",
      :string => "String",
      :f_m_mother => "F M Mother",
      :m_f_father => "M F Father",
      :m_f_mother => "M F Mother",
      :m_m_father => "M M Father",
      :m_m_mother => "M M Mother"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Father/)
    expect(rendered).to match(/Mother/)
    expect(rendered).to match(/F Father/)
    expect(rendered).to match(/F Father/)
    expect(rendered).to match(/M Father/)
    expect(rendered).to match(/M Mother/)
    expect(rendered).to match(/F F Father/)
    expect(rendered).to match(/F F Mother/)
    expect(rendered).to match(/F M Father/)
    expect(rendered).to match(/String/)
    expect(rendered).to match(/F M Mother/)
    expect(rendered).to match(/M F Father/)
    expect(rendered).to match(/M F Mother/)
    expect(rendered).to match(/M M Father/)
    expect(rendered).to match(/M M Mother/)
  end
end
