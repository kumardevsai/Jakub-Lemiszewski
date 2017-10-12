class Book 
  include Neo4j::ActiveNode

  property :name, type: String
  property :title, type: String
  property :version, type: Float

  has_one :in,   :author, type: :CREATED, model_class: :User
  has_many :out, :categories, type: :HAS_CATEGORY

  #def self.recommendations
  #  	recommendations = all(:book).
  #  						categories(:category).
  #  						books(:other_book).
  #  						where('book <> author').
  #  						query.
  #  						with('book, other_book, count(category) AS count').
  #  						where('count > 1').
  #  						pluck('book.name', 'collect(other_book)')
  #  	Hash[*recommendations.flatten(1)]
  #  end

end
