begin
  require "bundler/inline"
rescue LoadError => e
  $stderr.puts "Bundler version 1.10 or later is required. Please update your Bundler"
  raise e
end

gemfile(true) do
  source "https://rubygems.org"
  gem "rails", github: "rails/rails"
  gem "arel", github: "rails/arel"
  gem "pry"
  gem "sqlite3"
end

require "active_record"
require "logger"

# This connection will do for database-independent bug reports.
ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: ":memory:")
ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Schema.define do
  create_table :as, force: true do |t|
    t.integer :number
  end

  create_table :bs, force: true do |t|
    t.integer :number
    t.integer :a_id
  end

  create_table :cs, force: true do |t|
    t.integer :number
    t.integer :b_id
  end
end

class A < ActiveRecord::Base
  has_one :b, inverse_of: :a

  accepts_nested_attributes_for :b
end

class B < ActiveRecord::Base
  belongs_to :a, inverse_of: :b
  has_many :cs, inverse_of: :b

  accepts_nested_attributes_for :cs
end

class C < ActiveRecord::Base
  belongs_to :b, inverse_of: :cs

  after_initialize :reference_a

  def reference_a
    # causes an exception because a is nil when saving from a nested chain
    self.number = self.b.a.number
  end
end

# works without a problem
a = A.new(number: 12)
a.build_b(number: 15)
a.b.cs.build
a.save!

# does not work because the B to A association is missing on C's after_initialize when everything is built at the same time by rails' nested attributes
binding.pry
params = {a: {number: "12", b_attributes: {"number": "15", cs_attributes: {"0": {number: "17"}}}}}
A.new.assign_attributes(params[:a])
