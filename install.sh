#!/usr/bin/env bash
set -e

REPO="bityoungjae/byj-secpack"
INSTALL_DIR="${HOME}/.local/bin"
BRANCH="main"

echo "Installing secpack..."

# 설치 디렉토리 생성
mkdir -p "$INSTALL_DIR"

# 스크립트 다운로드
curl -fsSL "https://raw.githubusercontent.com/${REPO}/${BRANCH}/secpack" -o "${INSTALL_DIR}/secpack"
curl -fsSL "https://raw.githubusercontent.com/${REPO}/${BRANCH}/secunpack" -o "${INSTALL_DIR}/secunpack"

# 실행 권한 부여
chmod +x "${INSTALL_DIR}/secpack" "${INSTALL_DIR}/secunpack"

# PATH 확인
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
  echo ""
  echo "WARNING: $INSTALL_DIR is not in your PATH"
  echo "Add this line to your ~/.bashrc or ~/.zshrc:"
  echo ""
  echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
  echo ""
fi

echo "Done! Installed to $INSTALL_DIR"
echo ""
echo "Commands available:"
echo "  secpack   - Compress and encrypt files/directories"
echo "  secunpack - Decrypt and extract"
