class CreateStudents < ActiveRecord::Migration[5.1]
  
  #create table with ActiveRecord 
  #Define change method and use Active Record create_table, tbale should have a :name TEXT , string 
  #run rake db:migrate after change method 
  
  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name TEXT)
    SQL
 
    ActiveRecord::Base.connection.execute(sql)
  end 
  
  def change
    create_table :students do |t|
      t.string :name 
    end 
  end 
  
end
