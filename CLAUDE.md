# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 저장소 개요

Ghostty 터미널 에뮬레이터의 설정 파일 저장소입니다. 빌드나 테스트 과정 없이 `config` 파일을 직접 수정하고 복사하여 사용합니다.

## 설정 적용

```bash
# macOS
cp config ~/Library/Application\ Support/com.mitchellh.ghostty/config

# Linux
cp config ~/.config/ghostty/config
```

설정 변경 후 Ghostty에서 `Cmd+Shift+,` (macOS) 또는 `Ctrl+Shift+,` (Linux)로 실시간 리로드 가능합니다.

## 설정 파일 문법

- 키-값 쌍: `option = value`
- 주석: `#`으로 시작 (줄 끝 주석 불가, 값의 일부로 인식됨)
- 키바인딩: `keybind = <modifier>+<key>=<action>`
- 키 시퀀스: `keybind = ctrl+w>s=new_split:down` (ctrl+w 누른 후 s)

## 참고 문서

- 전체 설정 옵션: `ghostty +show-config --default --docs`
- [Ghostty 공식 문서](https://ghostty.org/docs/config)
- [Keybind Reference](https://ghostty.org/docs/config/keybind/reference)
