defmodule Faker.Superhero.En do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for Superhero data in English
  """

  @doc """
  Returns a Superhero name
  """
  @spec name() :: String.t
  def name, do: name(:crypto.rand_uniform(1, 11))
  defp name(1), do: "#{prefix()} #{descriptor()} #{suffix()}"
  defp name(2), do: "#{prefix()} #{descriptor()}"
  defp name(3), do: "#{descriptor()} #{suffix()}"
  defp name(n) when is_integer(n) do
    "#{descriptor()}"
  end

  @doc """
  Returns a random prefix
  """
  @spec prefix() :: String.t
  sampler :prefix, ["The", "Magnificent", "Ultra", "Supah", "Illustrious",
  "Agent", "Cyborg", "Dark", "Giant", "Mr", "Doctor", "Red", "Green",
  "General", "Captain"]

  @doc"""
  Returns a random suffix
  """
  @spec suffix() :: String.t
  sampler :suffix, ["I", "II", "III", "IX", "XI", "Claw", "Man", "Woman",
  "Machine", "Strike", "X", "Eyes", "Dragon", "Skull", "Fist", "Ivy", "Boy",
  "Girl", "Knight", "Wolf", "Lord", "Brain", "the Hunter", "of Hearts",
  "Spirit", "Strange", "the Fated", "Brain", "Thirteen"]

  @doc"""
  Returns a random descriptor
  """
  @spec descriptor() :: String.t
  sampler :descriptor, ["A-Bomb", "Abomination", "Absorbing", "Ajax",
  "Alien", "Amazo", "Ammo", "Angel", "Animal", "Annihilus", "Ant",
  "Apocalypse", "Aqua", "Aqualad", "Arachne", "Archangel", "Arclight",
  "Ares", "Ariel", "Armor", "Arsenal", "Astro Boy", "Atlas", "Atom",
  "Aurora", "Azrael", "Aztar", "Bane", "Banshee", "Bantam", "Bat", "Beak",
  "Beast", "Beetle", "Ben", "Beyonder", "Binary", "Bird", "Bishop",
  "Bizarro", "Blade", "Blaquesmith", "Blink", "Blizzard", "Blob", "Bloodaxe",
  "Bloodhawk", "Bloodwraith", "Bolt", "Bomb Queen", "Boom Boom", "Boomer",
  "Booster Gold", "Box", "Brainiac", "Brother Voodoo", "Buffy", "Bullseye",
  "Bumblebee", "Bushido", "Cable", "Callisto", "Cannonball", "Carnage", "Cat",
  "Century", "Cerebra", "Chamber", "Chameleon", "Changeling", "Cheetah",
  "Chromos", "Chuck Norris", "Clea", "Cloak", "Cogliostro", "Colin Wagner",
  "Colossus", "Copycat", "Corsair", "Cottonmouth", "Crystal", "Curse",
  "Cy-Gor", "Cyborg", "Cyclops", "Cypher", "Dagger", "Daredevil", "Darkhawk",
  "Darkseid", "Darkside", "Darkstar", "Dash", "Deadpool", "Deadshot",
  "Deathlok", "Deathstroke", "Demogoblin", "Destroyer", "Doc Samson",
  "Domino", "Doomsday", "Doppelganger", "Dormammu", "Ego", "Electro",
  "Elektra", "Elongated Man", "Energy", "ERG", "Etrigan", "Evilhawk",
  "Exodus", "Falcon", "Faora", "Feral", "Firebird", "Firelord", "Firestar",
  "Firestorm", "Fixer", "Flash", "Forge", "Frenzy", "Galactus", "Gambit",
  "Gamora", "Garbage", "Genesis", "Ghost", "Giganta", "Gladiator",
  "Goblin Queen", "Gog", "Goku", "Goliath", "Gorilla Grodd",
  "Granny Goodness", "Gravity", "Groot", "Guardian", "Gardner", "Hancock",
  "Havok", "Hawk", "Heat Wave", "Hell", "Hercules", "Hobgoblin", "Hollow",
  "Hope Summers", "Hulk", "Huntress", "Husk", "Hybrid", "Hyperion", "Impulse",
  "Ink", "Iron Fist", "Isis", "Jack of Hearts", "Jack-Jack", "Jigsaw",
  "Joker", "Jolt", "Jubilee", "Juggernaut", "Junkpile", "Justice", "Kang",
  "Klaw", "Kool-Aid Man", "Krypto", "Leader", "Leech", "Lizard", "Lobo",
  "Loki", "Longshot", "Luna", "Lyja", "Magneto", "Magog", "Magus",
  "Mandarin", "Martian Manhunter", "Match", "Maverick", "Maxima",
  "Maya Herrera", "Medusa", "Meltdown", "Mephisto", "Mera", "Metallo",
  "Metamorpho", "Meteorite", "Metron", "Mimic", "Misfit", "Mockingbird",
  "Mogo", "Moloch", "Molten Man", "Monarch", "Moon Knight", "Moonstone",
  "Morlun", "Morph", "Multiple", "Mysterio", "Mystique", "Namor", "Namorita",
  "Naruto Uzumaki", "Nathan Petrelli", "Niki Sanders", "Nina Theroux",
  "Northstar", "Nova", "Omega Red", "Omniscient", "Onslaught", "Osiris",
  "Overtkill", "Penance", "Penguin", "Phantom", "Phoenix", "Plastique",
  "Polaris", "Predator", "Proto-Goblin", "Psylocke", "Punisher", "Pyro",
  "Quantum", "Question", "Quicksilver", "Quill", "Ra's Al Ghul",
  "Rachel Pirzad", "Rambo", "Raven", "Redeemer", "Renata Soliz", "Rhino",
  "Rick Flag", "Riddler", "Ripcord", "Rocket Raccoon", "Rogue", "Ronin",
  "Rorschach", "Sabretooth", "Sage", "Sasquatch", "Scarecrow", "Scorpia",
  "Scorpion", "Sentry", "Shang-Chi", "Shatterstar", "She-Hulk", "She-Thing",
  "Shocker", "Shriek", "Shrinking Violet", "Sif", "Silk", "Silverclaw",
  "Sinestro", "Siren", "Siryn", "Skaar", "Snowbird", "Sobek", "Songbird",
  "Space Ghost", "Spawn", "Spectre", "Speedball", "Speedy", "Spider", "Spyke",
  "Stacy X", "Star-Lord", "Stardust", "Starfire", "Steel", "Storm", "Sunspot",
  "Swarm", "Sylar", "Synch", "T", "Tempest", "Thanos", "Thing", "Thor",
  "Thunderbird", "Thundra", "Tiger Shark", "Tigra", "Tinkerer", "Titan",
  "Toad", "Toxin", "Toxin", "Trickster", "Triplicate", "Triton", "Two-Face",
  "Ultron", "Vagabond", "Valkyrie", "Vanisher", "Venom", "Vibe", "Vindicator",
  "Violator", "Violet", "Vision", "Vulcan", "Vulture", "Walrus",
  "War Machine", "Warbird", "Warlock", "Warp", "Warpath", "Wasp", "Watcher",
  "White Queen", "Wildfire", "Winter Soldier", "Wiz Kid", "Wolfsbane",
  "Wolverine", "Wondra", "Wyatt Wingfoot", "Yellow", "Yellowjacket", "Ymir",
  "Zatanna", "Zoom"]

  @doc """
  Returns a random Superhero power
  """
  @spec power() :: String.t
  sampler :power, ["Ability Shift", "Absorption", "Accuracy", "Adaptation",
  "Aerokinesis", "Agility", "Animal Attributes", "Animal Control",
  "Animal Oriented Powers", "Animation", "Anti-Gravity", "Apotheosis",
  "Astral Projection", "Astral Trap", "Astral Travel", "Atmokinesis",
  "Audiokinesis", "Banish", "Biokinesis", "Bullet Time", "Camouflage",
  "Changing Armor", "Chlorokinesis", "Chronokinesis", "Clairvoyance",
  "Cloaking", "Cold Resistance", "Cross-Dimensional Awareness",
  "Cross-Dimensional Travel", "Cryokinesis", "Danger Sense",
  "Darkforce Manipulation", "Death Touch", "Density Control", "Dexterity",
  "Duplication", "Durability", "Echokinesis", "Elasticity",
  "Electrical Transport", "Electrokinesis", "Elemental Transmogrification",
  "Empathy", "Endurance", "Energy Absorption", "Energy Armor", "Energy Beams",
  "Energy Blasts", "Energy Constructs", "Energy Manipulation",
  "Energy Resistance", "Enhanced Hearing", "Enhanced Memory",
  "Enhanced Senses", "Enhanced Sight", "Enhanced Smell", "Enhanced Touch",
  "Entropy Projection", "Fire Resistance", "Flight", "Force Fields",
  "Geokinesis", "Gliding", "Gravitokinesis", "Grim Reaping", "Healing Factor",
  "Heat Generation", "Heat Resistance", "Human physical perfection",
  "Hydrokinesis", "Hyperkinesis", "Hypnokinesis", "Illumination", "Illusions",
  "Immortality", "Insanity", "Intangibility", "Intelligence",
  "Intuitive aptitude", "Invisibility", "Invulnerability", "Jump",
  "Lantern Power Ring", "Latent Abilities", "Levitation", "Longevity",
  "Magic", "Magic Resistance", "Magnetokinesis", "Matter Absorption",
  "Melting", "Mind Blast", "Mind Control", "Mind Control Resistance",
  "Molecular Combustion", "Molecular Dissipation", "Molecular Immobilization",
  "Molecular Manipulation", "Natural Armor", "Natural Weapons", "Nova Force",
  "Omnilingualism", "Omnipotence", "Omnitrix", "Orbing", "Phasing",
  "Photographic Reflexes", "Photokinesis", "Physical Anomaly",
  "Portal Creation", "Possession", "Power Absorption", "Power Augmentation",
  "Power Cosmic", "Power Nullifier", "Power Sense", "Power Suit",
  "Precognition", "Probability Manipulation", "Projection", "Psionic Powers",
  "Psychokinesis", "Pyrokinesis", "Qwardian Power Ring", "Radar Sense",
  "Radiation Absorption", "Radiation Control", "Radiation Immunity",
  "Reality Warping", "Reflexes", "Regeneration", "Resurrection",
  "Seismic Power", "Self-Sustenance", "Separation", "Shapeshifting",
  "Size Changing", "Sonar", "Sonic Scream", "Spatial Awareness", "Stamina",
  "Stealth", "Sub-Mariner", "Substance Secretion", "Summoning",
  "Super Breath", "Super Speed", "Super Strength", "Symbiote Costume",
  "Technopath/Cyberpath", "Telekinesis", "Telepathy", "Telepathy Resistance",
  "Teleportation", "Terrakinesis", "The Force", "Thermokinesis",
  "Thirstokinesis", "Time Travel", "Timeframe Control", "Toxikinesis",
  "Toxin and Disease Resistance", "Umbrakinesis", "Underwater breathing",
  "Vaporising Beams", "Vision - Cryo", "Vision - Heat", "Vision - Infrared",
  "Vision - Microscopic", "Vision - Night", "Vision - Telescopic",
  "Vision - Thermal", "Vision - X-Ray", "Vitakinesis", "Wallcrawling",
  "Weapon-based Powers", "Weapons Master", "Web Creation", "Wishing"]
end
