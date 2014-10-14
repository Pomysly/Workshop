require 'rails_helper'

RSpec.describe "pedigrees/new", :type => :view do
  before(:each) do
    assign(:pedigree, Pedigree.new(
      :father => "MyString",
      :mother => "MyString",
      :f_father => "MyString",
      :f_father => "MyString",
      :m_father => "MyString",
      :m_mother => "MyString",
      :f_f_father => "MyString",
      :f_f_mother => "MyString",
      :f_m_father => "MyString",
      :string => "MyString",
      :f_m_mother => "MyString",
      :m_f_father => "MyString",
      :m_f_mother => "MyString",
      :m_m_father => "MyString",
      :m_m_mother => "MyString"
    ))
  end

  it "renders new pedigree form" do
    render

    assert_select "form[action=?][method=?]", pedigrees_path, "post" do

      assert_select "input#pedigree_father[name=?]", "pedigree[father]"

      assert_select "input#pedigree_mother[name=?]", "pedigree[mother]"

      assert_select "input#pedigree_f_father[name=?]", "pedigree[f_father]"

      assert_select "input#pedigree_f_father[name=?]", "pedigree[f_father]"

      assert_select "input#pedigree_m_father[name=?]", "pedigree[m_father]"

      assert_select "input#pedigree_m_mother[name=?]", "pedigree[m_mother]"

      assert_select "input#pedigree_f_f_father[name=?]", "pedigree[f_f_father]"

      assert_select "input#pedigree_f_f_mother[name=?]", "pedigree[f_f_mother]"

      assert_select "input#pedigree_f_m_father[name=?]", "pedigree[f_m_father]"

      assert_select "input#pedigree_string[name=?]", "pedigree[string]"

      assert_select "input#pedigree_f_m_mother[name=?]", "pedigree[f_m_mother]"

      assert_select "input#pedigree_m_f_father[name=?]", "pedigree[m_f_father]"

      assert_select "input#pedigree_m_f_mother[name=?]", "pedigree[m_f_mother]"

      assert_select "input#pedigree_m_m_father[name=?]", "pedigree[m_m_father]"

      assert_select "input#pedigree_m_m_mother[name=?]", "pedigree[m_m_mother]"
    end
  end
end
