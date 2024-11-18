categories = Category.create!(
  [
    { name: 'Technologie', description: 'Ressources liées à la technologie.' },
    { name: 'Éducation', description: 'Ressources éducatives pour les étudiants.' },
    { name: 'Santé', description: 'Ressources liées à la santé et au bien-être.' },
    { name: 'Voyages', description: 'Ressources liées aux voyages et aux destinations.' },
    { name: 'Entreprise', description: 'Ressources pour les entrepreneurs et les professionnels.' }
  ]
)

20.times do |i|
  Resource.create!(
    name: "Ressource #{i+1}",
    description: "Description de la ressource #{i+1}",
    price: rand(10..100),
    image: "https://via.placeholder.com/150?text=Ressource+#{i+1}",
    category: categories.sample,
    resource_type: [ true, false ].sample,
    link_url: [ nil, "https://example.com/ressource#{i+1}" ].sample
  )
end

10.times do
  resource = Resource.order("RANDOM()").first
  PurchasedResource.create!(
    resource: resource,
    price_paid: resource.price,
    purchased_at: Time.now - rand(1..30).days
  )
end

puts "Seeds créés avec succès !"
