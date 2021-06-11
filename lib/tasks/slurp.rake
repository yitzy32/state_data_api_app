namespace :slurp do
  desc "TODO"
  task state_data: :environment do
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "state_data.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      s = StateDatum.new
      s.state = row["state"]
      s.median_household_income = row["median_household_income"]
      s.share_unemployed_seasonal = row["share_unemployed_seasonal"]
      s.share_population_in_metro_areas = row["share_population_in_metro_areas"]
      s.share_population_with_high_school_degree = row["share_population_with_high_school_degree"]
      s.save
    end
  end

  task abbreviation: :environment do
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "abbreviations.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      s = StateDatum.find_by(state: row["State"])
      s.abbrev = row["Abbrev"]
      s.state_code = row["Code"]
      s.save
    end
  end
end
