# Ghostty Config

[Ghostty](https://ghostty.org/) 터미널 에뮬레이터 설정 파일입니다.

## 설치 방법

```bash
# macOS
cp config ~/Library/Application\ Support/com.mitchellh.ghostty/config

# Linux
cp config ~/.config/ghostty/config
```

## 주요 설정

### 테마 및 폰트
- **테마**: Birds Of Paradise
- **폰트**: Hack Nerd Font Mono

### 키바인딩

#### 탭 이동
| 키 | 동작 |
|---|---|
| `super+alt+shift+right` | 다음 탭 |
| `super+alt+shift+left` | 이전 탭 |

#### Split 크기 조절 (Vim 스타일)
| 키 | 동작 |
|---|---|
| `ctrl+shift+h` | 왼쪽으로 확장 |
| `ctrl+shift+l` | 오른쪽으로 확장 |
| `ctrl+shift+k` | 위로 확장 |
| `ctrl+shift+j` | 아래로 확장 |
| `ctrl+e` | 균등 분할 |

#### 스크롤 (Vim 스타일)
| 키 | 동작 |
|---|---|
| `ctrl+cmd+k` | 위로 5줄 스크롤 |
| `ctrl+cmd+j` | 아래로 5줄 스크롤 |

#### ctrl+w 시퀀스 (Vim 스타일 창 관리)
| 키 시퀀스 | 동작 |
|---|---|
| `ctrl+w` → `ctrl+w` | 다음 탭 |
| `ctrl+w` → `ctrl+q` | surface 종료 |
| `ctrl+w` → `ctrl+r` | 터미널 리셋 |
| `ctrl+w` → `ctrl+h/j/k/l` | split 이동 |
| `ctrl+w` → `s` | 아래로 split (horizontal) |
| `ctrl+w` → `v` | 오른쪽으로 split (vertical) |

## 참고
- [Ghostty 공식 문서](https://ghostty.org/docs/config)
- [Keybind Reference](https://ghostty.org/docs/config/keybind/reference)
