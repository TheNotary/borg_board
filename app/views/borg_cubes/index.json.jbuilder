json.array!(@borg_cubes) do |borg_cube|
  json.extract! borg_cube, :id, :name, :hp, :x, :y, :sleeping_borg, :waking_borg
  json.url borg_cube_url(borg_cube, format: :json)
end
