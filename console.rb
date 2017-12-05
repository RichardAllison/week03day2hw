require ('pry-byebug')
require_relative('./models/bounty_hunter.rb')

BountyHunter.delete_all()

bounty_hunter1 = BountyHunter.new({
  'name' => 'Boba Fett',
  'species'  => 'human clone',
  'weapon'  => 'blaster',
  'bounty_value' => '900'
})
bounty_hunter2 = BountyHunter.new({
  'name' => 'Jango Fett',
  'species'  => 'human',
  'weapon'  => 'rocket',
  'bounty_value' => '100'
})

bounty_hunter1.save()
bounty_hunter2.save()

bounty_hunter1.name = ("Trevor Fett")
bounty_hunter1.update

p BountyHunter.find('12')

bounty_hunter1.delete

binding.pry
nil
