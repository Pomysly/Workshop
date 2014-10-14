require 'rails_helper'

RSpec.describe "pedigrees/index", :type => :view do
  before(:each) do
    assign(:pedigrees, [
      Pedigree.create!(
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
      ),
      Pedigree.create!(
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
      )
    ])
  end

  it "renders a list of pedigrees" do
    render
    assert_select "tr>td", :text => "Father".to_s, :count => 2
    assert_select "tr>td", :text => "Mother".to_s, :count => 2
    assert_select "tr>td", :text => "F Father".to_s, :count => 2
    assert_select "tr>td", :text => "F Father".to_s, :count => 2
    assert_select "tr>td", :text => "M Father".to_s, :count => 2
    assert_select "tr>td", :text => "M Mother".to_s, :count => 2
    assert_select "tr>td", :text => "F F Father".to_s, :count => 2
    assert_select "tr>td", :text => "F F Mother".to_s, :count => 2
    assert_select "tr>td", :text => "F M Father".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => "F M Mother".to_s, :count => 2
    assert_select "tr>td", :text => "M F Father".to_s, :count => 2
    assert_select "tr>td", :text => "M F Mother".to_s, :count => 2
    assert_select "tr>td", :text => "M M Father".to_s, :count => 2
    assert_select "tr>td", :text => "M M Mother".to_s, :count => 2
  end
end
