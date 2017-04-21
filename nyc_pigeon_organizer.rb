def nyc_pigeon_organizer(data)
  birds = {}
  data.each do |description_keys, descriptions|
    descriptions.each do |keys, names|
      names.each do |name|
        birds[name] ||= {}
        birds[name][description_keys] ||= []
        birds[name][description_keys] << keys.to_s
      end
    end
  end
  birds
end
