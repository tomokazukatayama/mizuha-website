---
title: "Unreal EngineをLinuxにインストールする。"
date: 2019-12-26T01:37:20+09:00
draft: false
categories:
    - "ビルド"
thumbnail: /images/ue4-logo.png
---

## Unreal EngineをLinuxにインストールする方法。
### 下準備
まず、Epic Gamesのサイトでユーザー登録を済ませ、メール認証をしておきましょう。それができたら、[接続済みアカウント](https://www.epicgames.com/account/connected?lang=ja)でGitHubと連携します。そうするとGitHubで[Invitation to join Epic Games](https://github.com/orgs/EpicGames/invitation)というふうにEpic Gamesからリポジトリに招待されます。

### ソースコードのダウンロード&ビルド
招待されたらGitHubのReleasesタブからLatestリリースを落としてきて展開します。
```sh
tar xvf UnrealEngine-4.24.1-release.tar.gz
./Setup.sh #諸々をダウンロード(10GB以上あるので注意)
./GenerateProjectFiles.sh
make #-jオプション不要、すごい時間かかるので注意
```

### ついに実行！
ソフトウェアのビルドの醍醐味は実行できた時の達成感ですよね。実行は
```bash
cd Engine/Binaries/Linux
./UE4Editor
```
です。