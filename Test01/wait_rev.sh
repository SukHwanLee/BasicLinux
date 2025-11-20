#!/usr/bin/env bash

ROOT_UID=0
E_NOTROOT=65
E_NOPARAMS=66
E_NOCMD=67

# 1) 루트 권한 확인
if [ "${EUID:-$UID}" -ne "$ROOT_UID" ]; then
  echo "이 스크립트는 루트만 실행할 수 있습니다. (sudo 사용)"
  exit $E_NOTROOT
fi

# 2) 검색어 인자 확인
if [ $# -lt 1 ]; then
  echo "사용법: $(basename "$0") <find-string...>"
  exit $E_NOPARAMS
fi

# 3) 필요한 명령 확인 (updatedb / locate)
if ! command -v updatedb >/dev/null 2>&1; then
  echo "'updatedb' 명령을 찾을 수 없습니다. 'plocate' 또는 'mlocate'를 설치하세요."
  echo "예) sudo apt update && sudo apt install plocate -y"
  exit $E_NOCMD
fi

if ! command -v locate >/dev/null 2>&1; then
  echo "'locate' 명령을 찾을 수 없습니다. 'plocate' 또는 'mlocate'를 설치하세요."
  echo "예) sudo apt update && sudo apt install plocate -y"
  exit $E_NOCMD
fi

echo "'locate' 데이터베이스를 갱신합니다. (시간이 걸릴 수 있습니다)"
# I/O/CPU 친화도 낮춰 시스템 영향 최소화(없어도 됨)
if command -v ionice >/dev/null 2>&1 && command -v nice >/dev/null 2>&1; then
  ionice -c3 nice -n 10 updatedb
else
  updatedb
fi

# 4) 갱신 완료 후 검색 (상위 10개)
#   -- : 옵션 종료, 특수문자 안전 처리
echo "검색 결과(최대 10개):"
locate -n 10 -- "$@"

exit 0

