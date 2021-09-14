class Post < ApplicationRecord
  def comments
    return ["hello", "bye"]
  end
end
