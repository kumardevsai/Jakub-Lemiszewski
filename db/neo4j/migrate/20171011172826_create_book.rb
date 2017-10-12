class CreateBook < Neo4j::Migrations::Base
  def up
    add_constraint :Book, :uuid
  end

  def down
    drop_constraint :Book, :uuid
  end
end
