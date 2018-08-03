# Assembly
Arm Cortex-M0(Cortexの種類は問わないが) を開発する際に,
アセンブリ言語の記述が必要になったため使用頻度の多い機械語・擬似命令についてのメモ  

すべて ELF Version であることを想定している.


## .equ
``` .equ
.equ symbol, expression
```
擬似命令  
*symbol* の値を *expression* に設定.

## .section
``` .section
.section name[, "flags"[, %type]]
```
擬似命令  
セクションの開始  

*name*については省略  
引数 *"flag"* について,
* **a** 割当可能
* **w** 書き込み可能
* **x** 実行可能

引数 *%type* について
* *%progbits* セクションはデータを含む
* *%nobits*   セクションはデータを含まない

## .type
``` type
.type name, %type_description
```
擬似命令  
シンボル *name* の種類を関数シンボルもしくはオブジェクトシンボルのどちらかに設定.

引数 *%type_description% について
* *%function* 関数
* *%object* データオブジェクト
* *%tls_object* thread-local データオブジェクト
* *%common* コモンデータオブジェクト
