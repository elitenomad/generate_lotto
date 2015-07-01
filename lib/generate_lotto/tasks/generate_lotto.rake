namespace :generate_lotto do
  desc "Generate random numbers"
  task :generate_numbers do
    puts GenerateLotto::Drawing.new.draw
  end
end