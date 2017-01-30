require 'mysql2'
require 'yaml'
require 'pry'

class Hash
  def key_to_sym
    self.inject({}) do |hash, (key, value)|
      value = value.key_to_sym if value.class == Hash
      hash[key.to_sym] = value
      hash
    end
  end
end

File.open('database.yml') do |config|
  CONFIG = YAML.load(config.read).key_to_sym
end

class DB
  def initialize(user, columns)
    @table = {name: user, columns: parseTable(columns)}
    @client = connect
  end

  def create_database
    @client.query("CREATE DATABASE #{CONFIG[:development][:database_name]};")
  end

  def create_table
    select_database
    @client.query("CREATE TABLE #{@table[:name]} (#{@table[:columns]});")
  end

  def columns_header
    select_database
    header = []
    @client.query("DESCRIBE user;").each do |row|
      header << row.key_to_sym[:Field]
    end
    p header.join(', ')
  end

  private

  def connect
    Mysql2::Client.new(host: "#{CONFIG[:development][:host]}", username: "#{CONFIG[:development][:username]}")
  end

  def select_database
    @client.query("USE #{CONFIG[:development][:database_name]};")
  end

  def parseTable(columns)
    columns = columns.inject('') do |table, column|
      table += "#{column.keys[0]} #{column.values[0]}, "
      table
    end
    columns[0...-2]
  end
end

db = DB.new('user', [{name: 'VARCHAR(20)'}, {age: 'INTEGER'}])
# db.create_database
# db.create_table
db.columns_header
