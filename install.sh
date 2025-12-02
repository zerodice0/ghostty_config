#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SOURCE_CONFIG="$SCRIPT_DIR/config"
BACKUP_DIR="$SCRIPT_DIR/backup"

# OS 감지
OS="$(uname -s)"
case "$OS" in
    Darwin)
        CONFIG_DIR="$HOME/Library/Application Support/com.mitchellh.ghostty"
        ;;
    Linux)
        CONFIG_DIR="$HOME/.config/ghostty"
        ;;
    *)
        echo "지원하지 않는 OS입니다: $OS"
        exit 1
        ;;
esac

TARGET_CONFIG="$CONFIG_DIR/config"

# 1. 설정 디렉터리 확인
if [ ! -d "$CONFIG_DIR" ]; then
    echo "Ghostty 설정 디렉터리가 존재하지 않습니다: $CONFIG_DIR"
    echo "Ghostty가 설치되어 있는지 확인해주세요."
    exit 1
fi

echo "설정 디렉터리 확인: $CONFIG_DIR"

# 2. 기존 config 백업
if [ -f "$TARGET_CONFIG" ]; then
    mkdir -p "$BACKUP_DIR"
    TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
    BACKUP_FILE="$BACKUP_DIR/config_$TIMESTAMP"
    cp "$TARGET_CONFIG" "$BACKUP_FILE"
    echo "기존 설정 백업 완료: $BACKUP_FILE"
else
    echo "기존 설정 파일이 없습니다. 백업을 건너뜁니다."
fi

# 3. 새 config 복사
cp "$SOURCE_CONFIG" "$TARGET_CONFIG"
echo "설정 파일 복사 완료: $TARGET_CONFIG"

echo ""
echo "설치가 완료되었습니다!"
echo "Ghostty에서 Cmd+Shift+, (macOS) 또는 Ctrl+Shift+, (Linux)로 설정을 리로드하세요."
