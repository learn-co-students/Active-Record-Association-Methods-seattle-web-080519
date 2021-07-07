Song.delete_all
Genre.delete_all
Artist.delete_all

hotline_bling = Song.create(:name=>'Hotline Bling')
thriller = Song.create(:name=>'Thriller')
golden_years = Song.create(:name=>'Golden Years')
boop = Song.create(:name=>'Boop')

drake = Artist.create(:name=>'Drake')
mj = Artist.create(:name=>'Michael Jackson')
bowie = Artist.create(:name=>'David Bowie')

rap = Genre.create(:name=>'Rap')
pop = Genre.create(:name=>'Pop')

hotline_bling.artist = drake
thriller.artist = mj
golden_years.artist = bowie

drake.songs << hotline_bling
mj.songs << thriller
bowie.songs << golden_years

rap.songs << hotline_bling
pop.songs << thriller
pop.songs << golden_years






# Xxxxxxx


# Song.delete_all
# Genre.delete_all
# Artist.delete_all

# hotline_bling = Song.create(:name=>'Hotline Bling')
# thriller = Song.create(:name=>'Thriller')
# golden_years = Song.create(:name=>'Golden Years')
# boop = Song.create(:name=>'Boop')

# mj = Artist.create(:name=>'Michael Jackson')
# bowie = Artist.create(:name=>'David Bowie')

# rap = Genre.create(:name=>'Rap')
# pop = Genre.create(:name=>'Pop')

# thriller.artist = mj
# golden_years.artist = bowie

# mj.songs << thriller
# bowie.songs << golden_years

# rap.songs << hotline_bling
# pop.songs << thriller
# pop.songs << golden_years