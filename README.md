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
/image_url
/cathcopy
/consept
/user_id

commentテーブル
/user_id
/text

tagテーブル
/tag

user has_many protos
              comments

proto belongs_to user
                 tag
      has_many   comments

comment belongs_to user
                   proto

tag has_many proto