# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Books extension
Refinery::Books::Engine.load_seed

# Added by Refinery CMS Ifgroups extension
Refinery::Ifgroups::Engine.load_seed

# Added by Refinery CMS Members extension
Refinery::Members::Engine.load_seed

# Added by Refinery CMS Subscriptions extension
Refinery::Subscriptions::Engine.load_seed
