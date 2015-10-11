# protospace
userテーブル
/avater
/user_name
/works
/profile
/e-mail
/password
/menber

protoテーブル
/title
/cathcopy
/consept
/user_id

commentテーブル
/user_id
/text
/prototype

tagテーブル
/tag

imageテーブル
sub/user_id
main/protostype_id

user has_many protos
              comments

proto belongs_to user
                 tag
      has_many   comments

comment belongs_to user
                   proto

tag has_many proto

image belongs_to user
      belongs_to proto