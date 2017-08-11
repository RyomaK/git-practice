# API
## 課題1
### 1.調べたWebサービスの名前
Twitter
### 2.APIの認証方法とその仕組み
[Twitter Developer Documentation](https://dev.twitter.com/docs) 参照
基本的に__OAuth認証__を行うようです．ただ，ユーザーの目的によって__Application-only authentication__などの認証方法があるそうです．

__OAuth認証__
まず，アプリケーションをtwitteのデベロッパーサイトに登録し，APIキーを取得します．
1.APIキーを用いてリクエストトークンを取得
2.リクエストトークンを用いてユーザが認証画面へ飛び認証
3.アプリケーションはtwitterからアクセすトークンを取得
このアクセストークンを用いてOAuth認証の処理を行うそうです．

### 3.APIのレスポンスのフォーマットとそのフォーマットの特徴
全てJSON形式で返ってきます．
ヘッダにはAPI制限に関するデータが含まれているいます．
特徴としてはJSON形式を用いることにより，
- 可読性が高い
- javascriptで扱える
- データの送受信が簡単

[JSONメリット参考](https://developer.ntt.com/ja/blog/5%E5%88%86%E3%81%A7%E5%88%86%E3%81%8B%E3%82%8BWebAPI)
[レスポンス参考](https://syncer.jp/Web/API/Twitter/REST_API/GET/statuses/user_timeline/)



リクエスト成功した時の__GET favorites/list__のサンプル 
HTTPステータスコードは200です．
```JSON
[
  {
    "coordinates": null,
    "truncated": false,
    "favorited": true,
    "created_at": "Tue Sep 04 15:55:52 +0000 2012",
    "id_str": "243014525132091393",
    "in_reply_to_user_id_str": null,
    "entities": {
      "urls": [

      ],
      "hashtags": [

      ],
      "user_mentions": [

      ]
    },
    "text": "Note to self:  don't die during off-peak hours on a holiday weekend.",
    "contributors": null,
    "id": 243014525132091393,
    "retweet_count": 0,
    "in_reply_to_status_id_str": null,
    "geo": null,
    "retweeted": false,
    "in_reply_to_user_id": null,
    "in_reply_to_screen_name": null,
    "source": "web",
    "user": {
      "profile_sidebar_fill_color": "252429",
      "profile_background_tile": true,
      "profile_sidebar_border_color": "181A1E",
      "name": "Sean Cook",
      "profile_image_url": "http://a0.twimg.com/profile_images/1751506047/dead_sexy_normal.JPG",
      "location": "San Francisco",
      "created_at": "Sat May 09 17:58:22 +0000 2009",
      "follow_request_sent": false,
      "is_translator": false,
      "id_str": "38895958",
      "profile_link_color": "2FC2EF",
      "entities": {
        "description": {
          "urls": [

          ]
        }
      },
      "favourites_count": 594,
      "url": null,
      "default_profile": false,
      "contributors_enabled": true,
      "profile_image_url_https": "https://si0.twimg.com/profile_images/1751506047/dead_sexy_normal.JPG",
      "utc_offset": -28800,
      "id": 38895958,
      "listed_count": 191,
      "profile_use_background_image": true,
      "followers_count": 10659,
      "protected": false,
      "profile_text_color": "666666",
      "lang": "en",
      "profile_background_color": "1A1B1F",
      "time_zone": "Pacific Time (US & Canada)",
      "verified": false,
      "profile_background_image_url_https": "https://si0.twimg.com/profile_background_images/495742332/purty_wood.png",
      "description": "I taught your phone that thing you like.  The Mobile Partner Engineer @Twitter. ",
      "geo_enabled": true,
      "notifications": false,
      "default_profile_image": false,
      "friends_count": 1186,
      "profile_background_image_url": "http://a0.twimg.com/profile_background_images/495742332/purty_wood.png",
      "statuses_count": 2629,
      "following": true,
      "screen_name": "theSeanCook",
      "show_all_inline_media": true
    },
    "place": {
      "name": "San Francisco",
      "country_code": "US",
      "country": "United States",
      "attributes": {
      },
      "url": "http://api.twitter.com/1/geo/id/5a110d312052166f.json",
      "id": "5a110d312052166f",
      "bounding_box": {
        "coordinates": [
          [
            [
              -122.51368188,
              37.70813196
            ],
            [
              -122.35845384,
              37.70813196
            ],
            [
              -122.35845384,
              37.83245301
            ],
            [
              -122.51368188,
              37.83245301
            ]
          ]
        ],
        "type": "Polygon"
      },
      "full_name": "San Francisco, CA",
      "place_type": "city"
    },
    "in_reply_to_status_id": null
  },
  {
    "coordinates": null,
    "truncated": false,
    "favorited": true,
    "created_at": "Tue Sep 04 00:17:11 +0000 2012",
    "id_str": "242778296117514240",
    "in_reply_to_user_id_str": null,
    "entities": {
      "urls": [

      ],
      "hashtags": [

      ],
      "user_mentions": [

      ]
    },
    "text": "TWIT NPC. TWIT DUNGEONMASTER.",
    "contributors": null,
    "id": 242778296117514240,
    "retweet_count": 1,
    "in_reply_to_status_id_str": null,
    "geo": null,
    "retweeted": false,
    "in_reply_to_user_id": null,
    "in_reply_to_screen_name": null,
    "source": "Twitter for Android",
    "user": {
      "profile_sidebar_fill_color": "DDEEF6",
      "profile_background_tile": false,
      "profile_sidebar_border_color": "C0DEED",
      "name": "REGIS",
      "profile_image_url": "http://a0.twimg.com/profile_images/1812284389/allseeingeye_normal.jpg",
      "location": "",
      "created_at": "Wed May 07 19:27:16 +0000 2008",
      "follow_request_sent": false,
      "is_translator": false,
      "id_str": "14690653",
      "profile_link_color": "009999",
      "entities": {
        "description": {
          "urls": [

          ]
        }
      },
      "favourites_count": 46407,
      "url": null,
      "default_profile": false,
      "contributors_enabled": false,
      "profile_image_url_https": "https://si0.twimg.com/profile_images/1812284389/allseeingeye_normal.jpg",
      "utc_offset": -25200,
      "id": 14690653,
      "listed_count": 194,
      "profile_use_background_image": true,
      "followers_count": 4198,
      "protected": false,
      "profile_text_color": "333333",
      "lang": "en",
      "profile_background_color": "131516",
      "time_zone": "Mountain Time (US & Canada)",
      "verified": false,
      "profile_background_image_url_https": "https://si0.twimg.com/profile_background_images/530267284/11111.JPG",
      "description": "Everything I tweet is or shall be.",
      "geo_enabled": true,
      "notifications": false,
      "default_profile_image": false,
      "friends_count": 200,
      "profile_background_image_url": "http://a0.twimg.com/profile_background_images/530267284/11111.JPG",
      "statuses_count": 43345,
      "following": true,
      "screen_name": "regisl",
      "show_all_inline_media": false
    },
    "place": null,
    "in_reply_to_status_id": null
  }
]
```

リクエストに失敗した時は
``` JSON
{"errors":[{"code":215,"message":"Bad Authentication data."}]}
```
と返ってきました．

### 4.APIにはどのような制限があるか？また、なぜそのような制限があるのか？
#### GET
読み取り操作にかかる制限で全て15分おきとなっている．
例：
|endpoint|reqest(app)|request(user)|
|:--:|:--:|:--:|
|GET favorites/list|75|75|
|GET users/show|900|900|
|GET search/tweets|180|450|

#### POST
データ送信にかかる制限で一日あたりの制限は
DM...1000
tweet...2400
follow...1000
などがある．

#### API制限がある理由
制限がないと仮定すると，各アプリケーションが際限なくtweetやfollowが可能になる．すると，サーバーに対して大きな負荷がかかって
ダウンしてしまう可能性がある．
これより，制限を設けていると考えられる．


## 課題2
| |GET|POST|
|:--:|:--:|:--:|
|リクエストの送り方|URLに付加|Bodyに付加|
|用途｜取得するとき|新しく登録するとき|
|データ量|2048文字|制限なし|

