# ThePenguin
ペンギンが群れるゲームです。
### 目次
- [開発環境について](#開発環境について)
- [Gitでの管理について](#GitUsage)
- [フォルダ構成について](#フォルダ構成について)

## 開発環境について
- Unity 2019.2.12f1

## <div id="GitUsage">Gitでの管理について</div>
GitFlowを意識したリポジトリ管理方法で進めていきたいです。
> [Git-flowって何？](https://qiita.com/KosukeSone/items/514dd24828b485c69a05)

ただ、Git-flowの管理方法は少人数では、多少面倒くさい部分があるようなので、ちょっと変更した感じで取り組みたいと思います。

- [**Master**]()<br>
  **リリース用ブランチ**<br>
  絶対的にMasterブランチはいつでもビルドが通る状態で管理しておきます。
- [**develop**]()<br>
  **開発用ブランチ**<br>
  featureと関わりを持って、各機能をここへマージする。
- [**feature**]()<br>
  **機能追加用ブランチ**<br>
  developから分岐して各機能を追加する。<br>
  > 命名規則：feature/機能名<br>
    例>feature/PlayerCamera
   
  機能が出来次第 developへマージする。
- [**release**]()<br>
  **Masterマージ用ブランチ**<br>
  developから分岐/Masterをプル<br>
  バグが無いか検証・修正する。 バグがある場合releaseを率先して修正する。<br>
  > 命名規則：release/バージョン番号<br>
    例>release/1.0
    
    バグが無くなり次第、developとMasterへマージ

## フォルダ構成について
- **Assets**
  - **Audio**<br>
  	BGM/SEなどのデータを管理する。
  - **Design**<br>
  	ビジュアル面のデータを管理する。<br>
  Model/Texture/Fontなど
  - **Editor**<br>
  	拡張機能用のエディタファイル
  - **Prefabs**<br>
	ゲーム内で利用するプレハブの保管場所<br>
	プレハブの置き場所に迷ったらここで良いです。
  - **Scenes**<br>
  	シーンを管理する
    - **Develop**<br>
      	開発で共有すべきシーン群
    - **Release**<br>
      	製品版のシーン群 バグが無い様に管理する。
  - **Scripts**<br>
    	ゲーム中のプログラム
    - **Common**<br>
	デザインパターンで利用する基底クラスなど、多様性があるスクリプト群
  - **User**<br>
    	各ユーザー用フォルダ 自由に使って下さい。共有設定されていません。<br>
    **※gitignoreされています。**
 - **Pakcages**<br>
  ビルドしたデータをフォルダに保管<br>
  ビルドデータしたデータについては、タイトルとバージョン番号で命名する。
  
