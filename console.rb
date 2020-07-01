require('pry-byebug')
require_relative('models/artist.rb')
require_relative('models/album.rb')

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({'name' => 'Lewis Capaldi'})
artist1.save()

artist2 = Artist.new({'name' => 'Ewan Dobson'})
artist2.save()

artist3 = Artist.new({'name' => '50 Cent'})
artist3.save()

artist4 = Artist.new({'name' => 'Johnny Bravo'})
artist4.save()

artist4.name = 'Joe Bravo'
artist4.update()

# Artists.all()

album1 = Album.new({
'title' => 'Tell my why?',
'genre' => 'Pop',
'artist_id' => artist1.id })
album1.save()

album1.title = 'Neverending'
album1.update()

album2 = Album.new({
'title' => 'Acoustic Metal',
'genre' => 'Rock',
'artist_id' => artist2.id })
album2.save()

album3 = Album.new({
'title' => 'Yo yo, sup?',
'genre' => 'Hip-hop',
'artist_id' => artist3.id })
album3.save()

album4 = Album.new({
'title' => 'Scarlatti',
'genre' => 'Rock',
'artist_id' => artist2.id })
album4.save()

album5 = Album.new({
'title' => 'Lost On You',
'genre' => 'Pop',
'artist_id' => artist1.id })
album5.save()

album6 = Album.new({
'title' => 'Bruises',
'genre' => 'Pop',
'artist_id' => artist1.id })
album6.save()




binding.pry
nil