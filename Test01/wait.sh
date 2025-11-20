#!/bin/bash

ROOT_UID=0   # $UID 가 0인 사용자만이 루트 권한을 가짐
E_NOTROOT=65
E_NOPARAMS=66

if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "이 스크립트는 루트만 실행시킬 수 있습니다."
  exit $E_NOTROOT
fi  

if [ -z "$1" ]
then
  echo "사용법: `basename $0` find-string"
  exit $E_NOPARAMS
fi

echo "'locate' 데이타베이스 업데이트중..."
echo "시간이 걸릴 수 있습니다."
updatedb /usr &     # 루트로 실행시켜야 됨
#updated &

wait
# 'updatedb' 가 끝나기 전까지 이 다음 부분을 실행 시키지 않음
# 아마도 업데이트된 최신 데이타베이스에 
# 여러분의 찾는 파일이 반영돼 있기를 바램.

locate -n 10 $1

# wait 명령어를 쓰면,
# 'updatedb' 가 돌고 있는데 스크립트가 종료되는 
# 최악의 시나리오에서 고아 프로세스를 만드는 것을 막아줌

exit 0

