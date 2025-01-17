class Animal

    # Animal#weight should return the weight of the animal.
    attr_accessor :weight

    # Animal#nickname should return the nickname of the animal.
    # Animal#species should return the species of the animal.
    # Animal#zoo should return the zoo instance that the instance belongs to.
    attr_reader :nickname, :species, :zoo

    @@all = []

    # An animal should be instantiated with the species (e.g. "Cat", "Dog", "Rat"), a numerical weight and a nickname. Keep in mind that the animal's species and nickname should not be able to change, but its weight can.
    def initialize(nickname, species, weight, zoo)
        @nickname = nickname
        @species = species
        @weight = weight
        @zoo = zoo

        @@all << self
    end

    # Animal.all should return an array of all the animal instances.
    def self.all
        @@all
    end

    # Animal.find_by_species should take in an animal's species as an argument and return an array of all the animals, which are of that species.
    def self.find_by_species(species)
        self.all.select {|animal| animal.species == species}
    end

end
