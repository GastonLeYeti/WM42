p "#############################################"
p "#############################################"
p "PARTY SEEDS"
p "#############################################"
p "#############################################"

p "Destroying all parties ..."
Party.destroy_all

p "Creating parties..."

party1 = Party.new(
  :user_id             => userId,
  :name                => "Dans le désert glauque du turfu post apocalyptique",
  :universe_id         => universeId,
  :bible               => "The world as we knew it had ended. The earth is now a barren wasteland,
  covered in endless deserts and scattered ruins of the old world. No signs of hope or joy remains :
  just the struggle for survival. The few remaining humans and androids had to learn to adapt quickly
  to the harsh and unforgiving environment or perish.

  You are part of a small group of survivors who have banded together for protection and mutual survival.
  You've learned that the only way to make it in this new world is to be smart and resourceful.
  You scavenge for food and water, salvage what you can from the ruins of the past, and trade for
  goods and supplies with other survivors.

  But survival in this world isn't just about finding food and water. The wasteland is filled with
  dangers: mutated creatures, raiders, and the occasional rogue machine left over from the old world.
  You must be prepared to defend yourself and your group against any threat that comes your way.
  As you travel through the desolate wasteland, you hear rumors of a place called the 'Oasis'.
  It's said to be a place of lush vegetation and clean water, a place where life can thrive again.
  But the journey to the Oasis is treacherous, and few have ever made it back to tell the tale.
  Will you and your group take the risk and make the journey to the Oasis in search of a better life?
  Or will you continue to survive in the unforgiving wasteland, always on the lookout for the next threat?
  The choice is yours, but one thing is certain: in this post-apocalyptic world, only the fittest and
  smartest will survive.",
)
party1.save!
p "party 'Dans le désert glauque du turfu post apocalyptique' created!"
