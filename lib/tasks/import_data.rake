require 'smarter_csv'

namespace :db do
  desc "Import data from CSV"
  task import_data: :environment do
    file_path = Rails.root.join('references', 'food.CSV')
    
    SmarterCSV.process(file_path, {col_sep: ';'}) do |chunk|
      chunk.each do |row|
        Food.create!(
          name: row[:name],
          moisture: row[:moisture],
          kcal: row[:kcal],
          kj: row[:kj],
          protein: row[:protein],
          lipids: row[:lipids],
          cholesterol: row[:cholesterol],
          carbohydrates: row[:carbohydrates],
          dietary_fiber: row[:dietary_fiber],
          ash: row[:ash],
          calcium: row[:calcium],
          magnesium: row[:magnesium],
          manganese: row[:manganese],
          phosphorus: row[:phosphorus],
          iron: row[:iron],
          sodium: row[:sodium],
          potassium: row[:potassium],
          copper: row[:copper],
          zinc: row[:zinc],
          retinol: row[:retinol],
          re: row[:re],
          rae: row[:rae],
          thiamin: row[:thiamin],
          riboflavin: row[:riboflavin],
          pyridoxine: row[:pyridoxine],
          niacin: row[:niacin],
          vitamin_c: row[:vitamin_c]
        )
      end
    end

    puts "Data imported successfully!"
  end
end
