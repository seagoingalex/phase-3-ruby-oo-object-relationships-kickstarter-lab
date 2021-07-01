require "pry"
require_relative "./backer"
require_relative "./project_backer"
require_relative "./project"

book = Project.new('Ruby, Ruby, and More Ruby')
magic = Project.new('Magic The Gathering Thing')
karaoke = Project.new('Karaoke')
steven = Backer.new('Steven')
spencer = Backer.new('Spencer')
meryl = Backer.new('Meryl')

meryl.back_project(karaoke)
steven.back_project(karaoke)
steven.back_project(magic)
spencer.back_project(book)
meryl.back_project(book)

binding.pry