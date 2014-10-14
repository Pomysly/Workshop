class CreatePedigrees < ActiveRecord::Migration
  def change
    create_table :pedigrees do |t|
      t.string :father
      t.string :mother
      t.string :f_father
      t.string :f_mother
      t.string :m_father
      t.string :m_mother
      t.string :f_f_father
      t.string :f_f_mother
      t.string :f_m_father
      t.string :f_m_mother
      t.string :m_f_father
      t.string :m_f_mother
      t.string :m_m_father
      t.string :m_m_mother

      t.timestamps
    end
  end
end
