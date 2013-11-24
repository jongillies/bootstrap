module HomeHelper
  def db_stats
    tables = {}
    ActiveRecord::Base.connection.tables.each do |table|
      h = ActiveRecord::Base.connection.execute("SHOW TABLE STATUS LIKE '#{table}'")
      h.each(:as => :hash) do |row|
        tables[table] = row
      end
    end
    tables
  end
end
