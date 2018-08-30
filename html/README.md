# HTML

## Subresource Integrity
ブラウザが取得するリソースのハッシュ値を base64 エンコードし,
その値を `<script>`や`<link>`要素の integrity要素の指定する.
### integrity属性
ハッシュアルゴリズムを示す接頭辞と, base64でエンコードされたハッシュ値をダッシュでつないだ文字列.  

利用可能な設置時
* sha256
* sha384
* sha512

生成コマンド
``` run.sh
cat [FILENAME] | openssl dgst -sha386 -binary | openssl enc -base64 -A
```
或いは
```
shasum -b -a 384 [FILENAME] | xxd -r -p | base64
```

### 参考文献
[MDN - Subresource Integrity](https://developer.mozilla.org/ja/docs/Web/Security/Subresource_Integrity)  
[69log - Subresource Integrityについて調べた](https://blog.kazu69.net/2015/10/01/check-for-subresource-integrity/)
