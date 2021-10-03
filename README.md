# n_misekoma_boss
魅せコマに提出したボス作品

## これは何？

Minecraftに，某ゲームのような雷狼竜をボスモンスターとして追加します．

## 機能

草原や森バイオームに居ると，まれに雷狼竜が出現します．かなりの強敵ですので注意してください．

何度も雷狼竜が出現して面倒臭くなったときは，/data modify storage mhdp: EnableBossSpawn set value 0b を実行してください．もう一度雷狼竜に会いたくなった時は，/data modify storage mhdp: EnableBossSpawn set value 1b を実行してください．

いますぐ雷狼竜に会いたいときは，/function asa_animator:zinogre/manager/summon を実行してください．

## インストール

右のReleasesよりダウンロードしたデータパック(data.zip)をworld内のdatapacksフォルダに入れてください．

同じくリソースパック(resourcepack.zip)を各自Minecraftのresourcepacksフォルダに入れて下さい．

## 注意事項

Minecraft JavaEdition ver1.17.1でのみ動作確認済みです．それ未満のバージョンでの動作は保証できず，統合版には対応していません．

## ライセンス

本データパック(asa_animator および mh_dp)は，自由に分解，改変，コピペしていただいて大丈夫です．ただし，丸ごと再配布する場合は@nukknu99までご連絡をお願いします．

ただし，同梱リソースパックについては，本データパック以外への利用は個人的利用のみに留めてください．

## ライブラリ

本データパックは，以下のライブラリを使用させていただきました．

赤石愛様
- ScoreToHealth(https://github.com/Ai-Akaishi/ScoreToHealth)
- AiMath(https://github.com/Ai-Akaishi/AiMath)
  
ちぇん様
- ScoreDamage(https://github.com/ChenCMD/MCCMD-ScoreDamage)
