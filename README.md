# kaiten_bot_deploy

## .env

```bash
PROJECT_NAME="<ネームスペースとして使う>"
GCP_PROFILE="<アカウントを切り替える用の名前>" # ~/.gcp/credentials/$GCP_PROFILE.json にクレデンシャルを置く
GCP_PROJECT_ID="<Teraform で google provider の auth で使う>"
GCP_REGION="asia-northeast1"
K8S_AUTH_CONTEXT="gke_${GCP_PROJECT_ID}_${GCP_REGION}_${PROJECT_NAME}-cluster" # kubectl のコンテキスト切り替え（ansible が kubectl を使う）
```
