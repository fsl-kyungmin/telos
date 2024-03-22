## Node-Template은 Ubuntu에서 실행해야함
1. Git clone 받기
2. Docker 빌드 && 접속
3. 아래명령어 실행
```
mkdir -p /telos/leap/fsl
cp -a /usr/bin/nodeos /telos/leap/fsl/
```

4. Wallet 키 생성
```
cleos create key --to-console
cleos wallet create -n fsl --to-console
cleos wallet import -n fsl
```

5. config.ini 43번째 줄 수정
```
##4번과정에서 생긴 Key로 수정
signature-provider = EOS5zTR......=KEY:5.......
```

6. Wallet 생성
```
##4번과정에서 생긴 Password 입력
cleos wallet private_keys -n dev
```

## EVM-RPC
