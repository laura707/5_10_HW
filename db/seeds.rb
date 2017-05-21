#씨드 파일
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
new_post=Post.new
new_post.title="제목제목"
new_post.content="sodsfdsfd"
new_post.save

Post.create(title: "안녕", content: "내용")

Comment.create(:content => '댓글', :post_id => 1)#"" 아니고 ''써야함
#rake db:seed를 bash창에!