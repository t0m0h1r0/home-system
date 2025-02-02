# インフラストラクチャ管理 Ansible Playbook

## プロジェクト構造

```
ansible-infrastructure/
│
├── group_vars/          # グループ変数
│   ├── all.yml          # 全環境共通の変数
│   ├── servers.yml      # サーバー全般の変数
│   └── ...
│
├── playbooks/           # プレイブック
│   ├── common.yml       # 共通タスク
│   ├── servers-playbook.yml
│   └── ...
│
├── templates/           # Jinja2テンプレート
│   └── docker-daemon.json.j2
│
└── README.md
```

## 要件

- Ansible 2.10以上
- Python 3.8以上
- sudo権限

## 使用方法

1. 必要な Ansible コレクションをインストール:
   ```
   ansible-galaxy collection install -r requirements.yml
   ```

2. インベントリファイルを確認:
   ```
   ansible-inventory --list
   ```

3. プレイブックの実行:
   ```
   ansible-playbook playbooks/servers-playbook.yml
   ```

## カスタマイズ

グループ変数`group_vars/`を編集することで、環境に応じた設定が可能です。

## 注意事項

- 本番環境で使用する前に十分なテストを行ってください。
- セキュリティ設定は環境に合わせて調整してください。
