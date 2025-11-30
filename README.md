# secpack

내가 쓰려고 만든 간단하고 유용한 압축 + 암호화 툴.

GPG(AES-256)로 파일/디렉토리를 압축하고 암호화합니다.

## 설치

```bash
curl -fsSL https://raw.githubusercontent.com/BitYoungjae/byj-secpack/main/install.sh | bash
```

### 의존성

- `zsh`, `gpg`, `tar`
- `pv` (선택, 진행률 표시용)

## 사용법

```bash
# 암호화
secpack secret.txt                # -> secret.txt.enc
secpack file1 file2 -o backup.enc # -> backup.enc

# 복호화
secunpack backup.enc              # 현재 디렉토리에 해제
secunpack backup.enc ./output     # 지정 디렉토리에 해제
```

## 삭제

```bash
rm ~/.local/bin/secpack ~/.local/bin/secunpack
```

## License

MIT
