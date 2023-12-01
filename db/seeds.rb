puts 'Gerando sites...'

5.times do |i|
  Site.create(
    url: ["www.debian.org", "www.openbsd.org"].sample ,
    description: "site de sistema nix"
    )
end

puts 'sites gerados com sucesso!'