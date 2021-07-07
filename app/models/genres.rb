Genre.seed do |s| #親
  s.id = 1
  s.name = "気分"
end

Genre.seed do |s|
  s.id = 2
  s.name = "泣きたい時"
  s.ancestry = 1
end

Genre.seed do |s|
  s.id = 3
  s.name = "元気が出る"
  s.ancestry = 1
end

Genre.seed do |s|
  s.id = 4
  s.name = "恋したくなる"
  s.ancestry = 1
end

Genre.seed do |s|
  s.id = 5
  s.name = "おいしそう"
  s.ancestry = 1
end

Genre.seed do |s|
  s.id = 6
  s.name = "前を向ける"
  s.ancestry = 1
end

Genre.seed do |s|
  s.id = 7
  s.name = "ほっとする"
  s.ancestry = 1
end

Genre.seed do |s|
  s.id = 8
  s.name = "後味が悪い"
  s.ancestry = 1
end

Genre.seed do |s|
  s.id = 9
  s.name = "つい感化される"
  s.ancestry = 1
end

Genre.seed do |s|
  s.id = 10
  s.name = "何もかもが嫌になった時"
  s.ancestry = 1
end

Genre.seed do |s| #親
  s.id = 11
  s.name = "誰と"
end

Genre.seed do |s|
  s.id = 12
  s.name = "1人で"
  s.ancestry = 11
end

Genre.seed do |s|
  s.id = 13
  s.name = "友人と"
  s.ancestry = 11
end

Genre.seed do |s|
  s.id = 14
  s.name = "恋人と"
  s.ancestry = 11
end

Genre.seed do |s|
  s.id = 15
  s.name = "家族と"
  s.ancestry = 11
end

Genre.seed do |s|
  s.id = 16
  s.name = "友人以上恋人未満の人と"
  s.ancestry = 11
end

Genre.seed do |s| #親
  s.id = 17
  s.name = "ストーリー"
end

Genre.seed do |s|
  s.id = 18
  s.name = "思い出とリンクする"
  s.ancestry = 17
end

Genre.seed do |s|
  s.id = 19
  s.name = "見応えがありすぎて消耗する"
  s.ancestry = 17
end

Genre.seed do |s|
  s.id = 20
  s.name = "脳がフル回転する"
  s.ancestry = 17
end

Genre.seed do |s| #親
  s.id = 21
  s.name = "キャラクター"
end

Genre.seed do |s|
  s.id = 22
  s.name = "ベストヒーロー"
  s.ancestry = 21
end

Genre.seed do |s|
  s.id = 23
  s.name = "ベストヒロイン"
  s.ancestry = 21
end

Genre.seed do |s| #親
  s.id = 24
  s.name = "シチュエーション"
end

Genre.seed do |s|
  s.id = 25
  s.name = "大音量で"
  s.ancestry = 24
end

Genre.seed do |s|
  s.id = 26
  s.name = "お酒に合う"
  s.ancestry = 24
end

Genre.seed do |s|
  s.id = 27
  s.name = "ながら見でどうぞ"
  s.ancestry = 24
end

Genre.seed do |s|
  s.id = 28
  s.name = "眠れない夜に"
  s.ancestry = 24
end

Genre.seed do |s|
  s.id = 29
  s.name = "休日の昼間に"
  s.ancestry = 24
end

Genre.seed do |s| #親
  s.id = 30
  s.name = "その他"
end

Genre.seed do |s|
  s.id = 31
  s.name = "シリーズもの"
  s.ancestry = 30
end

Genre.seed do |s|
  s.id = 32
  s.name = "オシャレ"
  s.ancestry = 30
end

Genre.seed do |s|
  s.id = 33
  s.name = "素敵なサントラ"
  s.ancestry = 30
end

Genre.seed do |s|
  s.id = 34
  s.name = "もう見たくないけど忘れられない"
  s.ancestry = 30
end

Genre.seed do |s|
  s.id = 35
  s.name = "とにかくお気に入り"
  s.ancestry = 30
end


=begin (以下id設定うまくいかず?)

feeling = Genre.create(id: 1, name: "気分")
cry, fine, love, yummy, positive, relax, bad, inspired, hated = feeling.children.create(
  [
    { id: 2, name: "泣きたい時" },
    { id: 3, name: "元気が出る" },
    { id: 4, name: "恋したくなる" },
    { id: 5, name: "おいしそう" },
    { id: 6, name: "前を向ける" },
    { id: 7, name: "ほっとする" },
    { id: 8, name: "後味が悪い" },
    { id: 9, name: "つい感化される" },
    { id: 10, name: "何もかもが嫌になった時" }
  ]
)

with = Genre.create(id: 11, name: "誰と")
alone, friend, lover, family, friendzone = with.children.create(
  [
    { id: 12, name: "1人で" },
    { id: 13, name: "友人と" },
    { id: 14, name: "恋人と" },
    { id: 15, name: "家族と" },
    { id: 16, name: "友人以上恋人未満の人と" }
  ]
)

story = Genre.create(id: 17, name: "ストーリー")
memories, exhaust, brain = story.children.create(
  [
    { id: 18, name: "思い出とリンクする" },
    { id: 19, name: "見応えがありすぎて消耗する" },
    { id: 20, name: "脳がフル回転する" }
  ]
)

character = Genre.create(id: 21, name: "キャラクター")
hero, heroine = character.children.create(
  [
    { id: 22, name: "ベストヒーロー" },
    { id: 23, name: "ベストヒロイン" }
  ]
)

situation = Genre.create(id: 24, name: "シチュエーション")
loud, drinking, as, sleepless, dayoff = situation.children.create(
  [
    { id: 25, name: "大音量で" },
    { id: 26, name: "お酒に合う" },
    { id: 27, name: "ながら見でどうぞ" },
    { id: 28, name: "眠れない夜に" },
    { id: 29, name: "休日の昼間に" }
  ]
)

others = Genre.create(id: 30, name: "その他")
series, stylish, ost, unforgettable, favorite = others.children.create(
  [
    { id: 31, name: "シリーズもの" },
    { id: 32, name: "オシャレ" },
    { id: 33, name: "素敵なサントラ" },
    { id: 34, name: "もう見たくないけど忘れられない" },
    { id: 35, name: "とにかくお気に入り" }
  ]
)

=end