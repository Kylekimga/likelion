class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      t.integer :age  #명령어도 쳐줘야 함. "rails db:migrate" / "rails db:drop" 입력된 데이터를 확인하는 방식은 rails console -> Post.all
      t.timestamps
    end
  end
end
