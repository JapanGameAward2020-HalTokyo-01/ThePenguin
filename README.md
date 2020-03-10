# ThePenguin
ペンギンが群れるゲームです。
### 目次
- [開発環境について](#開発環境について)
- [Gitでの管理について](#GitUsage)
- [フォルダ構成について](#フォルダ構成について)
- [命名規則について](#命名規則について)
- [コードスニペットについて](#コードスニペットについて)

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

## 命名規則について
コーディングルールのすべては、基本的には可読性向上のために設定する。<br>
二行以上の空行は禁止。一行のみにすること。<br>
変数名などを省略する場合は、可読性が下がるため2文字以下にはしない。<br>
```
position	  〇「pos」	×「p」
vector		  〇「vec」	×「v」
```
### コメントアウト
[Doxygeon](http://www.doxygen.jp/)で統一。<br>
・記法を統一する目的なので、最悪ドキュメント生成できなくてもいい。<br>
コードと同じ行にコメントアウトは記述しない。必ず別の行に記述する。<br>
関数内のコメントアウトの行数は一度に3行まで。<br>
コメントなしでも読めるコーディングを意識する。<br>

### ファイル名
必ず「@file」「@brief」「@author」のコメントを先頭に記述する。
```
/**
* @file		ファイル名
* @brief		ファイルの内容を一行で説明
* @author	制作者の名前
*/
```

### 変数
スネークケース<br>
宣言時に「//! 」で変数の用途を説明するコメントを記載する。
#### ローカル変数
接頭辞に「_(アンダースコア)」を付ける
```
//! 位置情報
float _pos_x;
```
#### グローバル変数
接頭辞「g_」を付ける
```
//! 位置情報
float g_pos_x;
```

#### メンバ変数
接頭辞「m_」を付ける
```
//! 位置情報
float m_pos_x;
```
#### 定数
アッパーキャメルケース<br>
接頭辞に「k」を付ける。
```
//! スクリーンサイズ(横幅)
const float kScreenWidth = 1920.0f;
```

### 関数
アッパーキャメルケース<br>
関数名は「動詞＋名詞＋その他～」の順で、意味が通るように命名する。<br>
コメントには「@brief」「@param」「＠return」を必ず記載<br>
```
/**
* @brief			位置情報を取得する関数
* @param (num)	取得する対象の番号
* @return		取得する対象の位置情報
*/
Vector3 GetPositionObject(int num) { return m_pos; }
```

#### 引数
スネークケース<br>
一語で長いものは略すことが望ましい。ただし、意味がわかることが最優先。<br>
```
〇「pos」　△「position」　△「pos_object」
```

### 列挙型
アッパーキャメルケース<br>
接頭辞に「k」を付ける。<br>
要素と合わせて記述することが多くなるため、できるだけ短く命名する。<br>
宣言前に「@enum」「@brief」を記述。<br>
「None = -1」を先頭に用意する。<br>
「Max」で終了する。

### 構造体
アッパーキャメルケース<br>
接頭辞に「S」を付ける。<br>
宣言前に「@struct」「@brief」を記述。<br>
```
struct SStruct
```

### クラス
アッパーキャメルケース<br>
接頭辞に「C」を付ける。<br>
宣言前に「@class」「@brief」を記述。<br>
privateは必ず記述する。<br>
```
class CClass
```

## コードスニペットについて
VisualStudioではコードのテンプレートを呼び出せる機能があります。<br>
命名規則において、クラスや関数にコメントを書く必要がありますが、逐一書くのは面倒です。<br>
それをコードスニペットで解決します。

以下のコードスニペットを追加します。
- HeaderComment<br>
  ファイルのコメントが設定されています。<br>
  ```C#:comment.rs
  /**
  * @file     ファイル名
  * @brief    説明
  * @author   作成者
  */
  ```
- FunctionComment<br>
  関数のコメントが設定されています。<br>
  ```C#:comment.cs
  /**
  * @brief    説明
  * @param(引数名)   引数説明
  * @return   戻り値説明
  */
  ```
- ClassComment<br>
  クラスのコメントが設定されています。<br>
  ```C#:comment.cs
  /**
  * @class    クラス名
  * @brief    説明
  */
  ```
- EnumComment<br>
  列挙型のコメントが設定されています。<br>
  ```C#:comment.cs
  /**
  * @enum     列挙名
  * @brief    説明
  */
  ```

### VisualStudioでの設定
VisualStudio2015以上であれば対応を確認しています。<br>
VisualStudioを立ち上げ、以下のショートカットキーでコードスニペットマネージャーを起動します。
> Ctrl + K, Ctrl + B

コードスニペットマネージャーが開けたら**言語**が**CSharp**になっているのを確認します。<br>
**追加**を選択して、**ThePenguin->CodeSnippets**を選択し、**OK**で適用させます。<br>
VisualStudioを**再起動**させたら設定終了です。

### 使用方法
使いたいスニペットを書きます。**Tab**を**2回**押します。
```C#:comment.cs
  //使いたい位置で定義する
  HeaderCommnet 
  //Tabを二回押す。

  //展開される
  /**
  * @file     ファイル名
  * @brief    説明
  * @author   作成者
  */
```
