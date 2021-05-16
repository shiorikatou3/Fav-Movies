# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


feeling = Genre.create(name: "気分")
cry, fine, love, yummy, positive, relax, bad, inspired, hated = feeling.children.create(
  [
    { name: "泣きたい時" },
    { name: "元気が出る" },
    { name: "恋したくなる" },
    { name: "おいしそう" },
    { name: "前を向ける" },
    { name: "ほっとする" },
    { name: "後味が悪い" },
    { name: "つい感化される" },
    { name: "何もかもが嫌になった時" }
  ]
)

with = Genre.create(name: "誰と")
alone, friend, lover, family, friendzone = with.children.create(
  [
    { name: "1人で" },
    { name: "友人と" },
    { name: "恋人と" },
    { name: "家族と" },
    { name: "友人以上恋人未満の人と" }
  ]
)

story = Genre.create(name: "ストーリー")
memories, exhaust, brain = story.children.create(
  [
    { name: "思い出とリンクする" },
    { name: "見応えがありすぎて消耗する" },
    { name: "脳がフル回転する" }
  ]
)

character = Genre.create(name: "キャラクター")
hero, heroine = character.children.create(
  [
    { name: "ベストヒーロー" },
    { name: "ベストヒロイン" }
  ]
)

situation = Genre.create(name: "シチュエーション")
loud, drinking, as, sleepless, dayoff = situation.children.create(
  [
    { name: "大音量で" },
    { name: "お酒に合う" },
    { name: "ながら見でどうぞ" },
    { name: "眠れない夜に" },
    { name: "休日の昼間に" }
  ]
)

others = Genre.create(name: "その他")
series, ost, unforgettable, favorite = others.children.create(
  [
    { name: "シリーズもの" },
    { name: "素敵なサントラ" },
    { name: "もう見たくないけど忘れられない" },
    { name: "とにかくお気に入り" }
  ]
)
