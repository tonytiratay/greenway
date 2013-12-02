json.array!(@activites) do |activite|
  json.extract! activite, :titre, :description, :typeactivite, :prix, :pays, :adresse, :datedebut, :datefin
  json.url activite_url(activite, format: :json)
end